import 'package:flutter/material.dart';

class CartMenu extends StatefulWidget {
  @override
  _CartMenuState createState() => _CartMenuState();
}

class _CartMenuState extends State<CartMenu> {
  int selectedIndex = 1;

  onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color text1Color = Colors.black;
    Color text2Color = Colors.grey[700];
    Color text3Color = Colors.grey;
    Color text4Color = Colors.green[300];
    Color containerColor = Colors.amber;
    Color backgroundColor = Colors.white;
    Color avatarColor = Colors.green;
    Color iconColor = Colors.grey[100];
    Color containerColor2 = Colors.grey[200];
    Color menuButtonColor = Colors.greenAccent;

    EdgeInsets bodyContainerPadding = EdgeInsets.symmetric(horizontal: 20.0);

    double listviewWidth = MediaQuery.of(context).size.width;
    double borderRadius = 30.0;
    double boderRadius2 = 15.0;
    double listViewVerticalPadding = 20.0;

    return Container(
      color: backgroundColor,
      child: Scaffold(
        body: Container(
          padding: bodyContainerPadding,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Your Order',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: listViewVerticalPadding,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: listviewWidth,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: containerColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(boderRadius2),
                        color: Colors.white
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '1x',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: text2Color
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Pancake',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: text1Color
                          ),
                        ),
                        Text(
                          'Pan Restaurant',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: text2Color
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: listViewVerticalPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: text2Color
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '\$9',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: text1Color,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: listViewVerticalPadding,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: listviewWidth,
                height: 200.0,
                decoration: BoxDecoration(
                  color: containerColor2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius)
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 40.0,
                          color: text2Color,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Jl. Ahmad Yani no. 20',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: text4Color,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'Place of delivery',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: text2Color,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 40.0,
                          color: text2Color,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '20-30 min',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: text4Color,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'Delivery time',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: text2Color,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[350],
                width: listviewWidth,
                height: 1.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: listviewWidth,
                height: 100.0,
                decoration: BoxDecoration(
                  color: containerColor2,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius),
                    bottomRight: Radius.circular(borderRadius)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          size: 40.0,
                          color: text2Color,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Robby',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: text2Color
                              ),
                            ),
                            Text(
                              'Food Supplier',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: text3Color
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    ButtonTheme(
                      height: 55.0,
                      minWidth: 55.0,
                      child: FlatButton(
                        onPressed: (){},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                        ),
                        color: Colors.white,
                        child: Icon(
                          Icons.arrow_forward,
                          color: text1Color,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: listViewVerticalPadding,
              ),
              ButtonTheme(
                minWidth: listviewWidth,
                height: 50.0,
                child: FlatButton(
                  color: containerColor,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(boderRadius2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Confirm Order',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: text1Color,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Container(
                        height: 35.0,
                        width: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                        ),
                        child: Icon(
                          Icons.account_balance_wallet,
                          color: text1Color,
                        ),
                      )
                    ],
                  )
                ),
              ),
              SizedBox(
                height: listViewVerticalPadding,
              )
            ],
          ),
        ),
      ),
    );
  }
}
