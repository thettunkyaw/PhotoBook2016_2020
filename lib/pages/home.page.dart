// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:webview_flutter/webview_flutter.dart';

// Pages
import './about.page.dart';

// HomePage StatelessWidget Class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Method Properties (Normal)
  bool _isLoading;
  WebViewController _controller;

  // Life Cycle Hook Methods
  @override
  void initState() {
    super.initState();
    setState(() {
      this._isLoading = true;
    });
  }

  // Class Method (Normal)
  // Future Methods
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return WillPopScope(
      onWillPop: this._onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5d371b),
          centerTitle: false,
          title: Text(
            "Public Development",
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info,
                color: Color(0xfff1c491),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            WebView(
              initialUrl:
                  "https://s3-ap-southeast-1.amazonaws.com/moi.mm/MRD/index.html?page=1",
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller = webViewController;
              },
              onPageStarted: (String onPageStarted) {
                setState(() {
                  this._isLoading = true;
                });
              },
              onPageFinished: (String onPageFinished) {
                setState(() {
                  this._isLoading = false;
                });
              },
            ),
            if (this._isLoading == true)
              Container(
                color: Color(0xfff1c491),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
