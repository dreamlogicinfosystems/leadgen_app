import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';

import '../../../domain/customer/customer.dart';
import '../../core/custom_button.dart';
import '../../core/custom_textfield.dart';
import '../../pages/customers.dart';

class UpdateCustomer extends StatefulWidget {
  final Customer customer;
  const UpdateCustomer({super.key, required this.customer});

  @override
  State<UpdateCustomer> createState() => _UpdateCustomerState();
}

class _UpdateCustomerState extends State<UpdateCustomer> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _nameController.text = widget.customer.custName!;
    _phoneController.text = widget.customer.custPhone ?? "";
    _emailController.text = widget.customer.custEmail ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (message){
            showToastMessage(message);
            //to close loader
            Navigator.pop(context);

            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => const AllCustomers()), (route) => route.isFirst);
          },
          failed: (error){
            showErrorToastMessage(error);
            //to close loader
            Navigator.pop(context);
          },
          loadingInProgress: (){
            showLoader(context);
          },
          orElse: (){}
        );
      },
      child: Center(
          child: Form(
            key: _formKey,
            child: Card(
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                    color: const Color(0xFFECECED),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Update Customer",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                        const SizedBox(height: 30),
                        CustomTextField(
                          labelText: 'Full Name',
                          isBoardAddPage: true,
                          controller: _nameController,
                          keyBoardType: TextInputType.text,
                          validator: (value){
                            if(value!.trim()==""){
                              return 'Enter Full Name';
                            }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
                              return 'Invalid Full Name';
                            }else{
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                            isBoardAddPage: true,
                            labelText: 'Phone',
                            controller: _phoneController,
                            keyBoardType: TextInputType.number,
                            validator: (value){
                              if(value!.trim() != ""){
                                if(value.contains(RegExp(r'[-.,]')) || value.contains(' ')){
                                  return 'Invalid Phone Number';
                                } else if(value.length>10 || value.length<10){
                                  return 'Phone number should be of 10 digit';
                                } else{
                                  return null;
                                }
                              } else {
                                return null;
                              }
                            },
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                            isBoardAddPage: true,
                            labelText: 'Email',
                            controller: _emailController,
                            keyBoardType: TextInputType.emailAddress,
                            validator: (value){
                              if(value!.trim() != ""){
                                if(!EmailValidator.validate(value) || value.contains(RegExp(r'[+*-]'))
                                    ||value.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
                                  return 'Invalid Email';
                                } else{
                                  return null;
                                }
                              } else {
                                return null;
                              }
                            },
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: CustomButton(
                              name: 'Update Customer',
                              isBoardAddPage: true,
                              onTap: (){
                                if(_formKey.currentState!.validate()){
                                  context.read<CustomerBloc>().add(
                                      CustomerEvent.updateCustomer(
                                          Customer(
                                            custId: widget.customer.custId,
                                            custName: _nameController.text.trim(),
                                            custEmail: _emailController.text,
                                            custPhone: _phoneController.text,
                                          ),
                                          context
                                      ),
                                  );
                                }
                              },),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
