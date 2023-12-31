class Product{
  String? id;
  String? name;
  double? price;
  String? category;
  int? quantity;
  bool? hasEvent;
  bool? hasFavorite;
  String? imageUrl;

  void getJson(dynamic json){
    id = json['productId'];
    name = json['name'];
    price = json['price'];
    category = json['category'];
    quantity = json['quantity'];
    hasEvent = json['hasEvent'];
    hasFavorite = json['hasFavorite'];
    imageUrl = json['image_Url'];
  }
}

class CVS{
  String? id;
  String? name;
  String? address;
  String? pNumber;
  double? locX;
  double? locY;
  String? imageUrl;
  int? revenue;
  List<Product> products = <Product>[];
  List<Payment> payents = <Payment>[];
  Map<String, List<Product>> productForCategory = <String, List<Product>>{};
  void getJson(var json){
    id = json['id'];
    name = json['name'];
    address = json['address'];
    pNumber = json['phonenumber'];
    locX = json['Location_X'];
    locY = json['Location_Y'];
  }
}

class Owner{
  String? id;
  String? pw;
  String? oId;
  List<CVS> cvss = <CVS>[];
  List<Porder> porders = <Porder>[];
  void getJson(dynamic json){
    id = json['id'];
    pw = json['password'];
    oId = json['Owner_Id'];
  }
}

class Client{
  String? cId;
  String? id;
  String? pw;
  double? locX;
  double? locY;
  List<Favorite> favorites = <Favorite>[];
  void getJson(var json){
    cId = json['clientId'];
    id = json['id'];
    pw = json['password'];
    locX = json['Location_X'];
    locY = json['Location_Y'];
  }
}

class Favorite{
  String? cvsId;
  String? cvsName;
  String? pName;
  String? pCategory;
  String? pId;
  int? pPrice;
  int? quantity;
  String? imageUrl;
  String? arrivalTime;
  void getJson(var json){
    cvsId = json['StoreId'];
    cvsName = json['StoreName'];
    pName = json['productName'];
    pCategory = json['Category'];
    pPrice = json['price'];
  }
}

class Porder{
  String? id;
  int? quantity;
  String? arrival;
  String? arrivalState;
  String? pName;
  String? pId;
  int? pPrice;
  String? category;
  String? imageUrl;
  void getJson(dynamic json){
    id = json['PorderId'];
    quantity = json['Quantity'];
    arrival = json['arrival'];
    arrivalState = json['arrivalState'];
  }
}

class Payment{
  String? id;
  int? quantity;
  String? pId;
  String? pName;
  void getJson(var json){
    id = json['PaymentId'];
    quantity = json['quantity'];
    pId = json['ProductId'];
    pName = json['ProductName'];
  }
}

class Event{
  String? id;
  String? name;
  String? policy;
  String? estart;
  String? eend;
  String? imageUrl;
  List<Product> products = <Product>[];
  void getJson(var json){
    id = json['EventId'];
    name = json['EvenetName'];
    policy = json['policy'];
    estart = json['estart'];
    eend = json['eend'];
  }
}