import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/tokopedia_login_page.dart';

class SignUpTokopedia extends StatefulWidget {
  const SignUpTokopedia({super.key});

  @override
  State<SignUpTokopedia> createState() => _SignUpTokopediaState();
}

class _SignUpTokopediaState extends State<SignUpTokopedia> {
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
          'Daftar',
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
                  MaterialPageRoute(builder: (context) => LoginTokopedia()),
                );
              },
              child: Text(
                'Masuk',
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
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Contoh: 08123456789',
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Daftar',
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
                    child: Text('atau daftar dengan'),
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
                  label: Text(
                    'Metode Lain',
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
                  Flexible(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  'Dengan mendaftar di sini, kamu menyetujui '),
                          TextSpan(
                            text: 'Syarat & Ketentuan ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(4, 172, 12, 1),
                            ),
                          ),
                          TextSpan(text: 'serta '),
                          TextSpan(
                            text: 'Pemberitahuan Privasi ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(4, 172, 12, 1),
                            ),
                          ),
                          TextSpan(text: 'Tokopedia'),
                        ],
                      ),
                      textAlign: TextAlign.center, // Align text to center
                      softWrap: true, // Allow text to wrap
                      overflow: TextOverflow.visible, // Handle overflow
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
