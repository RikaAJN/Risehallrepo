import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../enum/button_type.dart';
import '../../../util/button.dart';
import '../../../util/tv_form_field.dart';
import 'continue_as.dart';

class SignInScreen extends StatefulWidget {
  final String emailVar;
  const SignInScreen({
    Key? key,
    this.emailVar = '',
  }) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  /// [Controllers]
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;

  /// [Notifiers]
  late ValueNotifier<bool> _isObscure;

  /// [Keys]
  late GlobalKey<ScaffoldState> _scaffoldKey;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();

    /// [Controllers]
    _emailEditingController = TextEditingController(
      text: widget.emailVar,
    );
    _passwordEditingController = TextEditingController(
      text: '',
    );

    /// [Notifiers]
    _isObscure = ValueNotifier(true);

    /// [Keys]
    _scaffoldKey = GlobalKey();
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: context.insetsSymetric(
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const YMargin(39),
                Icon(Icons.arrow_back),
                const YMargin(33),
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.black.withOpacity(
                      0.8,
                    ),
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                //  const YMargin(12),
                Text(
                  'Enter your email and password to sign in',
                  style: TextStyle(
                    color: Colors.black.withOpacity(
                      0.8,
                    ),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                // const YMargin(31),
                TVFormField(
                  hintText: 'Email',
                  controller: _emailEditingController,
                ),
                const YMargin(30),
                ValueListenableBuilder(
                  valueListenable: _isObscure,
                  builder: (_, bool value, __) {
                    return TVFormField(
                      hintText: 'Password',
                      // suffixDir: value
                      //     ? Icon(Icons.lock)
                      //     : Icon(Icons.lock_open),
                      obscureText: value,
                      onSuffixTap: () {
                        _isObscure.value = !_isObscure.value;
                      },
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'field cannot be empty';
                        }
                        return null;
                      },
                      controller: _passwordEditingController,
                    );
                  },
                ),

                //   const YMargin(20),
                const SizedBox(
                  height: 20,
                ),
                TVButton(
                  title: 'Sign In',
                  buttonType: ButtonType.primary,
                  // loading: model.isBusy,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContinueAs(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                // const YMargin(18),
                InkWell(
                  onTap: () async {
                    //  await MyGoogleSignInService.handleSignIn(context);
                  },
                  child: Container(
                    width: context.width,
                    padding: context.insetsSymetric(
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBEBEB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const XMargin(28),
                        // const SizedBox(
                        //   height: 28,
                        // ),
                        Material(
                          elevation: 2,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                            padding: context.insetsSymetric(
                              horizontal: 4,
                              vertical: 5,
                            ),
                            child: SvgPicture.asset(
                              'assets/images/onboarding/google_sign_in.svg',
                              height: context.scaleY(12),
                            ),
                          ),
                        ),
                        const XMargin(23),

                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //   },
                // ),
                //    const YMargin(8),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // Comment out Temporarily

                        // navigate(
                        //   context,
                        //   const ForgetPasswordScreen(),
                        // );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    // const XMargin(9),
                    const SizedBox(
                      height: 9,
                    ),
                    Icon(Icons.lock),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
