/*Create a currency convertor to convert currencies of 10 countries into each other*/

import 'dart:io';

double? currencyConvertor(int toConvert,int convertTo,double currency,Map <int,List<double>> conversion,Map<int,String> names) {
  double? result = 0;
  for(int i in conversion.keys) {
    if(i == toConvert) {
      stdout.write("$currency ${names[toConvert]} to ${names[convertTo]} : ");
      result = currency * conversion[i]![convertTo-1];
      return result;
    }
  }
  return null;
}
void main() {

const  List<double> one = [1,0.088,0.0134,185.6,3.64,9.52,0.06,1.32,1.17,0.21];
const  List<double> two = [11.37,1,0.14,2104.79,41.29,108.19,0.68,15,13.27,2.4];
const  List<double> three = [82.85,7.29,1,15350,300.75,750,4.98,109.5,96.64,17.52];
const  List<double> four = [0.0054,0.00047,0.000065,1,0.02,0.051,0.0003,0.0071,0.0063,0.0011];
const  List<double> five = [0.27,0.024,0.0033,51.29,1,2.64,0.017,0.37,0.32,0.059];
const  List<double> six = [0.1,0.0092,0.0013,19.43,0.37,1,0.0063,0.14,0.12,0.022];
const  List<double> seven = [16.62,1.46,0.20,3078.17,59.23,158.27,1,21.97,19.4,3.51];
const  List<double> eight = [0.75,0.066,0.0091,139.51,2.69,7.17,0.045,1,0.88,0.16];
const  List<double> nine = [0.86,0.075,0.01,158.14,3.06,8.16,0.051,1.13,1,0.18];
const  List<double> ten = [4.73,0.42,0.057,875.72,16.86,45.01,0.28,6.25,5.52,1];

final Map<int, List<double>> conversion = {
    1 : one,
    2 : two,
    3 : three,
    4 : four,
    5 : five,
    6 : six,
    7 : seven,
    8 : eight,
    9 : nine,
    10 : ten
  };

final Map<int, String> names = {
  1 : "Indian Rupee",
  2 : "Chinese Yuan",
  3 : "United States Dollar",
  4 : "Indonesian Rupee",
  5 : "Pakistani Rupee",
  6 : "Nigerian Naira",
  7 : "Brazilian Real",
  8 : "Bangladeshi Taka",
  9 : "Russian Ruble",
  10 : "Mexican Peso"
};

  stdout.write("Welcome! I can convert the following currencies. Please enter the number in front of the currencies to denote them\n");
  stdout.write("1 Indian Rupee\n"
      "2 Chinese Yuan\n"
      "3 United States Dollar\n"
      "4 Indonesian Rupee\n"
      "5 Pakistani Rupee\n"
      "6 Nigerian Naira\n"
      "7 Brazilian Real\n"
      "8 Bangladeshi Taka\n"
      "9 Russian Ruble\n"
      "10 Mexican Peso\n");

  stdout.write("Which currency do you want do you want to convert?\n");
  int toConvert = int.parse(stdin.readLineSync() ?? " ");
  stdout.write("Which currency do you want to convert to?\n");
  int convertTo = int.parse(stdin.readLineSync()??" ");
  stdout.write("Give the value you want to convert - \n");
  double currency = double.parse(stdin.readLineSync() ?? " ");

  stdout.write(currencyConvertor(toConvert, convertTo, currency,conversion,names));
}
