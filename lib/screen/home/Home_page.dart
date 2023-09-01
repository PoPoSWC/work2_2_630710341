import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Premium",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The Secrets to be Fluent in English',style: TextStyle(fontSize: 15,color: Colors.grey),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer("Full  Access to","Pattern Lessons",'Assets/04.jpg'),
                SizedBox(width: 16,),
                buildContainer("Unlock","All Limitations",'Assets/03.jpg'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer("All Topics","Available",'Assets/02.jpg'),
              SizedBox(width: 16,),
              buildContainer("Personlized","Coaching",'Assets/05.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('2021 Special Early Birds Offer',style: TextStyle(fontSize: 15,color: Colors.pink,decoration: TextDecoration.underline,
                  decorationColor: Colors.red,),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('IDR50.000',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700 ),),
                Text('/month'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height:50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(color: Colors.black,width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(100))
                ) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Start 3 Days Free Trial',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),)],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('View all Plan',style: TextStyle(decoration: TextDecoration.underline),),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(A1,A2,A3) {
    return Container(
      width: 150,
      height:170,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(40))
      ) ,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircleAvatar(foregroundImage: AssetImage(A3),radius: 50)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(A1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Text(A2,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)],
          ),
        ],
      ),
    );
  }
}
