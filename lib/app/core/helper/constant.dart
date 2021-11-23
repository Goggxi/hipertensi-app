import 'package:flutter/material.dart';

// Colors
const kBackgroundColor = Color(0xFFFEFEFE);
const kTitleTextColor = Color(0xFF303030);
const kBodyTextColor = Color(0xFF4B4B4B);
const kTextLightColor = Color(0xFF959595);
const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecovercolor = Color(0xFF36C12C);
const kPrimaryColor = Color(0xFF3382CC);
final kShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);

// Text Style
const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const kSubTextStyle = TextStyle(fontSize: 16, color: kBodyTextColor);

const kTitleTextstyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);

const credentials = r'''
{
  "type": "service_account",
  "project_id": "virtual-door-330909",
  "private_key_id": "66d6bfcfd07f4efdf50617ea95c144bca3302fe3",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDdOVSq4Iff3iKB\nAmFJdVnrkJwaoWFZ3RInUFTyLMoevid5JKhB6F5OniiyPnMzhE0CwZ6MDNxE9ubc\n446Z9e1cUisrLMCISM0HEJdt2C6SUs1QtwRup4oluHw3Espa5LqLyUWSqw9i6rRI\nuRMA4zoN0P2+h1baeyR751V6XuLM/qr2HUx2foUciNz9+WxjGZ5sVYAwebnCZ3Gp\nNcLnBelx2BQu/e+zS/QPQDnY3WwsCrJsjLqbJMmWxZ8dNVxl+a36OvdhJOPGHxqQ\nck7ddA1U4/Fjz/1UZkvkpp7cmt3lFz7NVoSJwYSqz59GyIRLMsG15cvrMD+9z3ty\n6T+TaGE1AgMBAAECggEAA4gcBitV9/i1n84gK/pL4HMbTuCHK5ZYKRkC9ifJZUK/\nYhN3/S9evA4R08Cj+a1Rxmq9Y3p8FLzFVD7swp/2tVvZdRO+kh5paYS2CiqimbLp\nNLHrR/H0RmRi1UU/RkKzCLLCodQJx5g8HxIXT9MQ1PIibuV9uTiwjSrVBkJYCBI8\nIRaJ8YBisMwfBY69bW2sKvYESHMPz/axruXM4FvCwBlFZTRMDQvx5kE8/FqCd2O6\n/Pv7J3YS43uUnsYzjyMZiTJ4FdbF3tkRLU09IQJoZ6HKNa2ETkY1F/iFx2UoZXuo\nHuyIDnp4u1PAIDrlTFNHMfVxPN5heU9SXm/YQ5d8cQKBgQD4HinjeQSGcBVizDGN\n1G8vVcmq4MnXm7ziujHhHcOHRJ60/Dlf1xwWks8yovrT2TFNp/RtuOuym7kZ2fW2\nXe+/kJdibS8wgZL4hEDpqZlbTfvVjft/zmQO91/1RlcBb+S6hV8c/UZbR4njQehV\n88hDkmxQdHtuXcOjZI0/TtNX8QKBgQDkQHNfMWQrxeIOrGzpdzZ929aV4qhLmnYJ\nrlyS5eo1rb0ipSvg0869Mz9cF9nz68oR1DN09vcfh98q8unthLou77lpckBHBucG\n29PSJfWhr0MrcRZgFxpPeqyyDHZwdPCMlKMtT8rwLl0so6uBinmYz/FUPP5C7D0a\nm5ycBj/BhQKBgQCX5B9Qme0jP8pXyRks8jd+is4CRcpKq5ReWA3g+g+Q53kg4qdc\n/Jq9VvJw1UUoG3YLTB5ebS4dESeno76//ZGffCywnJae4zPN32i9oo23T24ztc+Y\n1gh7AQVFaeIphw5HAQ7Q+Fvx1UGcVeSdebfHZgPY3PYTAmOZyxyM/Px0gQKBgQDe\n01iOJt6eqQjdwFB2vs2woqvjGSmo3Pq8yr5PHiq+CoVozAyA6OWb6OrC0foRWS+k\nph8x4WMxIeiougnKuVc1OQwtt76uWDuzg2lPb4VTOZD+WOE6H3OtAZqUGvyJHnAz\nHWwLcSkxvmFxkbp9tRyuJNp4nS6vUIb6cc26t5MILQKBgE1kmO9jQzzpBAc4c/HU\nPjiN7+aixzms+CmWprIQpN/FC0Va7jxaFyBGgRUVng7SfYSNiBDQNVFCb+omo8uG\njBh+n/NsA3IqFFHp4ZiZtdQmkIwtA11U6Tt+KY6k18Fs9nVzot6cXlFOG6825VlJ\nLBH7QaAYL1rk9HQdwh/skeG/\n-----END PRIVATE KEY-----\n",
  "client_email": "hipertensiapp@virtual-door-330909.iam.gserviceaccount.com",
  "client_id": "103477641542019650521",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/hipertensiapp%40virtual-door-330909.iam.gserviceaccount.com"
}
''';

const spreadsheetId = '1q17XXswXMM6l4bMMk1jtNg9IlurE48X545dQQIsNnf0';
