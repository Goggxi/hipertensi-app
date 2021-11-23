import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:gsheets/gsheets.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  final gsheets = GSheets(credentials);
  final ss = await gsheets.spreadsheet(spreadsheetId);
  var shet = ss.worksheetByTitle('Kuisioner1');
  await shet!.values.insertValue("IPPANG", column: 1, row: 1);

  runApp(
    GetMaterialApp(
      title: "Hipertensi App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
