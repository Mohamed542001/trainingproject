part of 'RegisterWidgetsImports.dart';

class BuildRegisterForm extends StatefulWidget {
  const BuildRegisterForm({Key? key, required this.registerData,}) : super(key: key);
  final RegisterData registerData;

  @override
  State<BuildRegisterForm> createState() => _BuildRegisterFormState();
}

class _BuildRegisterFormState extends State<BuildRegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.registerData.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.registerData.userNameController,
            validator: (v){
              if(v!.isEmpty){
                return 'Enter your Email';
              }
            },
            onFieldSubmitted: (value){
              print(value);
            },
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.drive_file_rename_outline),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: widget.registerData.phoneController,
            validator: (v){
              if(v!.isEmpty){
                return 'Enter your Phone Number';
              }
            },
            onFieldSubmitted: (value){
              print(value);
            },
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              hintText: 'Phone Number',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: widget.registerData.emailController,
            validator: (v){
              if(v!.isEmpty){
                return 'Enter your Email';
              }
            },
            onFieldSubmitted: (value){
              print(value);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: widget.registerData.passwordController,
            validator: (v){
              if(v!.isEmpty){
                return 'Password must not be empty';
              } else if(v.length<5){
                return 'Password is too short';
              }
            },
            obscureText: widget.registerData.visible,
            onFieldSubmitted: (value){
              print(value);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Password',
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    widget.registerData.visible = !widget.registerData.visible;
                  });
                },
                icon: widget.registerData.visible
                    ? const Icon(Icons.visibility)
                    :const Icon(Icons.visibility_off),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
