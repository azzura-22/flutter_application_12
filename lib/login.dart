import 'package:flutter/material.dart';
import 'package:flutter_application_12/home.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginpageState();
}

class _loginpageState extends State<loginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _ispasswordVisible = false;

  Widget _gap(){
    return const SizedBox(
      height: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 8,
          child: Container(
            padding: EdgeInsets.all(32),
            constraints: BoxConstraints(
              maxWidth: 350,
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const FlutterLogo(
                    size: 100,
                  ),
                  _gap(),
                  Text(
                    'selamat datang di aplikasi ini',
                    style: Theme.of(context).textTheme.titleMedium
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'email',
                      hintText: 'masukkan email anda',
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder()
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                      final emailValid = emailRegex.hasMatch(value);
                      if (!emailValid) {
                        return 'Format email tidak valid';
                      }
                      return null;
                    },
                  ),
                  _gap(),
                  TextFormField(
                    obscureText: !_ispasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'password',
                      hintText: 'masukkan password anda',
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(_ispasswordVisible ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _ispasswordVisible = !_ispasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Password tidak boleh kosong';
                      }
                      if (value.length < 6) {
                        return 'Password harus terdiri dari minimal 6 karakter';
                      }
                      return null;
                    },
                  ),
                  _gap(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4,
                        ),
                      )
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=> homepage()));
                        }
                      },
                      child: const Padding(padding: EdgeInsets.all(10.0),
                      child: Text('masuk',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                    ),
                    )
                  )
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}