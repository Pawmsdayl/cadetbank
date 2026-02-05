void displayUserInfo(String name, int age, String address) {
  print("Name: $name");
  print("Age: $age");
  print("Address $address");
}

void main() {
  String name = "Dale";
  int age = 23;
  String address = "here";
  
  displayUserInfo(name, age, address);
}