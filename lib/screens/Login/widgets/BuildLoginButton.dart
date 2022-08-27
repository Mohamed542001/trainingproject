part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  const BuildLoginButton({Key? key, required this.loginData,}) : super(key: key);
  final LoginData loginData;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
      child: DefaultButton(
        onTap: (){
          if(loginData.formKey.currentState!.validate()){
            print(loginData.emailController.text);
            print(loginData.passwordController.text);
          }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=> const NavigatorPage()),
          );
        },
        margin: const EdgeInsets.all(0),
        title: 'Login',
        width: double.infinity,
      ),
    );
  }
}


