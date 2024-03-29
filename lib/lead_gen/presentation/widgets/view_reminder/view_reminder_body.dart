import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class ViewReminderBody extends StatefulWidget {
  const ViewReminderBody({Key? key}) : super(key: key);

  @override
  State<ViewReminderBody> createState() => _ViewReminderBodyState();
}

class _ViewReminderBodyState extends State<ViewReminderBody> {
  List<String> reminders = [
    'Call Brian followup with design','Call Sparsh Salcete followup','Call Chetan Brian Design',
    'Call Martin Payment Reminder','Social team briefing'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: TableCalendar(
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 22),
              ),
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              calendarFormat: CalendarFormat.month,
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Color(0xFF0C41FF),
                  shape: BoxShape.circle
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 5),
                    child: Row(
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
                        Text("Today's Reminders",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: reminders.length,
                    itemBuilder: (context,index){
                      return Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: [
                              const Icon(Icons.circle,color: Color(0xFF1573FE),size: 12,),
                              const SizedBox(width: 2),
                              Text(reminders[index],style: GoogleFonts.poppins(
                                  color: const Color(0xFF5B5B5C),fontSize: 14,fontWeight: FontWeight.w300
                              ),),
                              const Spacer(),
                              Text("09:00",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,fontSize: 12,color: const Color(0xFF8A8A8B)
                              ),)
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
