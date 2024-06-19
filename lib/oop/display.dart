class Mother{
  void display()
  {
    print("Hi I am a Mother");
  }
}
class Daughter extends Mother{
  void display()
  {
    super.display();
    print("Hi I am a Daughter");
  }
}
void displayProgram()
{
  Daughter daughter= Daughter();
  daughter.display();
}
void main()
{
  displayProgram();
}
