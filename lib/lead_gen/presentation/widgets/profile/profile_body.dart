import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../core/custom_button.dart';
import '../../core/custom_textfield.dart';
import '../../pages/add_department.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _stateController = TextEditingController();
  final _countryController = TextEditingController();
  final _businessNameControll = TextEditingController();
  final _pincodeController = TextEditingController();
  final _companyWebsiteControll = TextEditingController();
  final _registeredAddressContr = TextEditingController();
  final _facebook = TextEditingController();
  final _instagram = TextEditingController();
  final _twitter = TextEditingController();
  final _linkedin = TextEditingController();
  final _google = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _businessNameControll.dispose();
    _addressController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    _pincodeController.dispose();
    _companyWebsiteControll.dispose();
    _registeredAddressContr.dispose();
    _facebook.dispose();
    _instagram.dispose();
    _twitter.dispose();
    _linkedin.dispose();
    _google.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 110,
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300
                ),
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset('assets/images/profile.png'),
                ),
              ),
              const SizedBox(height: 25),
              CustomTextField(
                  controller: _nameController,
                  hintText: 'Name',
                  keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value=='' || value!.trim()==''){
                      return 'Enter Name';
                    }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                      return 'Invalid name';
                    }else if(value.length>20){
                      return "Name cannot exceed 20 letter's";
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  keyBoardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value=='' || value!.trim()==''){
                      return 'Enter Email';
                    }else if(!EmailValidator.validate(value)){
                      return "Invalid Email";
                    }else if(value.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
                      return 'Invalid Email';
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _phoneController,
                hintText: 'Phone',
                keyBoardType: TextInputType.number,
                validator: (value){
                  if(value=='' || value!.trim()==''){
                    return 'Enter Phone Number';
                  }else if(value.contains(RegExp(r'[-.,]')) || value.contains(' ')){
                    return 'Invalid Phone Number';
                  }else if(value.length>10 || value.length<10){
                    return 'Phone number should be of 10 digit';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _businessNameControll,
                hintText: 'Business Name',
                keyBoardType: TextInputType.text,
                validator: (value){
                  if(value=='' || value!.trim()==''){
                    return 'Enter Business Name';
                  }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                    return 'Invalid Business Name';
                  }else if(value.length>20){
                    return "cannot exceed 20 letter's";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                  controller: _addressController,
                  hintText: 'Address',
                  keyBoardType: TextInputType.text,
                  maxLines: 3,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                      return 'Invalid address';
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        controller: _stateController,
                        hintText: 'State',
                        keyBoardType: TextInputType.text,
                        validator: (value){
                          if(value!.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                            return 'Invalid state name';
                          }else{
                            return null;
                          }
                        },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                      child: CustomTextField(
                          controller: _countryController,
                          hintText: 'Country',
                          keyBoardType: TextInputType.text,
                          validator: (value){
                            if(value!.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                              return 'Invalid country name';
                            }else{
                              return null;
                            }
                          },
                      )
                  )
                ],
              ),
              const SizedBox(height: 15),
              CustomTextField(
                  controller: _pincodeController,
                  hintText: 'Pin code',
                  keyBoardType: TextInputType.number,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-.,]')) || value.contains(" ")){
                      return 'Invalid Pin-Code';
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Additional Information',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                  ),
              ),
              const SizedBox(height: 15),
              CustomTextField(
                  controller: _companyWebsiteControll,
                  hintText: 'Company website',
                  keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!#$%^&*()_=+{};,<>"]'))){
                      return 'Invalid website';
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                  controller: _registeredAddressContr,
                  hintText: 'Registered Address',
                  keyBoardType: TextInputType.text,
                  maxLines: 3,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                      return 'Invalid Registered Address';
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Social Accounts',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
                ),
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _facebook,
                hintText: 'Facebook',
                keyBoardType: TextInputType.text,
                validator: (value){
                  if(value!.contains(RegExp(r'[-~`!#$%^&*()_+{};,<>"]'))){
                    return 'Invalid facebook id';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _instagram,
                hintText: 'Instagram',
                keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!#$%^&*()+{};,<>"]'))){
                      return 'Invalid instagram id';
                    }else{
                      return null;
                    }
                  }
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _twitter,
                hintText: 'Twitter',
                keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!#$%^&*()+{};,<>"]'))){
                      return 'Invalid twitter id';
                    }else{
                      return null;
                    }
                  }
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _linkedin,
                hintText: 'LinkedIn',
                keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!#$%^&*()+{};,<>"]'))){
                      return 'Invalid linkedIn id';
                    }else{
                      return null;
                    }
                  }
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _google,
                hintText: 'Google',
                keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value!.contains(RegExp(r'[-~`!#$%^&*()+{};,<>"]'))){
                      return 'Invalid linkedIn id';
                    }else{
                      return null;
                    }
                  }
              ),
              const SizedBox(height: 40),
              CustomButton(
                  name: 'Next',
                  onTap: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AddDepartment()));
                    }
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
