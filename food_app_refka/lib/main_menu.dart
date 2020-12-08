import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;
    Color menuButtonColor = Colors.greenAccent;
    Color avatarColor = Colors.green;
    Color iconColor = Colors.grey[100];
    Color mainButtonColor = Colors.amber;
    Color textColor = Colors.black;

    EdgeInsets bodyContainerPadding = EdgeInsets.symmetric(horizontal: 20.0);

    double listViewWidth = MediaQuery.of(context).size.width;
    double borderRadius = 20.0;
    double listViewVerticalPadding = 20.0;
    double horizontalListViewHeight = 200.0;
    double horizontalListViewWidth = 130.0;
    double horizontalListViewPadding = 15.0;

    return Container(
      color: backgroundColor,
      child: Scaffold(
        body: Container(
          padding: bodyContainerPadding,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Let's grab\nSomething",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ButtonTheme(
                  minWidth: listViewWidth,
                  height: 150.0,
                  child: FlatButton(
                    onPressed: (){},
                    color: mainButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 10.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    fontSize: 10.0
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Top of this day',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: textColor
                              ),
                            ),
                            Text(
                              'Chocolate cake',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: textColor
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 30.0,
                                color: textColor,
                              ),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage(
                            'images/choco_cake.jpg'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: listViewVerticalPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'New Foods',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: textColor
                      ),
                    ),
                    Text(
                      'Show all',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: listViewVerticalPadding,
                ),
                SizedBox(
                  height: 250.0,
                  child: ListView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: horizontalListViewHeight,
                            width: horizontalListViewWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage('images/pancake.jpeg'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          Text(
                            'Pancake',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '\$9',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: horizontalListViewPadding,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: horizontalListViewHeight,
                            width: horizontalListViewWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage('images/sushi.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Text(
                            'Sushi',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '\$5',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: horizontalListViewPadding,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: horizontalListViewHeight,
                            width: horizontalListViewWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage('images/rice_bowl.jpg'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Text(
                            'Rice Bowl',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '\$12',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
