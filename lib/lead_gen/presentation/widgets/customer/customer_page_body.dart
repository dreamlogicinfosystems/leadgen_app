import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/constant.dart';
import '../../pages/customer_leads.dart';

class CustomerPageBody extends StatefulWidget {
  const CustomerPageBody({super.key});

  @override
  State<CustomerPageBody> createState() => _CustomerPageBodyState();
}

class _CustomerPageBodyState extends State<CustomerPageBody> {
  final _searchController = TextEditingController();

  Widget loading = ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.09,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 4)
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
      }
  );

  @override
  void initState() {
    context.read<CustomerBloc>().add(CustomerEvent.getCustomers(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: CustomTextField(
                    isBoardAddPage: true,
                    controller: _searchController,
                    keyBoardType: TextInputType.text,
                    labelText: 'Search for customer',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.067,
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(Icons.navigate_next,size: 35,),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            BlocConsumer<CustomerBloc, CustomerState>(
              listener: (context, state) {
                state.maybeWhen(
                  failed: (error){
                    showErrorToastMessage(error);
                  },
                  orElse: (){}
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  successCustomerList: (customersList){
                    return ListView.builder(
                        itemCount: customersList.length,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                    CustomerLeads(custId: customersList[index].custId!,)));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.09,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 4)
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width*0.65,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 4),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 2),
                                              Text(customersList[index].custName!,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width*0.65,
                                                height: MediaQuery.of(context).size.height*0.030,
                                                child: Row(
                                                  children: [
                                                    Text("Phone: ",style:
                                                    GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color(0xFF8A8A8B)),),
                                                    GestureDetector(
                                                      onTap: () async{
                                                        final url = Uri(scheme: 'tel', path: customersList[index].custPhone);
                                                        await launchUrl(url);
                                                      },
                                                      child: Text(customersList[index].custPhone!,style:
                                                      GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color(0xFF8A8A8B)),),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width*0.22,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top:5,right: 5),
                                                child: Text(modifyDate(customersList[index].date!),style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    );
                  },
                  loadingInProgress: (){
                    return loading;
                  },
                  orElse: (){
                    return loading;
                  }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
