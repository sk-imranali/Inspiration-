
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromARGB(244, 243, 243, 1),
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find your",
                      style: TextStyle(fontSize: 25, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Inspiration ",
                      style: TextStyle(fontSize: 48, color: Colors.black),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        decoration: InputDecoration(

                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "search your looking",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Promo Today",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              promoCard('https://cdn.pixabay.com/photo/2022/05/05/09/21/meditation-7175669_960_720.jpg'),
                              promoCard('https://cdn.pixabay.com/photo/2016/12/02/02/10/idea-1876659_1280.jpg'),
                              promoCard('https://pixabay.com/photos/book-heart-pansies-pages-6214216/'),
                              promoCard('https://cdn.pixabay.com/photo/2022/05/05/09/21/meditation-7175669_960_720.jpg'),


                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://cdn.pixabay.com/photo/2016/12/02/02/10/idea-1876659_1280.jpg'),

                              ),
                             //image: NetworkImage("https://cdn.pixabay.com/photo/2022/05/05/09/21/meditation-7175669_960_720.jpg")
                            ),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("imran",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget promoCard(image){
    return AspectRatio(aspectRatio: 2/3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://cdn.pixabay.com/photo/2022/05/05/09/21/meditation-7175669_960_720.jpg',),

        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1,0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
      ),
    ),
    );

  }
}
