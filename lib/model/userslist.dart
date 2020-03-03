

 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virtualorder_app/model/local.dart';

class LocalList {

  static List<DocumentSnapshot> localListSnapshot;
  static List<DocumentSnapshot> documentIdList;
  static List<Local> usersList = new List() ;
  static List<Local> localList = new List() ;



  static void initLocalsList (List<DocumentSnapshot> list){
    localListSnapshot = list;
  }
  static List<Local> getLocalList(){

    return localList;
  }

  static void generateLocalList(){
    //ocalList.asMap().forEach((data) {
        
    localListSnapshot.forEach((doc) { 
      print("name *********** "+doc["name"]);
        var local = new Local();
        local.name = doc["name"];
        localList.add(local);
      }
    );

  }



  static void initUsersList (List<DocumentSnapshot> docIdList){
    documentIdList = docIdList;
  }
  static List<DocumentSnapshot> getDocIdList(){
    return documentIdList;
  }
  static void generateDocIdList(){

    documentIdList.asMap().forEach((index, value) {
          String aux = value.documentID;
          print ('value : $aux');
          print ('         '); 
          //List <Local> usersList = new List();
          var local = new Local();
          local.name = value.documentID;
          usersList.add(local);
          
        });
    
  }

  static List<Local> getDocumentIdList(){

    return usersList;
  }
}
