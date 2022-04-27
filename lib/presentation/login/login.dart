import 'package:flutter/material.dart';
import 'package:onecareprovider/presentation/resources/strings_manager.dart';
import 'package:onecareprovider/presentation/resources/values_manager.dart';
import 'package:onecareprovider/sizes.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _contentWidget(sHeight),
    );
  }

  Widget _contentWidget(double? sHeight) {
    return Container(
      padding: EdgeInsets.only(top: resHeight(AppPadding.p20, sHeight)),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: resHeight(20, sHeight),),
              TextFormField(),
              SizedBox(height: resHeight(40, sHeight),
                child: ElevatedButton(onPressed: (){}, child: const Text(AppStrings.login),),)
            ],
          ),
      )
      ),
    );
  }
}
