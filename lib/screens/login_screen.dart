import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:brand_marketplace_app/widgets/button_black.dart';
import 'package:brand_marketplace_app/widgets/button_white.dart';
import 'package:brand_marketplace_app/widgets/custom_input_textfield.dart';
import 'package:brand_marketplace_app/widgets/icon_suffix.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                    Expanded(flex: 4, child: _formLogin()),
                    Expanded(flex: 1, child: _actionLogin())
                  ],
                ),
              ),
            ),
          ),
        );
      })),
    );
  }

  Widget _formLogin() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Login",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 22, fontWeight: FontUI.WEIGHT_SEMIBOLD)),
          const SizedBox(height: 10),
          Text("Please login to your Shoesly account",
              style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                  fontWeight: FontUI.WEIGHT_MEDIUM)),
          const SizedBox(height: 50),
          Text("Email",
              style: PRIMARY_TEXT_STYLE.copyWith(
                  fontSize: 16, fontWeight: FontUI.WEIGHT_BOLD)),
          CustomTextField(
            controller: _emailController,
            hintText: 'Masukkan Email',
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
            hintText: 'Masukkan Password',
            textInputAction: TextInputAction.done,
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
        ],
      ),
    );
  }

  Widget _actionLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ButtonBlack(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bottom-screen', (route) => false);
            },
            text: "Login"),
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
                  text: "Join with.",
                  style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                      fontWeight: FontUI.WEIGHT_MEDIUM),
                  children: [
                TextSpan(
                    text: " Create Account",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/register', (route) => false);
                      },
                    style: PRIMARY_TEXT_STYLE.copyWith(
                        fontWeight: FontUI.WEIGHT_BOLD))
              ])),
        )
      ],
    );
  }
}
