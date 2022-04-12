import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scroll/auth/register.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key: key);
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
                      radius: 80,

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
                      "Login",
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
                            child: Text('Login',
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
                                text: 'Don\'t have an account ?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(text: '   '),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Going to Register screen') ;
                                     Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => RegisterView())) ;
                                  } , //Get.offAllNamed(AppRoutes.login),
                                text: 'Register',
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
}
