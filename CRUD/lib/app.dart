import 'package:crud/ui/models/product.dart';
import 'package:crud/ui/screens/add_new_product_screens.dart';
import 'package:crud/ui/screens/product_list_screen.dart';
import 'package:crud/ui/screens/update_new_screens.dart';
import 'package:flutter/material.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if(settings.name=='/'){
          widget=const ProductListScreen();
        } else if (settings.name==AddNewProductScreens.name){
          widget=const AddNewProductScreens();
        } else if (settings.name==UpdateNewScreens.name){
          final Product product=settings.arguments as Product;
          widget=UpdateNewScreens(product:product);
        }
        return MaterialPageRoute(builder: (context){
          return widget;
        });
      },

    );
  }
}


