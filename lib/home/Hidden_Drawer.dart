import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:smallproduct/core/config/Color.dart';
import 'package:smallproduct/home/screen/home.dart';
import 'package:get/get.dart';
class Hidden_Drawer extends StatefulWidget {
  const Hidden_Drawer({Key? key}) : super(key: key);

  @override
  State<Hidden_Drawer> createState() => _Hidden_DrawerState();
}

class _Hidden_DrawerState extends State<Hidden_Drawer> {
  List<ScreenHiddenDrawer> pages=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages=[
      ScreenHiddenDrawer(ItemHiddenMenu(name: 'Profilo', baseStyle:  TextStyle(color: Colors.white), selectedStyle: TextStyle(color: Colors.white)), home()),
      ScreenHiddenDrawer(ItemHiddenMenu(name: 'Orders', baseStyle:  TextStyle(color: Colors.white), selectedStyle: TextStyle(color: Colors.white)), home()),
      ScreenHiddenDrawer(ItemHiddenMenu(name: 'Privacy_Polocy', baseStyle:  TextStyle(color: Colors.white), selectedStyle: TextStyle(color: Colors.white)), home()),
      ScreenHiddenDrawer(ItemHiddenMenu(name: 'Security', baseStyle:  TextStyle(color: Colors.white), selectedStyle: TextStyle(color: Colors.white)), home())
    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(screens:pages, backgroundColorMenu: kingColor,initPositionSelected: 0,
    elevationAppBar: 0,
    withAutoTittleName: false,
    actionsAppBar: [
      IconButton(onPressed: (){
        Get.toNamed('card');
      }, icon: Icon(Icons.shopping_cart,size: 23,color: Colors.black87,))
    ],
    leadingAppBar: Icon(Icons.filter_list_rounded,color: Colors.black87,),
    backgroundColorAppBar: Colors.white,
   );
  }
}
