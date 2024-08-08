import 'package:flutter/material.dart';
import 'package:flutter_application_2/tokopedia_signup_page.dart';
import 'package:flutter_application_2/widgets/my_button.dart';
import 'package:flutter_application_2/widgets/my_colors.dart';
import 'package:flutter_application_2/widgets/my_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginTokopedia extends StatefulWidget {
  const LoginTokopedia({super.key});

  @override
  State<LoginTokopedia> createState() => _LoginTokopediaState();
}

class _LoginTokopediaState extends State<LoginTokopedia> {
  TextEditingController usernameController = TextEditingController();
  String loginMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add navigation logic if needed
          },
        ),
        title: Text(
          'Masuk ke Tokopedia',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {
                // Navigasi ke halaman pendaftaran
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpTokopedia()),
                );
              },
              child: Text(
                'Daftar',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(4, 172, 12, 1)),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Align to the center of the column
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email atau Nomor Ponsel',
                    border: OutlineInputBorder()),
              ),
            ),
            // MyTextField(
            //   controller: usernameController,
            //   hintText: 'Email & Username',
            //   isObsecure: false,
            //   textStyle: TextStyle(color: colorTertiary),
            // ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Contoh: 08123456789',
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Butuh Bantuan?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(4, 172, 12, 1),
                    ),
                  ),
                ],
              ),
            ),
            // MyButton(
            //     onpressed: () {
            //       setState(() {
            //         if (usernameController == 'admin') {
            //         print('sukses');
            //       }

            //       });
            //     },
            //     textbutton: 'Lanjut',
            //     textStyle: TextStyle(color: colorSecondary),
            //     borderRadius: 10,
            //     backgroundColor: colorPrimary,
            //     foregroundColor: colorSecondary,
            //     elevation: 10,
            //     ),

            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Lanjut',
                    style: TextStyle(
                      fontSize: 18, // Set the desired font size here
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(66, 181, 73, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('atau masuk dengan'),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  icon: Icon(Icons.fingerprint),
                  label: Text(
                    'Sidik Jari',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, // Set the desired font size here
                    ),
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  icon: FaIcon(
                      FontAwesomeIcons.google), // Replace with the desired icon
                  label: Text(
                    'Google',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, // Set the desired font size here
                    ),
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center the content within the row
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Belum punya akun Tokopedia?',
                        ),
                        TextSpan(
                          text: ' Daftar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(4, 172, 12, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
