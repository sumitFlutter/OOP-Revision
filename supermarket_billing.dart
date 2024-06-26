import 'dart:io';
import 'dart:math';

class Sign_Up_And_Sign_In {
  String? user_name;

  String? password;

  String? contact;

  int? login_Check;

  void createAcc() {
    print("\t                 CREATE YOUR ACCOUNT:\n");

    print("CREATE YOUR NEW USERNAME (MINIMUM 6 CHARACTERS):");

    user_name = stdin.readLineSync()!;

    print("\n");

    print("ENTER YOUR CONTACT NUMBER (10 Digits):");

    contact = stdin.readLineSync()!;

    print("\n");

    print("CREATE YOUR NEW PASSWORD(MINIMUM 6 CHARACTERS):");

    password = stdin.readLineSync()!;
  }

  String get get_username => user_name!;

  String get get_contact => contact!;

  String get get_password => password!;

  dynamic login(String con, String pass, String user) {
    print("\t                 LOGIN TO YOUR ACCOUNT:\n");

    print("ENTER YOUR USER NAME :");

    user_name = stdin.readLineSync()!;

    print("\n");

    print("ENTER YOUR CONTACT NUMBER :");

    contact = stdin.readLineSync()!;

    print("\n");

    print("ENTER YOUR PASSWORD :");

    password = stdin.readLineSync()!;

    if (con == contact && user_name == user && password == pass) {
      login_Check = 1;

      return login_Check!;
    } else {
      login_Check = 0;

      return login_Check!;
    }
  }
}

class Products {
  int? c, uid;

  List<Map> plist = [
    {"pname": "iphone12pro", "pid": 112, "pprice": 120000},
    {"pname": "iphone11pro", "pid": 111, "pprice": 110000},
    {"pname": "iphone15pro", "pid": 115, "pprice": 150000},
    {"pname": "iphone10pro", "pid": 110, "pprice": 100000},
    {"pname": "iphone13pro", "pid": 113, "pprice": 130000},
    {"pname": "iphone14pro", "pid": 114, "pprice": 140000},
    {"pname": "iphone12", "pid": 12, "pprice": 62000},
    {"pname": "iphone11", "pid": 11, "pprice": 55000},
    {"pname": "iphone10", "pid": 10, "pprice": 50000},
    {"pname": "iphone15", "pid": 15, "pprice": 100000}
  ];

  dynamic userid(int? c_id) {
    print("VERIFY YOURSELF USING CUSTOMER ID?");

    uid = int.parse(stdin.readLineSync()!);

    if (c_id == uid!) {
      c = 1;

      return c;
    }
  }
}

class Shopping extends Products{
  List<Map> pcart = [];

  String? buy;

  int? pida;
  bool isRight=false;

  int ii = 0;

  dynamic total = 0;

  void cart() {
    do {
      print("what would you buy?");

      print("enter its PID ");

      pida = int.parse(stdin.readLineSync()!);
        for (int ioS = 0; ioS < super.plist.length; ioS++) {
          if (pida == super.plist[ioS]["pid"]) {
            pcart.add(super.plist[ioS]);
            isRight=true;
            break;
          }
          else{
            isRight=false;
          }
        }
        isRight?print("\t\t\tAdded to cart SuccessFully"):print("\t\t\tYou entered Wrong number");
      print("would you countinue your buying process? (yes or no)");

      buy = stdin.readLineSync()!;
      isRight=false;
    } while (buy != "no");
  }

  void bill() {
    for (ii = 0; ii < pcart.length; ii++) {
      print("price is=${pcart[ii]["pprice"]}");

      total = pcart[ii]["pprice"] + total;
    }

    print("total price is  $total");
  }
}
class Customer{
  String user="",con="";
  List <Map>pList=[];
  num total=0;
  int uid=0;

  Customer({required this.user, required this.con, required this.uid,required this.pList,required this.total});
}
void superMarketBillingSystem() {
  String? next_cust,nextBill;
  List<Customer> customerData=[];
  do {
    int i = 0;
    int random=0;
    List<int> cust_id=[];
     cust_id =List.generate(10000, (index) {
      return index;
    },);

    Random ra=Random();
    random=ra.nextInt(cust_id.length);
    final int? c_id;

    Sign_Up_And_Sign_In s1 = Sign_Up_And_Sign_In();

    s1.createAcc();

    String con = s1.get_contact;

    String pass = s1.get_password;

    String user = s1.get_username;

    s1.login(con, pass, user);

    int lc = s1.login_Check!;

    if (lc == 1) {
      print("\t\t GO AHEAD \t\t");

      c_id = cust_id[random];

      print("YOUR CUSTOMER ID IS                      $c_id");

      print("\n\n\t\t\t\tOUR PRODUCTS:-         \t\t");

      Products p = Products();

      p.userid(c_id);

      if (p.c == 1) {

        for (i = 0; i < p.plist.length; i++) {
          print("${p.plist[i]}");
        }

        Shopping s2 = Shopping();

        s2
          ..cart()
          ..bill();

        int total_bill = s2.total;

        if (total_bill > 1500) {
          total_bill = total_bill - 150;

          if (total_bill > 3500) {
            total_bill = total_bill - 250;

            if (total_bill > 6500) {
              total_bill = total_bill - 750;

              total_bill = (total_bill) - (total_bill * 30 ~/ 100);

              print(
                  "\t\t \t\t\t YOUR NET BILL AFTER DISCOUNT IS ${total_bill}");
              Customer customer=Customer(user: user, con: con, uid: c_id, pList: s2.pcart, total: total_bill);
              customerData.add(customer);
            }
          }
        }
      } else {
        print("\t\t TRY AGAIN \t\t");
      }
    } else {
      print("\t\t TRY AGAIN \t\t");

      print("\t\t TRY TO RELOAD APPLICATION \t\t");
    }

    print("NEXT CUSTOMER? (yes OR no)");

    next_cust = stdin.readLineSync()!;
  } while (next_cust != "no");
  print("\t\t\tBill Conforming System\n\n\n");
  do{
    bool isRight=false;
    int userIDB;
    String userName;
    Customer? cust;
    print("\t\t Enter Your UserName for your Bill's details");
    userName=stdin.readLineSync()!;
    print("\t\t Also Enter Your UserID for your Bill's details");
    userIDB=int.parse(stdin.readLineSync()!);
    for(int z=0;z<customerData.length;z++){
      if(userIDB==customerData[z].uid&&userName==customerData[z].user)
        {
          cust=customerData[z];
          isRight=true;
          break;
        }
      else{
        isRight=false;
      }
    }
    if(isRight)
      {
        print("Your Billing Details");
        print("Your UserName is ${cust!.user}");
        print("Your Contact number is ${cust!.con}");
        print("You Bought These items:");
        for(int buy=0;buy<cust!.pList.length;buy++)
          {
            print("${cust.pList[buy]["pname"]}  it's Price: ${cust.pList[buy]["pprice"]}");
          }
        print("\tYour Total Price with Discount is : ${cust.total}");
      }
    else{
      print("\t\tYou Entered Wrong UserID or Wrong UserName");
    }
    print("NEXT CUSTOMER? (yes OR no)");

    nextBill = stdin.readLineSync()!;
  }while(nextBill != "no");
}
void main()
{
  superMarketBillingSystem();
}
/*
old code:
switch (pida!) {
        case 112:
          pcart.add({"pname": "iphone12pro", "pid": 112, "pprice": 120000});

          break;

        case 111:
          pcart.add({"pname": "iphone11pro", "pid": 111, "pprice": 110000});

          break;

        case 115:
          pcart.add({"pname": "iphone15pro", "pid": 115, "pprice": 150000});

          break;

        case 110:
          pcart.add({"pname": "iphone10pro", "pid": 110, "pprice": 100000});

          break;

        case 113:
          pcart.add({"pname": "iphone13pro", "pid": 113, "pprice": 130000});

          break;

        case 114:
          pcart.add({"pname": "iphone14pro", "pid": 114, "pprice": 140000});

          break;

        case 12:
          pcart.add({"pname": "iphone12", "pid": 12, "pprice": 62000});

          break;

        case 11:
          pcart.add({"pname": "iphone11", "pid": 11, "pprice": 55000});

          break;

        case 10:
          pcart.add({"pname": "iphone10", "pid": 10, "pprice": 50000});

          break;

        case 15:
          pcart.add({"pname": "iphone15", "pid": 15, "pprice": 100000});

          break;

        default:
          print("TRY AGAIN ");
      }








New Code
for (int ioS = 0; ioS < super.plist.length; ioS++) {
          if (pida == super.plist[ioS]["pid"]) {
            pcart.add(super.plist[ioS]);
            isRight=true;
            break;
          }
          else{
            isRight=false;
          }
        }
        isRight?print("\t\t\tAdded to cart SuccessFully"):print("\t\t\tYou entered Wrong number");

 */