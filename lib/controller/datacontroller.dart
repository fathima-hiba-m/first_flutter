import 'package:message/model/datamodel.dart';
import 'package:message/service/dataservice.dart';
import 'package:get/get.dart';




class DataController extends GetxController {
  // 1 create a instance variable
  var dataModel = DataModel().obs;
  getData() async{
    // 2 create a instance of getservice
    try{
      var data = await Dataservices().getService();
      // 3 check condition
      if(data!= null){
        dataModel.value = data;

      }
    }
    catch(e){
      Get.snackbar("title","$e");
    }

  }
  // 4 step call function
  @override
  void onInit(){
    getData();
    super.onInit();
  }

}
