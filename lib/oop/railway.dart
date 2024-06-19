import 'dart:io';

class Train{
  int? no;
  String? name,source,des,time;
  Train({required this.time,required this.name,required this.des,required this.no,required this.source});
}
void trainProgram()
{
  List<Train> allDetails=[];
  int? i,search;
  print("Enter Train Details:");
  do{
    int? no;
    String? name,source,des,time;
    print("Enter Train Name:");
    name=stdin.readLineSync();
    print("Enter Train number:");
    no=int.parse(stdin.readLineSync()!);
    print("Enter Train Source:");
    source=stdin.readLineSync();
    print("Enter Train Destination:");
    des=stdin.readLineSync();
    print("Enter Train Time:");
    time=stdin.readLineSync();
    allDetails.add(Train(time: time, name: name, des: des, no: no, source: source));
    print("Do You Have More Details?");
    print("Press 1 for add 1 more details");
    print("Press 0 for Search Train by its number");
    i=int.parse(stdin.readLineSync()!);
  }
  while(i!=0);
  do{
    int? inputNumber;
    print("Enter Train Number For Search:");
    inputNumber=int.parse(stdin.readLineSync()!);
    for(var x in allDetails)
      {
        if(x.no==inputNumber)
          {
            print("Train name is : ${x.name}");
            print("Train time is : ${x.time}");
            print("Train number is : ${x.no}");
            print("Train source is : ${x.source}");
            print("Train destination is : ${x.des}");
          }
      }
    print("Do You Wanna Search more?");
    print("If Yes Then Press 1");
    print("If No Then Press 0");
    search=int.parse(stdin.readLineSync()!);
  }
  while(search!=0);
}
void main()
{
  trainProgram();
}
