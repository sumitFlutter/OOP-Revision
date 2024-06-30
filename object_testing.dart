class APICalled{
  String? name,from;
  int? no;
  APICalled({this.no, this.name, this.from});
}
void objectTesting()
{
  List<APICalled> apiCalled=[APICalled(name: "s",from: "s",no: 1)];
  bool firstTest=apiCalled[0]==APICalled(name: "s",from: "s",no: 1);
  bool secondTest=(apiCalled[0].no==1&&apiCalled[0].from=="s"&&apiCalled[0].name=="s");
  print("${apiCalled[0].name} is compare with s");
  print("Complete Object comparison test result is $firstTest");
  print("part of object comparison test result is $secondTest");
  print("Why? ");
  print("Because of Hashcodes");
  print("Example of HashCode of an object:\n");
  APICalled object1=APICalled(name: "Sumit",from: "Vidit sir",no: 111);
  APICalled object2=APICalled(name: "Sumit",from: "Vidit sir",no: 111);
  print("I created 2 same detailed object of APICalled class");
  print("object1 ${object1.name}   ${object1.from}   ${object1.no}");
  print("object2 ${object2.name}   ${object2.from}   ${object2.no}");
  print("Let's see their HashCodes");
  print("object1's HashCode => ${object1.hashCode}");
  print("object2's HashCode => ${object2.hashCode}");
  print("previous List of APICalled index 0's HashCode => ${apiCalled[0].hashCode}\n");
  print("Hence proved that Hashcode of each and every object are different.");
}
void main()
{
  objectTesting();
}