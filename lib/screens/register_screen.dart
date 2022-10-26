import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:brand_marketplace_app/widgets/button_black.dart';
import 'package:brand_marketplace_app/widgets/button_white.dart';
import 'package:brand_marketplace_app/widgets/custom_input_textfield.dart';
import 'package:brand_marketplace_app/widgets/icon_suffix.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = false;
  bool _checkedValue = false;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorUI.WHITE,
        body: _buildContent());
  }

  Widget _buildContent() {
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Container(
                margin: const EdgeInsets.fromLTRB(18, 40, 18, 0),
                child: Column(
                  children: [
                    Expanded(flex: 4, child: _formRegister()),
                    Expanded(flex: 1, child: _actionRegister())
                  ],
                ),
              ),
            ),
          ),
        );
      })),
    );
  }

  Widget _formRegister() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Create Account",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 22, fontWeight: FontUI.WEIGHT_SEMIBOLD)),
          const SizedBox(height: 10),
          Text("Please sign up to your Shoesly account",
              style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                  fontWeight: FontUI.WEIGHT_MEDIUM)),
          const SizedBox(height: 50),
          Text("Name",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 16, fontWeight: FontUI.WEIGHT_BOLD)),
          CustomTextField(
            controller: _nameController,
            hintText: 'Your Name',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Name must not be empty';
              }
            },
          ),
          const SizedBox(height: 16),
          Text("Email",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 16, fontWeight: FontUI.WEIGHT_BOLD)),
          CustomTextField(
            controller: _emailController,
            hintText: 'Your Email',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            validator: (value) =>
                !isEmail(value!) ? "Please enter valid email" : null,
          ),
          const SizedBox(height: 16),
          Text("Password",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 16, fontWeight: FontUI.WEIGHT_BOLD)),
          CustomTextField(
            controller: _passwordController,
            hintText: 'Your Password',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_isObscure,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password must not be empty';
              }
            },
            suffixIcon: IconSuffixButton(
                isObscure: _isObscure,
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            onFieldSubmitted: (value) {
              if (_formKey.currentState!.validate()) {}
            },
          ),
          Text("Your password must 8 or more characters",
              style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 12, fontWeight: FontUI.WEIGHT_LIGHT)),
          const SizedBox(height: 16),
          Text("Confirm Password",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 16, fontWeight: FontUI.WEIGHT_BOLD)),
          CustomTextField(
            controller: _confirmPasswordController,
            hintText: 'Confirm Password',
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_isObscure,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Confirm Password must not be empty';
              }
            },
            suffixIcon: IconSuffixButton(
                isObscure: _isObscure,
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            onFieldSubmitted: (value) {
              if (_formKey.currentState!.validate()) {}
            },
          ),
          const SizedBox(height: 16),
          CheckboxListTile(
            checkboxShape: const CircleBorder(),
            activeColor: ColorUI.DARK_SECONDINARY_2,
            title: RichText(
                text: TextSpan(
                    text: "By Signing Up, you agree to the ",
                    style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                        fontWeight: FontUI.WEIGHT_MEDIUM),
                    children: [
                  TextSpan(
                      text: "Terms of Service",
                      style: PRIMARY_TEXT_STYLE.copyWith(
                          fontWeight: FontUI.WEIGHT_BOLD)),
                  TextSpan(
                      text: " and ",
                      style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                          fontWeight: FontUI.WEIGHT_MEDIUM)),
                  TextSpan(
                      text: "Privacy Policy",
                      style: PRIMARY_TEXT_STYLE.copyWith(
                          fontWeight: FontUI.WEIGHT_BOLD))
                ])),
            value: _checkedValue,
            onChanged: (newValue) {
              setState(() {
                _checkedValue = newValue!;
              });
            },
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          )
        ],
      ),
    );
  }

  Widget _actionRegister() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ButtonBlack(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            },
            text: "CREATE ACCOUNT"),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: ButtonWhite(
                  onPressed: () {},
                  icon: "assets/icons/facebook.png",
                  text: "FACEBOOK"),
            ),
            const SizedBox(width: 15),
            Expanded(
              flex: 2,
              child: ButtonWhite(
                  onPressed: () {},
                  icon: "assets/icons/google.png",
                  text: "GOOGLE"),
            )
          ],
        ),
        const SizedBox(height: 10),
        Center(
          child: RichText(
              text: TextSpan(
                  text: "Have Account?",
                  style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                      fontWeight: FontUI.WEIGHT_MEDIUM),
                  children: [
                TextSpan(
                    text: " Sign In Now",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/login', (route) => false);
                      },
                    style: PRIMARY_TEXT_STYLE.copyWith(
                        fontWeight: FontUI.WEIGHT_BOLD))
              ])),
        )
      ],
    );
  }
}
