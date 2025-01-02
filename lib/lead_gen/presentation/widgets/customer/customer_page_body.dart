import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/customer/update_customer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../injections.dart';
import '../../../constants/constant.dart';
import '../../pages/customer_leads.dart';

class CustomerPageBody extends StatefulWidget {
  const CustomerPageBody({super.key});

  @override
  State<CustomerPageBody> createState() => _CustomerPageBodyState();
}

class _CustomerPageBodyState extends State<CustomerPageBody> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    context.read<CustomerBloc>().add(CustomerEvent.getCustomers(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget loading = Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.7,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 15),
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
                  child: GestureDetector(
                    onTap: (){
                      if(_searchController.text.trim()==""){
                        showErrorToastMessage('Enter name or email to search!');
                      }else{
                        context.read<CustomerBloc>().add(CustomerEvent.searchCustomer(_searchController.text.trim(),'customer_list','all',context));
                      }
                    },
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
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            BlocConsumer<CustomerBloc, CustomerState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: (){}
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  failed: (error){
                    return Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height*0.7,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(error,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15),),
                        ),
                      ),
                    );
                  },
                  successCustomerList: (customersList){
                    return Expanded(
                      child: ListView.builder(
                          itemCount: customersList.length,
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: GestureDetector(
                                onTap: (){
                                  CustomerBloc.setSelectedCustomer(customersList[index]);
                              
                                  CustomerBloc.setCustomerId(customersList[index].custId!);
                              
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                      const CustomerLeads()));
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
                                                Expanded(
                                                  child: SizedBox(
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
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: MediaQuery.of(context).size.width*0.22,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:5,right: 10),
                                              child: Column(
                                                children: [
                                                  Text(modifyDate(customersList[index].date!),style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                                                  DepartmentBloc.role=="user"?
                                                  const SizedBox() : Padding(
                                                    padding: const EdgeInsets.only(right: 5),
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        showDialog(context: context, builder: (context) => BlocProvider(
                                                          create: (context) => sl<CustomerBloc>(),
                                                          child: UpdateCustomer(customer: customersList[index]),
                                                        ));
                                                      },
                                                      child: SizedBox(
                                                        height: MediaQuery.of(context).size.height*0.05,
                                                        child: const Align(
                                                          alignment: Alignment.centerRight,
                                                            child: Icon(Icons.edit,size: 20,),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
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
                      ),
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
