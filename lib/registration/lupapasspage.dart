import 'package:flutter/material.dart';
import 'package:flutter_form_app/komponen/snackbar.dart';
import 'package:flutter_form_app/komponen/textfield.dart';

class LupaPassPage extends StatefulWidget {
  const LupaPassPage({super.key});

  @override
  State<LupaPassPage> createState() => _LupaPassPageState();
}

class _LupaPassPageState extends State<LupaPassPage> {
  final control_email = TextEditingController();

  Future<void> cekaja(email) async {
    if (email != "") {
      Navigator.pop(context);
    } else {
      showSnackBar(context, "isi semua kolom.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Image.asset('assets/images/logo.jpg'),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Text(
                  "Lupa Password",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pesan",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Masukkan email anda dan tunggu kode etik akan dikirimkan",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Masukkan Email",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  InputTextField(
                    control: control_email,
                    hint: "Email",
                    obscure_text: false,
                    icon: Icons.email,
                    keytype: TextInputType.emailAddress,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                    // Background color
                    backgroundColor: Color.fromARGB(255, 46, 54, 72),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  onPressed: () async {
                    cekaja(control_email.text.toString());
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
