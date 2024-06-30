class APICalled{
  String? name,from;
  int? no;
  APICalled({this.no, this.name, this.from});
}
void objectTesting()
{
  List<APICalled> apiCalled=[APICalled(name: "s",from: "s",no: 1)];
  bool firstTest=apiCalled[0]==APICalled(name: "s",from: "s",no: 1);
  print("${apiCalled[0].name} is compare with s");
  bool secondTest=(apiCalled[0].no==1&&apiCalled[0].from=="s"&&apiCalled[0].name=="s");
  print("Complete Object comparison test result is $firstTest");
  print("part of object comparison test result is $secondTest");
}
void main()
{
  objectTesting();
}