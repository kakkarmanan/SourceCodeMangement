import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom/theme/colors.dart';
import 'package:zoom/json/root_json.dart';
import 'package:zoom/screens/home_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  selectedTab(int i){
    var index = i;
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: headerAndFooter,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.volume_off,
                  color: Colors.grey,
                ),
                SizedBox(width: 15,),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.security,
                  color: Colors.green,
                  size: 15,
                ),
                SizedBox(width: 15,),
                Text(
                  "Zoom",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 15,),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.grey,
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder:(_)=>HomePage()),
                        (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "Leave",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 15,
            child: Container(
              width: 120,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1543486958-d783bfbf7f8e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VsZmllfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                      fit: BoxFit.cover)),
              ),
            ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://yt3.ggpht.com/yti/ANoDKi7t8UDpIBhR4vFhxH8woiUdojAZ-8kqhQKj3kki7g=s108-c-k-c0x00ffffff-no-rj"),
                      fit: BoxFit.cover)
              ),
            )
          )
        ],
      )
    );
  }
  Widget getFooter(){
    return Container(
      decoration: BoxDecoration(
        color: headerAndFooter,
        border: Border(
          top: BorderSide(width: 2,
          color: black.withOpacity(0.06),
          )
        )
      ),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
          List.generate(textItems.length, (index){
            return InkWell(
              onTap:() {
                selectedTab(index);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(bottomItems[index],
                  size: sizedItems[index],
                    color: colorItems[index],),
                  SizedBox(height: 5,),
                  Text(
                    textItems[index],
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: colorItems[index],
                    )
                  )
                ],
              ),
            );
          }
                  ),
      )
            );
          }
  }
