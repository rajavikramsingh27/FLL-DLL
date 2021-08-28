import 'package:flutter/material.dart';
import 'package:fil_dil/Constants.dart';


var strDerivatesTitle = '';

class DerivativesList extends StatefulWidget {
  @override
  _DerivativesListState createState() => _DerivativesListState();
}

class _DerivativesListState extends State<DerivativesList> {
  bool isProvisional = true;

  int daliyMontylyYearly = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              gradient:LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    appBg,
                    appBg1,
                  ]
              ),
            )
        ),
        Scaffold(
          backgroundColor:Colors.transparent,
          appBar:AppBar(
            backgroundColor:appBg2,
            elevation:0,
            title:Text(
              strDerivatesTitle,
              style:TextStyle(
                  fontFamily:kFont,
                  fontSize:20,
                  fontWeight:FontWeight.bold
              ),
            ),
            leading:BackButton(),
          ),
          body:Column(
            children: [
              Container(
                height:44,
                color:Colors.white,
                padding:EdgeInsets.only(left:16,right:16),
                child:Row(
                  children: [
                    Expanded(child:Text(
                      'Date',
                      textAlign:TextAlign.left,
                      style:TextStyle(
                          color:Colors.black,
                          fontFamily:kFont,
                          fontSize:14,
                          fontWeight:FontWeight.bold
                      ),
                    )),
                    Expanded(child:Text(
                      'Net:Buy/Sell(in Crores)',
                      textAlign:TextAlign.center,
                      style:TextStyle(
                          color:Colors.black,
                          fontFamily:kFont,
                          fontSize:14,
                          fontWeight:FontWeight.bold
                      ),
                    )),
                    Expanded(child:Text(
                      'Nifty NetChg',
                      textAlign:TextAlign.right,
                      style:TextStyle(
                          color:Colors.black,
                          fontFamily:kFont,
                          fontSize:14,
                          fontWeight:FontWeight.bold
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                color:Colors.black54,
                height:MediaQuery.of(context).size.height-143,
                child:ListView.builder(
                    padding:EdgeInsets.only(bottom:30),
                    scrollDirection:Axis.vertical,
                    itemCount:21,
                    itemBuilder:(BuildContext context, int index) {
                      return GestureDetector(
                        child:Container(
                            padding:EdgeInsets.only(left:16,right:16),
                            height:50,
                            decoration:BoxDecoration(
                                border:Border(
                                    bottom:BorderSide(
                                        color:Colors.white,
                                        width:1
                                    )
                                )
                            ),
                            child:Row(
                              children: [
                                Expanded(child:Text(
                                  'Mar 22',
                                  style:TextStyle(
                                      fontFamily:kFont,
                                      fontSize:14,
                                      color:Colors.white
                                  ),
                                ),),
                                Expanded(child:Text(
                                  '222',
                                  textAlign:TextAlign.center,
                                  style:TextStyle(
                                      fontFamily:kFont,
                                      fontSize:14,
                                      color:Colors.white
                                  ),
                                ),),
                                Expanded(child:Text(
                                  '7.70',
                                  textAlign:TextAlign.right,
                                  style:TextStyle(
                                      fontFamily:kFont,
                                      fontSize:14,
                                      color:Colors.white
                                  ),
                                ),),
                              ],
                            )
                        ),
                        onTap:() {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventDetails()));
                        },
                      );
                    }
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}
