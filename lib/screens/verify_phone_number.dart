import 'package:coiny/constants.dart';
import 'package:flutter/material.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  @override
  _VerifyPhoneNumberScreenState createState() =>
      _VerifyPhoneNumberScreenState();
}

class _VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen> {
  var _numberCodes = ['+1', '+69', '+24'];
  var _currentNumberCode = '+1';

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          'Add Phone Number',
          style: TextStyle(
            fontFamily: 'SF',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: customBackButton,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: verifyPhone,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: _width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify your phone\nnumber',
                      style: TextStyle(fontSize: 24, fontFamily: 'SF'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Increase account security by verifying a\nphone number',
                      style: TextStyle(fontSize: 14, fontFamily: 'SF'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: _width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'UNITED STATES',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SF',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    forwardIcon
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: _height * 0.08,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: borderColor.withOpacity(0.25),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: borderColor.withOpacity(0.25),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        elevation: 0,
                        items: _numberCodes.map((String dropDownNumberCodes) {
                          return DropdownMenuItem<String>(
                            value: dropDownNumberCodes,
                            child: Text(
                              '$dropDownNumberCodes',
                              style: TextStyle(
                                fontFamily: 'SF',
                                fontSize: 15,
                                color: bottomBorderColor,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this._currentNumberCode = newValueSelected;
                          });
                        },
                        value: _currentNumberCode,
                      ),
                    ),
                    VerticalDivider(
                      color: borderColor.withOpacity(0.25),
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Container(
                      width: _width * 0.62,
                      height: _height * 0.1,
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(
                            fontFamily: 'SF',
                            fontSize: 13,
                            color: bottomBorderColor,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Your phone number"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
