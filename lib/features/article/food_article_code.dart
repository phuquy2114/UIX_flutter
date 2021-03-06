import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:math' as math;


Color _color=Colors.black;

class FoodArticle extends StatefulWidget {
  static const routeName = '/FoodArticle';
  @override
  _FoodArticleState createState() => _FoodArticleState();
}

class _FoodArticleState extends State<FoodArticle> {
  final controller = ScrollController();
  double appBarHeight = 200.0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        controller: controller,
        slivers:<Widget>[
          //=================
          //  Section Top
          //=================
          SliverAppBar(
            pinned: true,
            expandedHeight: appBarHeight,
            floating: true,
            automaticallyImplyLeading: false,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double percent = ((constraints.maxHeight - kToolbarHeight) *
                    100 /
                    (appBarHeight - kToolbarHeight));
                return Stack(
                  children: <Widget>[


                    //==================
                    //  Image
                    //==================
                    Image.asset(
                      "assets/images/fish.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),


                    Container(
                      height: kToolbarHeight,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomPaint(
                                size: Size.fromHeight(kToolbarHeight),
                                painter: CircleWhite(100 - percent),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //=================================
                    //  Text and Icon
                    //=================================
                    Container(

                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Food",
                                style:TextStyle(fontSize:26,color:_color,fontWeight: FontWeight.bold ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                controller.animateTo(-appBarHeight,
                                    duration: Duration(seconds: 4),
                                    curve: Curves.fastOutSlowIn);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(left:12,right: 12),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: _color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          //=================
          //  Section Bottom
          //=================
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle.dark,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 35),

                        //=============
                        //   title
                        //=============
                        Wrap(
                          children: <Widget>[
                            Text('Soy-Glazed Fish with Stir-Fried Spinach',style: TextStyle(fontSize:26,color:_color,fontWeight: FontWeight.bold ))
                          ],
                        ),


                        SizedBox(height: 20),
                        //=============
                        //   Subtitle
                        //=============
                        _buildDescription('15 minutes · Gluten free · Serves 4 · Enjoy a tasty and delicious meal with your loved ones. Learn how to make Soy-Glazed Fish with Stir-Fried Spinach & see the Smartpoints value of this great recipe.'),



                        SizedBox(height: 20),


                        Container(
                          child: Column(
                            children: <Widget>[

                              LinearPercentIndicator(
                                width: 170.0,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 16.0,
                                leading:  Container(width:60,child: Text("CARB",style: TextStyle(color: _color,fontSize: 16))),
                                trailing:  Text("42 gr",style: TextStyle(color: _color,fontSize: 16)),
                                percent: 0.42,
                                linearStrokeCap: LinearStrokeCap.butt,
                                progressColor: Colors.green,
                              ),
                              LinearPercentIndicator(
                                width: 170.0,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 16.0,
                                leading: Container(width:60,child: Text("PORT",style:TextStyle(color: _color,fontSize: 16))),
                                trailing: Text("75 gr",style: TextStyle(color: _color,fontSize: 16)),
                                percent: 0.75,
                                linearStrokeCap: LinearStrokeCap.butt,
                                progressColor: Colors.green,
                              ),
                              LinearPercentIndicator(
                                width: 170.0,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 16.0,
                                leading: Container(width:60,child: Text("FAT S",style: TextStyle(color: _color,fontSize: 16))),
                                trailing: new Text("30 gr",style: TextStyle(color: _color,fontSize: 16)),
                                percent: 0.3,
                                linearStrokeCap: LinearStrokeCap.butt,
                                progressColor: Colors.green,
                              ),
                              LinearPercentIndicator(
                                width: 170.0,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 16.0,
                                leading: Container(width:60,child: Text("FAT U",style: TextStyle(color: _color,fontSize: 16))),
                                trailing: new Text("40 gr",style: TextStyle(color: _color,fontSize: 16)),
                                percent: 0.4,
                                linearStrokeCap: LinearStrokeCap.butt,
                                progressColor: Colors.green,
                              ),
                            ],
                          ),
                        ),

                        //=============
                        //   title 1
                        //=============

                        _buildTitle('Instructions'),


                        SizedBox(height: 20),
                        //====================
                        //   Description 1
                        //====================
                        _buildDescription('1- Stir together soy sauce, scallions, cilantro, garlic, and ginger in a small bowl; set aside.'),

                        SizedBox(height: 10),


                        //====================
                        //   Description 2
                        //====================
                        _buildDescription('2- Heat 1½ tsp oil in a large nonstick skillet over medium heat. Add fish; cook until fillets begin to brown, about 3 minutes. Carefully turn fish with a large spatula. Drizzle fish with soy-sauce mixture; cook just until opaque in center, about 3 minutes. (If sauce starts to stick to bottom of pan before fish is cooked, add a couple Tbsp water.)'),

                        SizedBox(height: 10),

                        //====================
                        //   Description 3
                        //====================
                        _buildDescription('3- Meanwhile, heat remaining 1½ tsp oil in another large skillet; set over medium-high heat. Add spinach; cook, stirring constantly, just until spinach is wilted, about 3 minutes.'),


                        SizedBox(height: 10),

                        //====================
                        //   Description 4
                        //====================
                        _buildDescription('4- Divide spinach evenly among 4 plates; top each with 1 fish fillet.'),


                        SizedBox(height: 10),

                        //====================
                        //   Description 5
                        //====================
                        _buildDescription('5- Serving size: 1 fillet and 3/4 c spinach'),

                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                )
              ]))

        ],
      ),
    );
  }


  _buildTitle (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color:_color,fontStyle: FontStyle.italic,fontSize: 20))
      ],
    );
  }

  _buildDescription (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color: _color,fontSize: 16))
      ],
    );
  }
}



class CircleWhite extends CustomPainter {
  double overallPercent;

  CircleWhite(this.overallPercent);

  @override
  void paint(Canvas canvas, Size size) {
    double circleSize = 25.0;
    double angle = math.pi / 180.0 * ((overallPercent * 360 / 100));
    double line = overallPercent * (size.width - circleSize) / 100;
    final paint = Paint()
      ..color = _color
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    final path = Path();
    if (overallPercent < 50) {
      path.addPolygon([
        Offset(0.0, size.height),
        Offset((line * 2), size.height),
      ], false);
    }
    if (overallPercent > 50) {
      path.arcTo(
          Rect.fromLTWH(
              size.width - (circleSize * 2), 0.0, circleSize * 2, size.height),
          math.pi / 2,
          -angle * 2,
          false);
      if (overallPercent < 100) {
        path.addPolygon([
          Offset(overallPercent * (size.width - circleSize) / 100, size.height),
          Offset(size.width - circleSize, size.height),
        ], false);
      }
      if (overallPercent == 100) {
        path.addArc(
            Rect.fromLTWH(size.width - (circleSize * 2), 0.0, circleSize * 2,
                size.height),
            math.pi / 2,
            math.pi * 2);
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}