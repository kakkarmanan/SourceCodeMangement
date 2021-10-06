import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zoom/theme/colors.dart';
import 'package:zoom/json/home_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activetab=0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: headerAndFooter,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: headerAndFooter,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.settings,
                color:Colors.grey,
              ),
              Spacer(),
              Row(
                  children: List.generate(4, (index){
                    return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            )
                        )
                    );
                  })
              ),
              Spacer(),
            ],
          )
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 0.99,
          height: size.height,
          // onPageChanged: (index,){
          //   setState(() {
          //     activetab=index;
          //   });
          // }
        ),

        items: List.generate(items.length, (index) {
          return Container(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Column(
                  children: [
                    Text(items[index]['title'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),),

                SizedBox(
                  height: 20,
                ),
                Text(items[index]['description'],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: grey))
              ],
            ),
              items[index]['img'] == null
                  ? Container()
                  : Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(items[index]['img']))),
              ),
              ],
            ),
          );
        }),
      ),

    );
  }
}

