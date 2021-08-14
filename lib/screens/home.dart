import 'package:bmi/constants/app_constants.dart';
import 'package:bmi/widgets/left_bar.dart';
import 'package:bmi/widgets/right_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightcontroller=TextEditingController();
  TextEditingController _weightcontroller=TextEditingController();
  double _bmiresult=0;
  String _textresult="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',
        style: TextStyle(color:accentHexColor,fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightcontroller,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height(m)",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      )
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightcontroller,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight(kg)",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8),
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                double _h=double.parse(_heightcontroller.text);
                double _w=double.parse(_weightcontroller.text);
                setState(() {
                  _bmiresult=_w/(_h*_h);
                  if(_bmiresult>25){
                    _textresult='You are over weight';
                  }else if(_bmiresult>=18.5&& _bmiresult<=25){
                    _textresult='You have normal weight';
                  }else{
                    _textresult='You are under weight';
                  }
                });
              },
              child: Container(
                child: Text('Calculate',style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
                color: accentHexColor),),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: Text(_bmiresult.toStringAsFixed(2),style: TextStyle(
                fontSize: 90,color: accentHexColor,
              ),),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: _textresult.isNotEmpty,
              child: Container(
                child: Text(_textresult,style: TextStyle(
                  fontSize:32,fontWeight: FontWeight.w400,color: accentHexColor,
                ),),
              ),

            ),
            SizedBox(height: 10,),
            Leftbar(barWidth: 40,),
            SizedBox(height: 20,),
            Leftbar(barWidth:40,),
            SizedBox(height: 20,),
            Leftbar(barWidth:40,),
            SizedBox(height: 20,),
            Rightbar(barWidth: 70),
            SizedBox(height: 20,),
            Rightbar(barWidth: 70,),
            SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}
