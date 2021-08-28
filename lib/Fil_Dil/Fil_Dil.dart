import 'package:flutter/material.dart';
import 'package:fil_dil/Constants.dart';
import 'package:fil_dil/Fil_Dil/Sebi.dart';
import 'package:fil_dil/Fil_Dil/Provisional.dart';



class Fil_Dil extends StatefulWidget {
  @override
  _Fil_DilState createState() => _Fil_DilState();
}



class _Fil_DilState extends State<Fil_Dil> {
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
                'Fll Dll',
              style:TextStyle(
                fontFamily:kFont,
                fontSize:20,
                fontWeight:FontWeight.bold
              ),
            ),
            leading:BackButton(),
          ),
          body:Container(
            padding:EdgeInsets.only(bottom:0),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Container(
                  color:appBg1,
                  height:50,
                  child:Row(
                    children: [
                      Expanded(
                          child:Container(
                            width:double.infinity,
                            height:66,
                            padding:EdgeInsets.all(0),
                            decoration:BoxDecoration(
                                border:Border(
                                    bottom:BorderSide(
                                        color:isProvisional ? Colors.white : Colors.transparent,
                                        width:1
                                    )
                                )
                            ),
                            child:TextButton(
                              child:Container(
                                alignment:Alignment.center,
                                child:Text(
                                  'PROVISIONAL',
                                  textAlign:TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white60,
                                      fontFamily:kFont,
                                      fontSize:16,
                                      fontWeight:FontWeight.bold
                                  ),
                                ),
                              ),
                              onPressed:() {
                                isProvisional = true;

                                setState(() {

                                });
                              },
                            ),
                          )
                      ),
                      Expanded(
                          child:Container(
                            width:double.infinity,
                            height:66,
                            padding:EdgeInsets.all(0),
                            decoration:BoxDecoration(
                                border:Border(
                                    bottom:BorderSide(
                                        color:!isProvisional ? Colors.white : Colors.transparent,
                                        width:1
                                    )
                                )
                            ),
                            child:TextButton(
                              child:Container(
                                alignment:Alignment.center,
                                child:Text(
                                  'SEBI',
                                  textAlign:TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white60,
                                      fontFamily:kFont,
                                      fontSize:16,
                                      fontWeight:FontWeight.bold
                                  ),
                                ),
                              ),
                              onPressed:() {
                                isProvisional = false;

                                setState(() {

                                });
                              },
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:16,
                ),
                Container(
                  height:40,
                  child:Row(
                    children: [
                      Expanded(
                          child:Container(
                            width:double.infinity,
                            height:66,
                            padding:EdgeInsets.all(0),
                            decoration:BoxDecoration(
                                color: (daliyMontylyYearly == 0) ? Colors.grey : appBg1,
                                borderRadius:BorderRadius.only(
                                  topRight:Radius.circular(10),
                                  bottomRight:Radius.circular(10),
                                )
                            ),
                            child:TextButton(
                              child:Container(
                                alignment:Alignment.center,
                                child:Text(
                                  'DAILY',
                                  textAlign:TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontSize:14,
                                      fontWeight:FontWeight.bold
                                  ),
                                ),
                              ),
                              onPressed:() {

                                daliyMontylyYearly = 0;

                                setState(() {

                                });
                              },
                            ),
                          )
                      ),
                      SizedBox(width:6,),
                      Expanded(
                          child:Container(
                            width:double.infinity,
                            height:66,
                            padding:EdgeInsets.all(0),
                            decoration:BoxDecoration(
                                color: (daliyMontylyYearly == 1) ? Colors.grey : appBg1,
                                borderRadius:BorderRadius.only(
                                  topRight:Radius.circular(10),
                                  bottomRight:Radius.circular(10),
                                  topLeft:Radius.circular(10),
                                  bottomLeft:Radius.circular(10),
                                )
                            ),
                            child:TextButton(
                              child:Container(
                                alignment:Alignment.center,
                                child:Text(
                                  'MONTHLY',
                                  textAlign:TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontSize:14,
                                      fontWeight:FontWeight.bold
                                  ),
                                ),
                              ),
                              onPressed:() {
                                daliyMontylyYearly = 1;

                                setState(() {

                                });
                              },
                            ),
                          )
                      ),
                      SizedBox(width:6,),
                      Expanded(
                          child:Container(
                            width:double.infinity,
                            height:66,
                            padding:EdgeInsets.all(0),
                            decoration:BoxDecoration(
                                color: (daliyMontylyYearly == 2) ? Colors.grey : appBg1,
                                borderRadius:BorderRadius.only(
                                  topLeft:Radius.circular(10),
                                  bottomLeft:Radius.circular(10),
                                )
                            ),
                            child:TextButton(
                              child:Container(
                                alignment:Alignment.center,
                                child:Text(
                                  'YEARLY',
                                  textAlign:TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontSize:14,
                                      fontWeight:FontWeight.bold
                                  ),
                                ),
                              ),
                              onPressed:() {
                                daliyMontylyYearly = 2;

                                setState(() {

                                });
                              },
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:24,
                ),
                Visibility(
                  visible:!isProvisional,
                    child:Sebi()
                ),
                Visibility(
                  visible:isProvisional,
                  child:Provisional(),
                ),
              ],
            )
          ),
        )
      ],
    );
  }
}
