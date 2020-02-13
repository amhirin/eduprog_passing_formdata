import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class DataUser{
  String _nama;
  String _alamat;
  String _jk;

  String get nama => _nama;

  set nama(String value) {
    _nama = value;
  }

  String get alamat => _alamat;

  set alamat(String value) {
    _alamat = value;
  }

  String get jk => _jk;

  set jk(String value) {
    _jk = value;
  }


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Passing Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form1Page(data: DataUser(),),
    );
  }
}

class Form1Page extends StatefulWidget {
  Form1Page({Key key, this.data}) : super(key: key);

  DataUser data;

  @override
  _Form1PageState createState() => _Form1PageState();
}

class _Form1PageState extends State<Form1Page> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form 1"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Form 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Nama",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        //. isi data nya dulu
                        widget.data.nama = _controller.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Form2Page(
                                data: widget.data,
                              )
                          ),
                        );
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff134074),
                            borderRadius: BorderRadius.circular(20)),
                        height: 30,
                        width: 130,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Form2Page extends StatefulWidget {
  Form2Page({Key key, this.data}) : super(key: key);

  DataUser data;

  @override
  _Form2PageState createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form 2"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Form 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Alamat",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Previous',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff134074),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 30,
                        width: 130,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //. isi data nya dulu
                        widget.data.alamat = _controller.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Form3Page(
                                data: widget.data,
                              )
                          ),
                        );
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff134074),
                            borderRadius: BorderRadius.circular(20)),
                        height: 30,
                        width: 130,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Form3Page extends StatefulWidget {
  Form3Page({Key key, this.data}) : super(key: key);

  DataUser data;

  @override
  _Form3PageState createState() => _Form3PageState();
}

class _Form3PageState extends State<Form3Page> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form 3"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Form 3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Jenis Kelamin",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Previous',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff134074),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 30,
                        width: 130,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //. isi data nya dulu
                        widget.data.jk = _controller.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormFinalPage(
                                data: widget.data,
                              )
                          ),
                        );
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff134074),
                            borderRadius: BorderRadius.circular(20)),
                        height: 30,
                        width: 130,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FormFinalPage extends StatefulWidget {
  FormFinalPage({Key key, this.data}) : super(key: key);

  DataUser data;

  @override
  _FormFinalPageState createState() => _FormFinalPageState();
}

class _FormFinalPageState extends State<FormFinalPage> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form 3"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hasil Data", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                Text("Nama : ${widget.data.nama}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                Text("Alamat : ${widget.data.alamat}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                Text("JK : ${widget.data.jk}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Previous',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff134074),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 30,
                        width: 130,
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}