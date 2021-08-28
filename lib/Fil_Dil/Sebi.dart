import 'package:flutter/material.dart';
import 'package:fil_dil/Constants.dart';


class Sebi extends StatefulWidget {
  @override
  _SebiState createState() => _SebiState();
}

class _SebiState extends State<Sebi> {
  String _dropDownValue;
  var arrDropDownValue = ['Equity','Debt','Both'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _dropDownValue = arrDropDownValue[0];
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Container(
            height:40,
            width:130,
            child:Container(
                width:double.infinity,
                height:66,
                padding:EdgeInsets.only(left:16),
                decoration:BoxDecoration(
                    color:appBg1,
                    borderRadius:BorderRadius.only(
                      topRight:Radius.circular(6),
                      bottomRight:Radius.circular(6),
                    )
                ),
                child:
                DropdownButton(
                  hint:_dropDownValue == null
                      ? Text(
                    'Drop Down',
                    textAlign:TextAlign.center,
                    style:TextStyle(
                        color:Colors.white,
                        fontFamily:kFont,
                        fontSize:14,
                        fontWeight:FontWeight.normal
                    ),
                  )
                      : Text(
                    _dropDownValue,
                    textAlign:TextAlign.center,
                    style:TextStyle(
                        color:Colors.white,
                        fontFamily:kFont,
                        fontSize:14,
                        fontWeight:FontWeight.normal
                    ),
                  ),
                  underline:Container(),
                  isExpanded:true,
                  iconSize:30.0,
                  iconEnabledColor:Colors.white,
                  style:TextStyle(
                      color:Colors.black,
                      fontFamily:kFont,
                      fontSize:14,
                      fontWeight:FontWeight.normal
                  ),
                  items:arrDropDownValue.map((val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                  ).toList(),
                  onChanged: (val) {
                    setState(() {
                      _dropDownValue = val;
                    },
                    );
                  },
                )

              // TextButton(
              //   child:Container(
              //     alignment:Alignment.center,
              //     child:Text(
              //       'EQUITY',
              //       textAlign:TextAlign.center,
              //       style:TextStyle(
              //           color:Colors.white,
              //           fontFamily:kFont,
              //           fontSize:14,
              //           fontWeight:FontWeight.bold
              //       ),
              //     ),
              //   ),
              //   onPressed:() {
              //
              //   },
              // ),
            )
        ),
        SizedBox(height:6,),
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
          height:MediaQuery.of(context).size.height-319,
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
    );
  }
}
