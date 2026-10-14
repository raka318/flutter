import 'package:flutter/material.dart';

// ContainerWidget
// import 'package:rpl2/container_widget/ContainerLatihan.dart';
// import 'package:rpl2/container_widget/ContainerSatu.dart';
// import 'package:rpl2/container_widget/tes_ai.dart';

// GridViewWidget
// import 'package:rpl2/gridview/GridView.dart';
// import 'package:rpl2/gridview/GridBuilder.dart';

//  LatihanWidget
// import 'package:rpl2/latihan_widget/LatihanHome.dart';
// import 'package:rpl2/latihan_widget/LatihanCard.dart';
// import 'package:rpl2/latihan_widget/TwitterWidget.dart';
// import 'package:rpl2/latihan_widget/LayoutInstagram.dart';
// import 'package:rpl2/latihan_widget/LatihanLayout.dart';

// ListViewWidget
// import 'package:rpl2/listview/ListView.dart';
// import 'package:rpl2/listview/ListBuilder.dart';
// import 'package:rpl2/listview/ListSeparated.dart';
// import 'package:rpl2/listview/ListCustom.dart';

//Pages
// import 'package:rpl2/pages/home_page.dart';
// import 'package:rpl2/pages/about_page.dart';
import 'package:rpl2/routes/app_routes.dart';

// RowColumnWidget
// import 'package:rpl2/row_column_widget/ColumnWidget.dart';
// import 'package:rpl2/row_column_widget/RowColumnWidget.dart';
// import 'package:rpl2/row_column_widget/RowWidget.dart';

// sized_expended_stock
// import 'package:rpl2/sized_expended_stack/ExpandedWidget.dart';
// import 'package:rpl2/sized_expended_stack/SizedBoxWidget.dart';
// import 'package:rpl2/sized_expended_stack/StackWidget.dart';
// import 'package:rpl2/sized_expended_stack/LayoutSatu.dart';
// import 'package:rpl2/sized_expended_stack/LayoutDua.dart';
// import 'package:rpl2/sized_expended_stack/LayoutTiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Utamaku',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}

// class HelloWidget extends StatelessWidget {
//   const new({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Hello, Flutter!',
//         style: TextStyle(
//           color: Colors.purple,
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           backgroundColor: Colors.yellowAccent,
//           fontStyle: FontStyle.italic,
//         ),
//       ),
//     );
//   }
// }
