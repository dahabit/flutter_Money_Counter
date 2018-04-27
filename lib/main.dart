import 'package:flutter/material.dart';
import './ui/my_bank_status.dart';

//The Entry point for my App
void main(){
  runApp( //every Flutter App need this function to start
    new MaterialApp( //MaterialApp Widget allow us to use defualt Material layout
      home: new MyBankStatus(), //call My MyBankStatus class from  my_bank_status.dart
    )
  );
}
