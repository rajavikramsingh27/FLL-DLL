import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:fil_dil/Constants.dart';
import 'package:fil_dil/Fil_Dil/DerivativesList.dart';


class Provisional extends StatefulWidget {
  @override
  _ProvisionalState createState() => _ProvisionalState();
}

class _ProvisionalState extends State<Provisional> {
  String selectedDate = '';
  var arrDropDownValue = ['Equity','Debt','Both'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MMM dd');
    selectedDate = formatter.format(now);

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height:40,
                width:120,
                child:Container(
                    width:double.infinity,
                    height:66,
                    padding:EdgeInsets.only(left:10),
                    decoration:BoxDecoration(
                        color:appBg1,
                        borderRadius:BorderRadius.only(
                          topRight:Radius.circular(6),
                          bottomRight:Radius.circular(6),
                        )
                    ),
                    child:TextButton(
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedDate,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                                color:Colors.white,
                                fontFamily:kFont,
                                fontSize:14,
                                fontWeight:FontWeight.normal
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color:Colors.white,
                          )
                        ],
                      ),
                      onPressed:() {
                        _selectDate();
                      },
                    )
                )
            ),
            SizedBox(width:20),
            Expanded(child:Container(
                height:40,
                width:140,
                padding:EdgeInsets.only(right:16),
                alignment:Alignment.centerRight,
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Nifty: ',
                          textAlign:TextAlign.center,
                          style:TextStyle(
                              color:Colors.white,
                              fontFamily:kFont,
                              fontSize:14,
                              fontWeight:FontWeight.normal
                          ),
                        ),
                        Text(
                          '112345.56787656 (1.22)',
                          textAlign:TextAlign.center,
                          style:TextStyle(
                              color:textYellow,
                              fontFamily:kFont,
                              fontSize:14,
                              fontWeight:FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '(Cr)',
                      textAlign:TextAlign.center,
                      style:TextStyle(
                          color:Colors.white,
                          fontFamily:kFont,
                          fontSize:14,
                          fontWeight:FontWeight.normal
                      ),
                    ),
                  ],
                )
            ),),
          ],
        ),
        SizedBox(height:10),
        Container(
          color:Colors.black45,
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height-280,
          padding:EdgeInsets.only(left:16,right:16),
          child:Column(
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SizedBox(height:16,),
                  Text(
                    'Cash',
                    textAlign:TextAlign.left,
                    style:TextStyle(
                        fontSize:14,
                        color:Colors.white,
                        fontFamily:kFont,
                        fontWeight:FontWeight.normal
                    ),
                  ),
                  SizedBox(height:16,),
                  Row(
                    children: [
                      Expanded(
                        child:Container(
                          height:111,
                          padding:EdgeInsets.only(left:0,right:0),
                          decoration:BoxDecoration(
                              color:Colors.black45,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child:TextButton(
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dll Cash',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:14,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                                SizedBox(height:10),
                                Text(
                                  '-234.234 (Cr)',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:14,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                              ],
                            ),
                            onPressed:() {
                              strDerivatesTitle = 'Dll Cash Derivates';

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => DerivativesList())
                              );
                            },
                          )
                        ),
                      ),
                      SizedBox(width:22),
                      Expanded(
                        child:Container(
                          height:111,
                          decoration:BoxDecoration(
                              color:Colors.black45,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child:TextButton(
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fll Cash',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:14,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                                SizedBox(height:10),
                                Text(
                                  '-234.234 (Cr)',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:14,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                              ],
                            ),
                            onPressed:() {
                              strDerivatesTitle = 'Fll Cash Derivates';
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => DerivativesList())
                              );
                            },
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:26),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                        '(Dll+Fll)',
                        textAlign:TextAlign.center,
                        style:TextStyle(
                            color:Colors.white,
                            fontFamily:kFont,
                            fontSize:14,
                            fontWeight:FontWeight.normal
                        ),
                      ),
                      SizedBox(width:10),
                      Text(
                        '112.345 (Cr)',
                        textAlign:TextAlign.center,
                        style:TextStyle(
                            color:textYellow,
                            fontFamily:kFont,
                            fontSize:14,
                            fontWeight:FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20),
                  Container(
                    color:Colors.white,
                    height:1,
                    // width: 111,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SizedBox(height:26,),
                  Text(
                    'Derivatives',
                    textAlign:TextAlign.left,
                    style:TextStyle(
                        fontSize:14,
                        color:Colors.white,
                        fontFamily:kFont,
                        fontWeight:FontWeight.normal
                    ),
                  ),
                  SizedBox(height:16,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child:Container(
                          height:80,
                          decoration:BoxDecoration(
                              color:Colors.black45,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child:TextButton(
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fll idx Fut',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                                SizedBox(height:10),
                                Text(
                                  '-23 (Cr)',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                              ],
                            ),
                            onPressed:() {
                              strDerivatesTitle = 'Fll Idx Fut Derivates';

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => DerivativesList())
                              );
                            },
                          )
                        ),
                      ),
                      SizedBox(width:10,),
                      Expanded(
                        child:Container(
                          height:80,
                          decoration:BoxDecoration(
                              color:Colors.black45,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child:TextButton(
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fll idx Opt',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                                SizedBox(height:10),
                                Text(
                                  '1222 (Cr)',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                              ],
                            ),
                            onPressed:() {
                              strDerivatesTitle = 'Fll Idx Opt Derivates';

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => DerivativesList())
                              );
                            },
                          )
                        ),
                      ),
                      SizedBox(width:10,),
                      Expanded(
                        child:Container(
                          height:80,
                          decoration:BoxDecoration(
                              color:Colors.black45,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child:TextButton(
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fll Stk Fut',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                                SizedBox(height:10),
                                Text(
                                  '223 (Cr)',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                              ],
                            ),
                            onPressed:() {
                              strDerivatesTitle = 'Fll Stk Fut Derivates';

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => DerivativesList())
                              );
                            },
                          )
                        ),
                      ),
                      SizedBox(width:10,),
                      Expanded(
                        child:Container(
                          height:80,
                          decoration:BoxDecoration(
                              color:Colors.black45,
                              borderRadius:BorderRadius.circular(10)
                          ),
                          child:TextButton(
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Fll idx Stk',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                                SizedBox(height:10),
                                Text(
                                  '-23 (Cr)',
                                  textAlign:TextAlign.left,
                                  style:TextStyle(
                                      fontSize:13,
                                      color:Colors.white,
                                      fontFamily:kFont,
                                      fontWeight:FontWeight.normal
                                  ),
                                ),
                              ],
                            ),
                            onPressed:() {
                              strDerivatesTitle = 'Fll Idx Stk Derivates';

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => DerivativesList())
                              );
                            },
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:26),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(
                        'Note: ',
                        textAlign:TextAlign.center,
                        style:TextStyle(
                            color:Colors.white,
                            fontFamily:kFont,
                            fontSize:14,
                            fontWeight:FontWeight.normal
                        ),
                      ),
                      SizedBox(width:6),
                      Text(
                        'This data is Provisional',
                        textAlign:TextAlign.center,
                        style:TextStyle(
                            color:Colors.white,
                            fontFamily:kFont,
                            fontSize:14,
                            fontWeight:FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate:DateTime.now(),
        firstDate:DateTime(2020),
        lastDate:DateTime(2030));

    if (picked != null) {
      final DateFormat formatter = DateFormat('MMM dd');
      selectedDate = formatter.format(picked);

      setState(() {

      });
    }
  }

}
