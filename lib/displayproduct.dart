import 'package:flutter/material.dart';
//void main() {
  //runApp(const MyApp());
//}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:DisplayProduct()
    );
  }
}
class DisplayProduct extends StatefulWidget {

  @override
   _DisplayProductState createState() =>  _DisplayProductState();
}

class  _DisplayProductState extends State <DisplayProduct> {
 dynamic x= Border.all(color: Color.fromARGB(255, 202, 104, 44) ,width: 1);
  dynamic x2=Color.fromARGB(0, 188, 95, 72);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color.fromARGB(225, 12, 15, 20),
      body:Column(children: [
         Stack(
         
        children:<Widget> [
          Container(
             margin: EdgeInsets.fromLTRB(5, 2, 5, 5),
               height:MediaQuery.of(context).size.height*1.7/3,
            width: MediaQuery.of(context).size.width,
  decoration: const BoxDecoration(
    // color: Color.fromARGB(255, 157, 97, 59),
                borderRadius: BorderRadius.all(Radius.circular(40),
                ),
                
    image: DecorationImage(
       image: AssetImage("images/macchiato-dan-cappuccino-3.jpeg"),
       fit: BoxFit.cover),
  ), 
             
          ),
          ClipRRect(
         child: Container( 
           margin: EdgeInsets.fromLTRB(5, 336, 5, 5),
             height:MediaQuery.of(context).size.height*0.5/3,
            width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(208, 30, 11, 5),
             borderRadius: BorderRadius.all(Radius.circular(30),
                ),
          ),
             child:Column(
            children:[
             Padding(padding: EdgeInsets.fromLTRB(30, 40, 200, 0), 
             child:Text("Coppuccino",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 200, 0), 
             child:Text("With Oat Milk",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 20),),),
             ],
          )
        ),),
         
        ],
      ),
      //========================= Down ========================
      Expanded(child:Column(
        children: [
          
               Padding(padding: EdgeInsets.fromLTRB(0, 25, 270, 17), 
             child:Text("Description",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 18),),),
             Padding(padding: EdgeInsets.fromLTRB(0, 0, 5, 0), 
             child:RichText(
                text: TextSpan(
                  text: "A caption is the best made with shugar and  \n \n milk and limon chocolate ",
                 style: TextStyle(color: Color.fromARGB(255, 195, 186, 186),fontSize: 18,),
                  children:<TextSpan> [
                    TextSpan(text: "...Read More",style: TextStyle(color: Color.fromARGB(199, 200, 111, 55),fontSize: 18,),),
                  ]
               ),
               ),
             ),
           
             Padding(padding: EdgeInsets.fromLTRB(0, 25, 330, 17), 
             child:Text("Size",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 18),),),
           Wrap(children: [
            Container( margin:EdgeInsets.fromLTRB(6, 0, 6, 0),  
              height: 37,width:  113,
              child:Center(child:Text("S",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 18),),),
               decoration: BoxDecoration(
            color:Color.fromARGB(0, 188, 95, 72),
            border: Border.all(color: Color.fromARGB(255, 202, 104, 44) ,width: 1),
             borderRadius:BorderRadius.all(Radius.circular(10),
                ),
          ),
              ) ,
                 Container(margin:EdgeInsets.fromLTRB(6, 0, 6, 0),  
             height: 37,width:  113,
              child:Center(child:Text("M",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 18),),),
               decoration: BoxDecoration(
            color: Color.fromARGB(255, 20, 25, 33),
            borderRadius:BorderRadius.all(Radius.circular(10),
                ),
          ),
              ) ,   Container( margin:EdgeInsets.fromLTRB(6, 0, 6, 0), 
              height: 37,width: 113,
              child:Center(child:Text("L",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 18),),),
               decoration: BoxDecoration(
            color: Color.fromARGB(255, 20, 25, 33),
             borderRadius:BorderRadius.all(Radius.circular(10), ),
          ),
              ) ,
                ],), 
          
          Wrap(children: [
            Container( margin:EdgeInsets.fromLTRB(0, 30, 60, 0), 
            child:Column(children:[Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10),child:Text("Price",style: TextStyle(color: Color.fromARGB(255, 180, 177, 177),fontSize: 18),) ,) ,
              RichText(
                text: TextSpan(
                  text: r"$ ",
                  style:TextStyle(color:Color.fromARGB(255, 202, 104, 44),
                  fontSize: 20,fontWeight: FontWeight.bold),
                  children:<TextSpan> [
                    TextSpan(text: "4.20",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20,fontWeight: FontWeight.bold,),),
                  ]
               ),
               ),
              ]) ,
             
              ),
             Container(margin:EdgeInsets.fromLTRB(0, 30, 0, 0),
             child: new GestureDetector( 
                  child:Container(
              
               decoration: BoxDecoration( 
                  color:Color.fromARGB(255, 200, 110, 55),
                  borderRadius:BorderRadius.all(Radius.circular(10),)),
                height:55,
                width: 230,
               child:Center(child: Text("Buy Now",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                onTap: (){ setState((){ });},
                ),) ,
            ],
          ),
        ],
      ))
       ],),
      ), 
      );
  }
}