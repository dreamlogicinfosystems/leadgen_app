import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/reminder/reminder.dart';

class ViewReminderBody extends StatefulWidget {
  const ViewReminderBody({Key? key}) : super(key: key);

  @override
  State<ViewReminderBody> createState() => _ViewReminderBodyState();
}

class _ViewReminderBodyState extends State<ViewReminderBody> {
  List<Reminder> remindersList = [];
  DateTime selectedDate = DateTime.now();
  final ScrollController _scrollController = ScrollController();

  checkIfDateIsToday(String date){
    final dateToCheck = DateTime.parse(date);

    final today = DateTime.now();

    final tomorrow = today.add(const Duration(days: 1));

    if(today.year == dateToCheck.year && today.month == dateToCheck.month && today.day == dateToCheck.day){
      return "Today's Reminders";
    }else if (today.year == dateToCheck.year && today.month == dateToCheck.month && tomorrow.day == dateToCheck.day){
      return "Tomorrow's";
    }else{
      return DateFormat('dd-MM-yyyy').format(dateToCheck);
    }
  }

  @override
  void initState() {
    context.read<ReminderBloc>().add(ReminderEvent.getReminders(context));
    super.initState();
  }


  checkIfDayPresentAndAnimate(DateTime selectedDate){
    //to get index of selected date from list
    int selectedIndex = remindersList.indexWhere((date){
      final dateTime = DateTime.parse(date.date!);

      //to match if selected date is there, than returns true or else false
      return dateTime.day == selectedDate.day &&
          dateTime.month == selectedDate.month && dateTime.year == selectedDate.year;
    });

    //if selected index found animate to that index
    if(selectedIndex!=-1){
        _scrollController.animateTo(
            selectedIndex*100,
            duration: const Duration(milliseconds: 100),
            curve: Curves.bounceIn
        );
    }else{
      showErrorToastMessage('Reminder not found!');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget loading = Expanded(
      child: Container(
          height: MediaQuery.of(context).size.height*0.35,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          )
      ),
    );

    final currentMonth =  DateTime.now().month;
    //to get number of days in a month
    final noOfDaysInMonth = DateTime(DateTime.now().year,currentMonth+1,0).day;

    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TableCalendar(
            headerStyle: HeaderStyle(
              headerPadding: const EdgeInsets.only(left: 25,bottom: 10),
              leftChevronVisible: false,
              rightChevronVisible: false,
              formatButtonVisible: false,
              titleTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 22),
            ),
            focusedDay: selectedDate,
            firstDay: DateTime.utc(DateTime.now().year, DateTime.now().month, DateTime.now().day),
            lastDay: DateTime.utc(DateTime.now().year, DateTime.now().month, noOfDaysInMonth),
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day){
              return isSameDay(selectedDate,day);
            },
            calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle
              ),
              selectedDecoration: BoxDecoration(
                  color: Color(0xFF0C41FF),
                  shape: BoxShape.circle
              ),
            ),
            onDaySelected: (date,nextDate){
              setState(() {
                selectedDate = date;
              });
              checkIfDayPresentAndAnimate(date);
            },
          ),
        ),
        BlocBuilder<ReminderBloc, ReminderState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadingInProgress: (){
                return loading;
              },
              failed: (error){
                return Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.35,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Center(
                        child: Text("No reminders",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16)),
                      ),
                  ),
                );
              },
              successRemindersList: (reminders){
                remindersList = reminders;
                return Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: reminders.length,
                      // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        final reminderData = reminders[index].reminderData;
                        return Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,top: 5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:2),
                                      child: Align(
                                        alignment:Alignment.topLeft,
                                        child: SizedBox(
                                          height: MediaQuery.of(context).size.height*0.03,
                                          width: MediaQuery.of(context).size.width*0.05,
                                          child: Image.asset("assets/images/calendar.png"),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(" ${checkIfDateIsToday(reminders[index].date!)}",
                                      style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                ReminderData(reminderData: reminderData!),
                                const SizedBox(height: 10,)
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              orElse: (){
                return loading;
              }
            );
          },
        ),
      ],
    );
  }
}

class ReminderData extends StatefulWidget {
  final List<ReminderDetails> reminderData;
  const ReminderData({super.key, required this.reminderData});

  @override
  State<ReminderData> createState() => _ReminderDataState();
}

class _ReminderDataState extends State<ReminderData> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.reminderData.length,
        itemBuilder: (context,index){
          //extracted the hour from dateTime
          final hour = widget.reminderData[index].inviteSendOn!.split(" ")[1].split(":")[0];
          //extracted the minute from dateTime
          final minute = widget.reminderData[index].inviteSendOn!.split(" ")[1].split(":")[1];
          //Combined hour and minute to show on ui
          final time = "$hour:$minute";
          return Container(
            color: Colors.white,
            // height: MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 2,right: 15,top: 10,bottom: 10),
              child: Row(
                children: [
                  const Icon(Icons.circle,color: Color(0xFF1573FE),size: 12),
                  const SizedBox(width: 2),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.75,
                    child: Text(widget.reminderData[index].note!,style: GoogleFonts.poppins(
                        color: const Color(0xFF5B5B5C),fontSize: 14,fontWeight: FontWeight.w300
                    ),),
                  ),
                  const Spacer(),
                  Text(time,style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF8A8A8B)
                  ),)
                ],
              ),
            ),
          );
        }
    );
  }
}

