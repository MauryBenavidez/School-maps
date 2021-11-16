class UserModel {
//Atributos
  String? uid;
  String? email;
  String? firstName;
  String? secondName;


 UserModel({this.uid, this.email, this.firstName, this.secondName});

 factory UserModel.fromMap(map)
 {

   return UserModel(//mapeo de atributos
     uid: map['uid'],
     email: map['email'],
     firstName: map['firstName'],
     secondName: map['secondName'],
   );
 }    
 //guarde los valores como string
 Map<String, dynamic> toMap(){
   return{
     'uid':uid,
     'email':email,
     'firstName':firstName,
     'secondName':secondName,
   };
 }
}