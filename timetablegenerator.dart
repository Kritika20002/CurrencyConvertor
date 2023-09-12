/*Create a Time Table Generator */

import "dart:io";

void displayTimeTable(Map<String,List<String>> timeTable) {
  stdout.write("--------------------------------\n");
  int maxLength = 0;
  for(var i in timeTable.keys) {
    if (i.length > maxLength) {
      maxLength == i.length;
    }
  }
  for(var i in timeTable.keys) {
    stdout.write(i);
    for(int m = 0; m<maxLength; m++){
      stdout.write(" ");
    }
    stdout.write(" | ");
    for(int j = 0; j<timeTable[i]!.length; j++) {
      if(timeTable[i]![j] == "n") {
        stdout.write(" | ");
      }
      else {
        stdout.write(timeTable[i]?[j]);
        stdout.write(" | ");
      }
    }
    stdout.write("\n--------------------------------\n");
  }
}
void main() {
  stdout.write("Welcome to Time Table Generator! \n Please enter the days and your particular plan for them and I'll generate the ime table for you. \n Write PRINT to get it generated.");
  //List<List<String>> matrix =[[]];
  Map<String, List<String>> timeTable ={
    "MONDAY" : ["n","n","n","n","n","n","n"],
    "TUESDAY" : ["n","n","n","n","n","n","n"],
    "WEDNESDAY" : ["n","n","n","n","n","n","n"],
    "THURSDAY" : ["n","n","n","n","n","n","n"],
    "FRIDAY" : ["n","n","n","n","n","n","n"],
    "SATURDAY" : ["n","n","n","n","n","n","n"],
    "SUNDAY" : ["n","n","n","n","n","n","n"]
  };
  List<String> days=[];
  while(true) {
    List<String> taskList =[];
    stdout.write("Please enter the day- ");
    String day = stdin.readLineSync()!.toUpperCase();
    days.add(day);
    //stdout.write(days);
    int count = 0;
    for(int i = 0; i<days.length; i++) {
      if(days[i] == day) {
        count++;
      }
      if(count>1){
        stdout.write("Please Enter a day for which you haven't assigned task yet\n");
        day = stdin.readLineSync()!.toUpperCase();
      }
    }

    if(day =="PRINT") {
      stdout.write("Generating time table...\n");
      displayTimeTable(timeTable);
      break;
    }
    stdout.write("Please enter the number of tasks you want to insert- ");
    try {
      int number = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < number; i++) {
        stdout.write("Enter Task ${i + 1} \n");
        String task = stdin.readLineSync()!;
        taskList.add(task);
      }
    }
    catch (number){
      stdout.write("Bad input, please input an integer value! Terminating Program...");
      break;
    }
    timeTable[day] = taskList;
  }

}