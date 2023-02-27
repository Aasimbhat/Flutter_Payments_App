import 'package:get/get.dart';
import 'package:payment_app/services/data_services.dart';

class DataController extends GetxController{
  var list=[].obs;//list becomes observable makes it change
  final service =new DataServices();
  var _loading=false.obs;

  get loading{
  return _loading.value;
  }
  @override
  void onInit(){
    _loadData();
    super.onInit();
  }

   get newList=>     list.where((e) => e["status"]).map((e) => e).toList();

   

  _loadData()async{
    _loading.value=false;
  try{
 var info=service.getUsers();
   list.addAll(await info);
  }catch(e){
   print("Error Occcured");
   print(e);
  }finally{
_loading.value=true;
  }
  
  }
  }