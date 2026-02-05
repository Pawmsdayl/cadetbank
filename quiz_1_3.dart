bool isBlankOrEmpty(String stringToCheck) {
  if (stringToCheck.trim().isEmpty) {
    return true;
  }
  return false;
}

void main() {
  String str1 = "  ";
  String str2 = "not empty";
  
  print("'$str1' isBlankOrEmpty: " + isBlankOrEmpty(str1).toString());
  print("'$str2' isBlankOrEmpty: " + isBlankOrEmpty(str2).toString());
}