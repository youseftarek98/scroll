import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scroll/auth/login_view.dart';

import '../constant.dart';

class RegisterView extends StatelessWidget {
   RegisterView({Key? key}) : super(key: key);
bool isVisable = true ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xFFDAEEE2),
        body: SafeArea(
          child: Stack(
            //alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: [
                    const CircleAvatar(
                      backgroundColor:  Color(0xFFE0D8D8),
                      backgroundImage: AssetImage('assets/images_3.jpg' ),
                      radius: 65,

                      //   child:
                    ) ,

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 15),
                      child: const Text(
                        "Scroll",
                        style: TextStyle(
                            fontSize: 35,
                            color:  Color(0xFF76ab90),
                            fontWeight: FontWeight.bold),
                      ),
                    ) ,
                    const Text(
                      "Register",
                      style: TextStyle(
                          decoration: TextDecoration.underline ,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Form(
                        //key: controller.registerGlobalKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            ///Full name
                            Row(
                              children: [
                                Flexible(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    //  focusNode: _fullNameFocusNode,
                                    //    onEditingComplete: () =>
                                    //      FocusScope.of(context)
                                    //        .requestFocus(_emailFocusNode),
                                    onSaved: (value) {

                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Field can\'t be missing';
                                      }
                                      return null;
                                    },

                                    style: const TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                        hintText: 'Full name',
                                        prefixIcon: const Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        ),
                                        hintStyle: const TextStyle(
                                            color: Colors.black),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade700)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            borderSide: const BorderSide(
                                                color: Colors.black))),
                                  ),
                                  flex: 3,
                                ),

                                /*
                                Flexible(
                                    child: Obx(
                                  () => Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.24,
                                          height: size.width * 0.18,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            child: signUpController
                                                        .isProfilePicPathSet
                                                        .value ==
                                                    true
                                                ? Image.file(
                                                    File(signUpController
                                                        .profilePicPath.value),
                                                    fit: BoxFit.fill,
                                                  )
                                                : Image.asset(
                                                    'assets/red.JPG',
                                                    fit: BoxFit.fill,
                                                  ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 0.0,
                                          right: 0.0,
                                          child: InkWell(
                                            onTap: () => showModalBottomSheet(
                                                context: context,
                                                builder: (context) =>
                                                    bottomSheet(context)),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.pink,
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 2),
                                                    shape: BoxShape.circle),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    pickedFile == null
                                                        ? Icons.add_a_photo
                                                        : Icons.edit_outlined,
                                                    size: 18,
                                                    color: Colors.white,
                                                  ),
                                                )),
                                          ))
                                    ],
                                  ),
                                )),

                                 */
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            ///Email
                            TextFormField(
                              //   focusNode: _emailFocusNode,
                              textInputAction: TextInputAction.next,
                              // onEditingComplete: () => FocusScope.of(context)
                              //   .requestFocus(_passwordFocusNode),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Field can\'t be missing';
                                }
                                return null;
                              },
                              onSaved: (value) {
                               // controller.email = value!;
                              },
                             // controller: controller.emailTextEditingController,
                              style: const TextStyle(color: Colors.black),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  prefixIcon: const Icon(
                                    Icons.email_outlined,
                                    color: Colors.black,
                                  ),
                                  hintStyle:
                                  const TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.black)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color: Colors.pink.shade700)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                      const BorderSide(color: Colors.black))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            ///Password
                            TextFormField(
                              //   focusNode: _passwordFocusNode,
                              textInputAction: TextInputAction.next,
                              // onEditingComplete: () => FocusScope.of(context)
                              //   .requestFocus(_phoneFocusNode),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Field can\'t be missing';
                                }
                                return null;
                                // return controller.validatePassword(value!);
                              },
                              onSaved: (value) {
                               // controller.password = value!;
                              },
                              //  obscureText: _obscureText,
                             // controller:
                             // controller.passwordTextEditingController,
                              style: const TextStyle(color: Colors.black),
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      //        setState(() {
                                      //        _obscureText = !_obscureText;
                                      //   });
                                    },
                                    child: Icon(
                                      isVisable
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    ),//isVisable ? const Icon(Icons.visibility_off ,
                                      // isVisable
                                      //  ? Icons.visibility
                                      //: Icons.visibility_off,
                                   //   color: Colors.white,
                                     //) : const Icon(Icons.visibility ,
                                      // isVisable
                                      //  ? Icons.visibility
                                      //: Icons.visibility_off,
                                  //    color: Colors.white,
                                  //  ) ,
                                  ),
                                  hintText: 'Password',
                                  hintStyle:
                                  const TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.black)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color: Colors.pink.shade700)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                      const BorderSide(color: Colors.black))),
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            /// phone number
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                              //     focusNode: _phoneFocusNode,
                              //   onEditingComplete: () => FocusScope.of(context)
                              //     .requestFocus(_cityFocusNode),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Field can\'t be missing';
                                }
                                return null;
                              },
                              onSaved: (value) {

                              },
                              onChanged: (val) {
                                //   print(
                                //     '_phoneTextEditingController.text : ${_phoneTextEditingController.text}');
                              },
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                  ),
                                  hintText: 'Phone number',
                                  hintStyle:
                                  const TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.black)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color: Colors.pink.shade700)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                      const BorderSide(color: Colors.black))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
/*
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                              child: Text(
                            'Gender',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                          Row(
                            children: [
                              Obx(
                                () => Radio(
                                  value: 'Male',
                                  groupValue: genderSelectedController
                                      .selectedGender.value,
                                  onChanged: (value) {
                                    genderSelectedController
                                        .onChangeGender(value);
                                  },
                                  activeColor: Colors.white,
                                  fillColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                              const Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Obx(
                                () => Radio(
                                  value: 'Female',
                                  groupValue: genderSelectedController
                                      .selectedGender.value,
                                  onChanged: (value) {
                                    genderSelectedController
                                        .onChangeGender(value);
                                  },
                                  activeColor: Colors.white,
                                  fillColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                              ),
                              const Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),


 */



                    const SizedBox(
                      height: 16,
                    ),

                    MaterialButton(
                      // onPressed: signUp,
                      onPressed: () {

                      },
                      color: const Color(0xFF76ab90),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide.none),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text('Register',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.person_add,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ) ,
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                                text: 'Already have an account ?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(text: '   '),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                  print('Going to Login screen') ;
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>  LoginView())) ;
                                  } , //Get.offAllNamed(AppRoutes.login),
                                text: 'Login',
                                style: const TextStyle(
                                    color: Color(0xFF76ab90),
                                    decoration: TextDecoration.underline,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ])),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }


  _showCity(BuildContext context , size) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Jobs ',
              style: TextStyle(color: Colors.pink.shade300, fontSize: 20),
            ),
            content: Container(
              width: size.width * 0.9,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Constants.city.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {

                     //   controller.cityTextEditingController.text =
                       // Constants.city[index];

                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            color: Colors.red[200],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Constants.city[index],
                              style: const TextStyle(
                                  color: Color(0xFF00325A),
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: const Text('Close'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Cancel filter'),
              )
            ],
          );
        });
  }


}
