class User{
  String? id;
  String? fullName;
  int? age;
  String? email;
  String?bio;
  User({this.id,this.email,this.age,this.fullName, required String bio});
 User.fromFiresotre(Map<String,dynamic>?data){
id = data?['id'];
fullName= data?['fullname'];
age = data?['age'];
email= data?['email'];
bio = data?['bio'];


 }
 Map<String,dynamic> toFiresotre(){
return{
  "id":id,
  "fullname":fullName,
  "age":age,
  "email":email,
  "bio":bio

};


 }
}