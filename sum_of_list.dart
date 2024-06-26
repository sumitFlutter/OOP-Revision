import 'dart:io';

class SumOfList{
  int sum=0,i=0;
  List<int> getNumbers()
  {
    bool addMore=false;
    List<int> numbers=[0];
    int number=0;
    do{
      try{
        print("Enter Value For Sum:(in only numbers not decimal)");
        number=int.parse(stdin.readLineSync()!);
        numbers.add(number);
        print("do you wanna add more ? (yes or no)\n(please enter your answer in lowercase)");
        String add=stdin.readLineSync()!;
        if(add=="yes")
        {
          addMore=true;
        }
        else{
          addMore=false;
        }
      }catch(e)
      {
        numbers.clear();
        print("Please enter a correct number(not alphabet,decimal,special symbol)");
        addMore=true;
      }

    }while(addMore==true);
    return numbers;
  }
  void sumOfNumbers({required List<int> listForSum})
  {
    for(i=0;i<listForSum.length;i++)
      {
        sum=sum+listForSum[i];
      }
    print("Sum of the list is :  $sum");
  }
}
void sum()
{
  SumOfList sumOfList=SumOfList();
  List <int> listForSum=[];
  listForSum=sumOfList.getNumbers();
  sumOfList.sumOfNumbers(listForSum: listForSum);
}
void main()
{
  sum();
}