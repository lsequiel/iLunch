import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilunch/pages/edit_page.dart';
import 'package:ilunch/pages/feedback_page.dart';
import 'package:ilunch/pages/help.dart';
import 'package:ilunch/pages/historic_page.dart';
import 'package:ilunch/pages/notifications_page.dart';
import 'package:ilunch/pages/report_page.dart';
import 'package:ilunch/pages/saves.dart';
import 'package:ilunch/themes/app_themes.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          titleSpacing: 0.0,
          title: Transform(
            transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            child: Text(
              "Detalhes Pessoais",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => EditPage()));
              },
              icon: Icon(Icons.settings),
              color: Colors.black,
            )
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(children: [
              Container(
                width: 200.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://imagens3.ne10.uol.com.br/blogsne10/social1/uploads/2019/11/Faust%C3%A3o-se-irrita-com-funcion%C3%A1rio-ao-vivo.jpg"),
                    radius: 60,
                  ),
                ),
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Appthemes.primary, width: 2.0)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Guilherme Alencar",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24)),
              ),
              Text(
                "guilhermealencar@gmail.com",
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(color: Colors.grey.shade800, fontSize: 12)),
              ),
              Text("+91 xxxxxxxxxx",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.grey.shade800, fontSize: 12))),
              Text(
                "Rua do Benfica, 777",
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(color: Colors.grey.shade800, fontSize: 12)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                    icon: Icon(
                      Icons.tab,
                      color: Colors.grey[800],
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Saves()));
                    },
                    label: Text(
                      "Salvos",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.grey[800])),
                    ),
                    style: TextButton.styleFrom(
                        elevation: 0.8, backgroundColor: Colors.white),
                  ),
                  TextButton.icon(
                    icon: Icon(
                      Icons.notification_important_outlined,
                      color: Colors.grey[800],
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NotificationsPage()));
                    },
                    label: Text(
                      "Notificações",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.grey[800])),
                    ),
                    style: TextButton.styleFrom(
                        elevation: 0.8, backgroundColor: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                  height: 60,
                  width: 300,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HistoricPage()));
                    },
                    icon: Text(
                      "Histórico de Pedidos",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 20,
                      )),
                    ),
                    label: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                    ),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 1,
                        backgroundColor: Colors.white),
                  )),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 60,
                  width: 300,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Help()));
                    },
                    label: Icon(Icons.arrow_forward_ios_outlined, size: 18),
                    icon: Text(
                      "Ajuda",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 20)),
                    ),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 1,
                        backgroundColor: Colors.white),
                  )),
              SizedBox(
                height: 40,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Enviar um Feedback',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FeedbackPage()))
                              },
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16)))
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Reportar Algo',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ReportPage()))
                              },
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16)))
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Avalie-nos',
                        recognizer: TapGestureRecognizer()..onTap = () => {},
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16)))
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              SizedBox(
                height: 6,
              ),
            ]),
          ),
        ]),
      );
}
