import 'package:flutter/material.dart';
import 'package:potbelly/routes/router.gr.dart';
import 'package:potbelly/values/values.dart';
import 'package:potbelly/widgets/custom_text_form_field.dart';
import 'package:potbelly/widgets/dark_overlay.dart';
import 'package:potbelly/widgets/potbelly_button.dart';
import 'package:potbelly/widgets/spaces.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  Future<void> _alertDialogBuilder(String error) async {
    return showDialog(
        //context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Container(
              child: Text(error),
            ),
            actions: [
              FlatButton(
                child: Text("Close Dialog"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        }
    );
  }

  // Create a new user accoun
  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Container(
              child: ListView(
                  children: <Widget>[
                    _buildHeader(),
                    SizedBox(height: Sizes.HEIGHT_40),
                    _buildForm(),
                    //_buildForm1(),
                    SpaceH36(),
                    _buildFooter()
                  ],
                ),
              ),

        ),
      );
  }

  Widget _buildHeader() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: Sizes.MARGIN_30),
        child: Image.asset(
          "assets/images/logo.png",
          height: Sizes.HEIGHT_150,
          width: Sizes.WIDTH_150,
      ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_48),
      child: Column(
        children: <Widget>[
          CustomTextFormField(
            hasPrefixIcon: true,
            prefixIconImagePath: ImagePath.emailIcon,
            hintText: StringConst.HINT_TEXT_EMAIL,
            prefixIconColor:  Color(0xFF000000),
            borderStyle: BorderStyle.solid,
            borderWidth: 0.0,
          ),
          SpaceH16(),
          CustomTextFormField(
            hasPrefixIcon: true,
            prefixIconImagePath: ImagePath.passwordIcon,
            hintText: StringConst.HINT_TEXT_PASSWORD,
            obscured: true,
            prefixIconColor:  Color(0xFF000000),
            borderStyle: BorderStyle.solid,
            borderWidth: 0.0,
          ),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () =>
                  AppRouter.navigator.pushNamed(AppRouter.forgotPasswordScreen),
              child: Container(
                margin: EdgeInsets.only(top: Sizes.MARGIN_16),
                child: Text(
                  StringConst.FORGOT_PASSWORD_QUESTION,
                  textAlign: TextAlign.right,

                  style: Styles.customNormalTextStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: <Widget>[
        PotbellyButton(
          StringConst.LOGIN,
          onTap: () => AppRouter.navigator.pushNamedAndRemoveUntil(
            AppRouter.rootScreen,
            (Route<dynamic> route) => false,
          ),
        ),
        SizedBox(height: Sizes.HEIGHT_16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, right: 40.0),
                child: GestureDetector(
                  onTap: () {},
                     child: Container(
                     padding: const EdgeInsets.all(15.0),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFf7418c),
                       ),
                      child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Color(0xFFFFFFFF),
                      ),
                    ),
                ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                 onTap: () => {},
                      child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFf7418c),
                      ),
                      child: new Icon(
                        FontAwesomeIcons.google,
                        color: Color(0xFFFFFFFF),
                      ),
                      ),
                 ),
              ),
           ],
        ),
        SizedBox(height: Sizes.HEIGHT_16),
        InkWell(
          onTap: () => AppRouter.navigator.pushNamed(AppRouter.registerScreen),
          child: Container(
            width: Sizes.WIDTH_150,
            height: Sizes.HEIGHT_24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  StringConst.CREATE_NEW_ACCOUNT,
                  textAlign: TextAlign.center,
                  style: Styles.customNormalTextStyle(),
                ),
                Spacer(),
                Container(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  decoration: Decorations.horizontalBarDecoration,
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
