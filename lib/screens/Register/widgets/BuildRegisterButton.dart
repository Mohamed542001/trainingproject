part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  const BuildRegisterButton({Key? key, required this.registerData,}) : super(key: key);
  final RegisterData registerData;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
      child: DefaultButton(
        onTap: (){
          if(registerData.formKey.currentState!.validate()){
            print(registerData.userNameController.text);
            print(registerData.phoneController.text);
            print(registerData.emailController.text);
            print(registerData.passwordController.text);
          }
        },
        margin: const EdgeInsets.all(0),
        title: 'Register Now',
        width: double.infinity,
      ),
    );
  }
}


