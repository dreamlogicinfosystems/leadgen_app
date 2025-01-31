import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/profile/profile_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';
import '../../../../injections.dart';
import '../../../application/lead/lead_bloc.dart';
import '../../../application/licence/licence_bloc.dart';
import '../../../domain/auth/user.dart';
import '../../core/custom_button.dart';
import '../../core/custom_textfield.dart';

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
  final _licenseValidityController = TextEditingController();
  final _followUpDaysContr = TextEditingController();
  final _facebook = TextEditingController();
  final _instagram = TextEditingController();
  final _twitter = TextEditingController();
  final _linkedin = TextEditingController();
  final _google = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //focus keyboard
  final _focusFullName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPhone = FocusNode();
  final _focusBussName = FocusNode();
  final _focusAddress = FocusNode();
  final _focusState = FocusNode();
  final _focusCountry = FocusNode();
  final _focusPin = FocusNode();

  @override
  void initState() {
    context.read<ProfileBloc>().add(ProfileEvent.getUserData(context));
    super.initState();
  }

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
    _followUpDaysContr.dispose();
    _facebook.dispose();
    _instagram.dispose();
    _twitter.dispose();
    _linkedin.dispose();
    _google.dispose();
    _focusFullName.dispose();
    _focusEmail.dispose();
    _focusPhone.dispose();
    _focusBussName.dispose();
    _focusAddress.dispose();
    _focusState.dispose();
    _focusCountry.dispose();
    _focusPin.dispose();
    _licenseValidityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: SingleChildScrollView(
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            state.maybeWhen(
                failed: (error){
                  showErrorToastMessage(error);
                  Navigator.pop(context);
                },
                loadingInProgress: (){
                  showLoader(context);
                },
                userData: (data){
                  Navigator.pop(context);
                },
                success: (message){
                  showToastMessage(message);
                  Navigator.pop(context);
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) => MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create:  (context) => sl<LicenceBloc>(),
                          ),
                          BlocProvider(
                            create: (context) => sl<LeadBloc>(),
                          )
                        ],
                        child: const Home(),
                      )), (route) => false);
                },
                orElse:(){}
            );
          },
          builder: (context, state) {
            return Form(
                  key: _formKey,
                  child: state.maybeWhen(
                      userData: (userData){
                        _nameController.text = userData.name!;
                        _emailController.text = userData.email!;
                        _phoneController.text = userData.phoneNumber!;
                        _businessNameControll.text = userData.businessName?? '';
                        _addressController.text = userData.address!;
                        _stateController.text = userData.state!;
                        _countryController.text = userData.country!;
                        _pincodeController.text = userData.pincode!;
                        _companyWebsiteControll.text = userData.website!;
                        _registeredAddressContr.text = userData.registeredAddress!;
                        _facebook.text = userData.facebook!;
                        _instagram.text = userData.instagram!;
                        _twitter.text = userData.twitter!;
                        _linkedin.text = userData.linkedIn!;
                        _followUpDaysContr.text = userData.newLeadDays.toString();

                        //converting string date time to DateTime Object
                        final validityDate = DateTime.parse(userData.validity!);
                        //formatting the date
                        final formattedDate = DateFormat('dd-MM-yyyy').add_jm().format(validityDate);
                        //display the formatted date
                        _licenseValidityController.text = formattedDate;

                        return Column(
                          children: [
                            Container(
                              height: 110,
                              decoration:  const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFFFD88D)
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
                              labelText: 'Name',
                              keyBoardType: TextInputType.text,
                              focusNode: _focusFullName,
                              onSubmitted: (value){
                                FocusScope.of(context).requestFocus(_focusEmail);
                              },
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
                              labelText: 'Email',
                              keyBoardType: TextInputType.emailAddress,
                              focusNode: _focusEmail,
                              onSubmitted: (value){
                                FocusScope.of(context).requestFocus(_focusPhone);
                              },
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
                              labelText: 'Phone',
                              keyBoardType: TextInputType.number,
                              focusNode: _focusPhone,
                              onSubmitted: (value){
                                FocusScope.of(context).requestFocus(_focusBussName);
                              },
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
                              labelText: 'Business Name',
                              keyBoardType: TextInputType.text,
                              focusNode: _focusBussName,
                              onSubmitted: (value){
                                FocusScope.of(context).requestFocus(_focusAddress);
                              },
                              validator: (value){
                                if(value!.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
                                  return 'Invalid Business Name';
                                }else if(value.length>50){
                                  return "cannot exceed 50 letter's";
                                }else{
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                              controller: _licenseValidityController,
                              labelText: 'License validity',
                              keyBoardType: TextInputType.none,
                              readOnly: true,
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                              controller: _addressController,
                              labelText: 'Address',
                              keyBoardType: TextInputType.text,
                              maxLines: 3,
                              focusNode: _focusAddress,
                              onSubmitted: (value){
                                FocusScope.of(context).requestFocus(_focusState);
                              },
                              validator: (value){
                                if(value!.isEmpty || value.trim()==''){
                                  return 'Enter address';
                                }else if(value.contains(RegExp(r'[~!@$%^&*()=+{};:?<>"]'))){
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
                                    labelText: 'State',
                                    keyBoardType: TextInputType.text,
                                    focusNode: _focusState,
                                    onSubmitted: (value){
                                      FocusScope.of(context).requestFocus(_focusCountry);
                                    },
                                    validator: (value){
                                      if(value!.isEmpty || value.trim()==''){
                                        return 'Enter State';
                                      }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
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
                                      labelText: 'Country',
                                      keyBoardType: TextInputType.text,
                                      focusNode: _focusCountry,
                                      onSubmitted: (value){
                                        FocusScope.of(context).requestFocus(_focusPin);
                                      },
                                      validator: (value){
                                        if(value!.isEmpty || value.trim()==''){
                                          return 'Enter Country';
                                        }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
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
                              labelText: 'Pin code',
                              keyBoardType: TextInputType.number,
                              focusNode: _focusPin,
                              onSubmitted: (value){
                                FocusScope.of(context).unfocus();
                              },
                              validator: (value){
                                if(value!.isEmpty || value.trim()==''){
                                  return 'Enter Pincode';
                                }else if(value.contains(RegExp(r'[-.,]')) || value.contains(" ")){
                                  return 'Invalid Pin-Code';
                                }else{
                                  return null;
                                }
                              },
                            ),
                            Visibility(
                              visible: DepartmentBloc.role == "organisation" ? true : false,
                              child: followUpView()
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
                              labelText: 'Company website',
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
                              labelText: 'Registered Address',
                              keyBoardType: TextInputType.text,
                              maxLines: 3,
                              validator: (value){
                                if(value!.contains(RegExp(r'[~!@$%^&*()=+{};:?<>"]'))){
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
                              labelText: 'Facebook',
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
                                labelText: 'Instagram',
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
                                labelText: 'Twitter',
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
                                labelText: 'LinkedIn',
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
                                labelText: 'Google',
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
                                name: 'Save',
                                onTap: (){
                                  if(_formKey.currentState!.validate()){
                                    //reset dept id
                                    context.read<DepartmentBloc>().add(const DepartmentEvent.resetDeptId());

                                    context.read<ProfileBloc>().add(ProfileEvent.updateUserData(
                                        User(
                                          userId: userData.userId,
                                          name: _nameController.text,
                                          email: _emailController.text,
                                          phoneNumber: _phoneController.text,
                                          businessName: _businessNameControll.text,
                                          newLeadDays: int.parse(_followUpDaysContr.text.trim()),
                                          address: _addressController.text,
                                          state: _stateController.text,
                                          country: _countryController.text,
                                          pincode: _pincodeController.text,
                                          website: _companyWebsiteControll.text,
                                          registeredAddress: _registeredAddressContr.text,
                                          facebook: _facebook.text,
                                          instagram: _instagram.text,
                                          twitter: _twitter.text,
                                          linkedIn: _linkedin.text,
                                          google: _google.text,
                                        ),
                                        context)
                                    );
                                  }
                                }
                            )
                          ],
                        );
                      },
                      orElse: (){
                        return Column(
                          children: [
                            Container(
                              height: 110,
                              decoration:  const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFFFD88D)
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
                              labelText: 'Name',
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
                              labelText: 'Email',
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
                              labelText: 'Phone',
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
                              labelText: 'Business Name',
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
                              labelText: 'Address',
                              keyBoardType: TextInputType.text,
                              maxLines: 3,
                              validator: (value){
                                if(value!.isEmpty || value.trim()==''){
                                  return 'Enter address';
                                }else if(value.contains(RegExp(r'[~!@$%^&*()=+{};:?<>"]'))){
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
                                    labelText: 'State',
                                    keyBoardType: TextInputType.text,
                                    validator: (value){
                                      if(value!.isEmpty || value.trim()==''){
                                        return 'Enter State';
                                      }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
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
                                      labelText: 'Country',
                                      keyBoardType: TextInputType.text,
                                      validator: (value){
                                        if(value!.isEmpty || value.trim()==''){
                                          return 'Enter Country';
                                        }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>"]'))){
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
                              labelText: 'Pin code',
                              keyBoardType: TextInputType.number,
                              validator: (value){
                                if(value!.isEmpty || value.trim()==''){
                                  return 'Enter Pincode';
                                }else if(value.contains(RegExp(r'[-.,]')) || value.contains(" ")){
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
                              labelText: 'Company website',
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
                              labelText: 'Registered Address',
                              keyBoardType: TextInputType.text,
                              maxLines: 3,
                              validator: (value){
                                if(value!.contains(RegExp(r'[~!@$%^&*()=+{};:?<>"]'))){
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
                              labelText: 'Facebook',
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
                                labelText: 'Instagram',
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
                                labelText: 'Twitter',
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
                                labelText: 'LinkedIn',
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
                                labelText: 'Google',
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
                                name: 'Save',
                                onTap: (){
                                  if(_formKey.currentState!.validate()){
                                    //reset dept id
                                    context.read<DepartmentBloc>().add(const DepartmentEvent.resetDeptId());
                                  }
                                }
                            ),
                          ],
                        );
                      }
                  ),
                );
          },
        ),
      ),
    );
  }

  Widget followUpView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text('User Preferences',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
          ),
        ),
        const SizedBox(height: 15),
        CustomTextField(
          controller: _followUpDaysContr,
          labelText: 'Follow-up days',
          keyBoardType: TextInputType.number,
          validator: (value){
            if(value!.trim() == "") {
              return "Follow-up days can't be empty!";
            } else if(value.contains("-")) {
              return "Only Positive value allowed!";
            } else if(value.contains(RegExp(r'[,.-]')) || value.contains(" ")){
              return 'Invalid follow-up days';
            } else{
              return null;
            }
          },
        ),
      ],
    );
  }
}
