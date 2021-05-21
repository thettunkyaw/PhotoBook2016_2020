// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:url_launcher/url_launcher.dart';

// AboutPage StatelessWidget Class
class AboutPage extends StatelessWidget {
  // Widget Methods
  Widget getBodyTextWidget(String string) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 15.0,
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        string,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5d371b),
        centerTitle: false,
        title: Text(
          "About",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xfff1c491),
          padding: EdgeInsets.all(
            10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "နိုင်ငံတော် အစိုးရ၏ ပြည်သူ့အတွက် ပြုပြင်ပြောင်းလဲ တိုးတက်ရေး ဆောင်ရွက်ချက်",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "ဓာတ်ပုံမှတ်တမ်း ၂၀၁၆-၂၀၂၀",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ရည်ရွယ်ချက်",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              this.getBodyTextWidget(
                  "ဒီမိုကရေစီ နည်းလမ်းတကျ ပြည်သူများရွေးချယ် တာဝန်ပေးအပ်ခဲ့သည့် အစိုးရတစ်ရပ်၏ ပြည်သူ့အတွက် ပြုပြင်ပြောင်းလဲ တိုးတက်ရေး ဆောင်ရွက်ချက်များကို လက်တွေ့သိမြင်နိုင်စေရန်နှင့် ဒီမိုကရေစီစနစ် အမြစ်တွယ် ရှင်သန်လာစေရေးအတွက် ဆက်လက်ပါဝင်ပေးလိုသည့် ဆန္ဒများ တိုးပွါးလာကြစေရန်။"),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ပုံနှိပ်မှတ်တမ်း",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              this.getBodyTextWidget("အုပ်ရေ - ၁၀၀၀"),
              this.getBodyTextWidget("၂၀၂၀ ပြည့်နှစ်၊ စက်တင်ဘာလ"),
              this.getBodyTextWidget("ပထမအကြိမ်"),
              this.getBodyTextWidget(
                  "မျက်နှာဖုံးနှင့် စာအုပ်အပြင်အဆင်\nမြင့်မောင်ကျော်"),
              this.getBodyTextWidget(
                  "ပုံနှိပ်\nဦးကျော်ဌေးမင်း(၀၀၄၃၅)\nအောင်သိန်းသန်းပုံနှိပ်\nအမှတ်(၁၃၈)၊ ဗိုလ်ချုပ်အောင်ဆန်းလမ်း၊ ပုဇွန်တောင်မြို့နယ်\nရန်ကုန်မြို့။"),
              this.getBodyTextWidget(
                  "ဓါတ်ပုံ\nပြန်ကြားရေးနှင့် ပြည်သူ့ဆက်ဆံရေးဦးစီးဌာန"),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "eBook မှတ်တမ်း",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              this.getBodyTextWidget(
                "၂၀၂၀ ပြည့်နှစ်၊ နို၀င်ဘာလ",
              ),
              this.getBodyTextWidget(
                "HTML5 Flipbook",
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Web: ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "https://myanmarpublicdevelopment.org",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () async {
                      if (await canLaunch(
                          "https://myanmarpublicdevelopment.org")) {
                        await launch(
                          "https://myanmarpublicdevelopment.org",
                          forceWebView: true,
                        );
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              this.getBodyTextWidget(
                "Developers\nအောင်ပြည့်ကျော်\nသက်ထွန်းကျော်",
              ),
              this.getBodyTextWidget(
                "Designer\nနေမင်းခိုင်",
              ),
              this.getBodyTextWidget(
                "Developed with Love\nInformation Matrix",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
