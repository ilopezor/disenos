import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_navigator.dart';
import 'package:disenos/widgets/pages_title.dart';
import 'package:flutter/material.dart';


class HomeDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          //BackGround
          Background(),

          _HomeBody()
        ]
      ),
      bottomNavigationBar: CustomButtonNavigatorBar(),
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 60,),
          //Titulos
          PageTitle(),

          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}