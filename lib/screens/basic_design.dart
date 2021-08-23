import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          Image(image: AssetImage('assets/landscape.jpg')),

          //Title
          Title(),

          //Button Section
          ButtonSection(),

          //Section Description

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text('lorejkdhsfbdvfdgf dsgnfbdvsvfhbjgnnnnfdsrgtbf cvxsdtyjughfbdvscsfgthyjuhnbvcfdcsfvgfhjdf df bsj rhg wregk sreahsfj aetgivrb erf creghjer khgj eatugher vhet bprehb erwhjvbest+gwerea ghjaer vhegre hjgk euysv aregf sfdbrehtboers vetbhv sdob,rht bjh btsroblh etboihke boeb eglwrwg hejb tsrhtg kvetoirh kestihbkjer thrhbj vredfoblrtsbgohejd gbsrtijg etuoih eign rtbrgeurjg elth kljd')
          )
        ],
      ),
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30, vertical:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mountain By Zach Doehler', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('BC, Canada'),
            ],
          ),

          Expanded(
            child: Container()
          ),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:90, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(icon:Icons.call,text:'CALL'),
          CustomButton(icon:Icons.map_sharp, text:'ROUTE'),
          CustomButton(icon:Icons.share,text:'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(this.icon, color:Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color:Colors.blue))
      ]
    );
  }
}
