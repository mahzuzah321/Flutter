import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreens extends StatefulWidget {
  const AddNewProductScreens({super.key});

  static const String name='/add-new-product';

  @override
  State<AddNewProductScreens> createState() => _AddNewProductScreensState();
}

class _AddNewProductScreensState extends State<AddNewProductScreens> {
  final TextEditingController _nameTEController=TextEditingController();
  final TextEditingController _priceTEController=TextEditingController();
  final TextEditingController _totalpriceTEController=TextEditingController();
  final TextEditingController _quantityTEController=TextEditingController();
  final TextEditingController _imageTEController=TextEditingController();
  final TextEditingController _codeTEController=TextEditingController();
  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  bool _addNewProductInProgress=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(16),
          child: _buildProductForm(),
        ),
      ),
    );
  }

  Widget _buildProductForm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                hintText: 'Name',
                labelText: "Product name"
            ),
            validator: (String? value){
              if(value?.trim().isEmpty??true){
                return "Enter product name";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _priceTEController,
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                hintText: 'Price',
                labelText: "Product price"
            ),
            validator: (String? value){
              if(value?.trim().isEmpty??true){
                return "Enter product price";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalpriceTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: 'Total Price',
                labelText: "Product total price"
            ),
            validator: (String? value){
              if(value?.trim().isEmpty??true){
                return "Enter product total price";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                hintText: 'Quantity',
                labelText: "Product quantity"
            ),
            validator: (String? value){
              if(value?.trim().isEmpty??true){
                return "Enter product quantity";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                hintText: 'Code',
                labelText: "Product code"
            ),
            validator: (String? value){
              if(value?.trim().isEmpty??true){
                return "Enter product code";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                hintText: 'Image urls',
                labelText: "Product image"
            ),
            validator: (String? value){
              if(value?.trim().isEmpty??true){
                return "Enter product image";
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Visibility(
              visible: _addNewProductInProgress==false,
              replacement: Center(
                child: CircularProgressIndicator(),
              ),

              child:ElevatedButton(onPressed: (){
                if (_formkey.currentState!.validate())
                {
                  _addNewProduct();
                }
              },
                  child: Text('Add Product'))
          )],
      ),
    );
  }
  Future<void> _addNewProduct() async{
    _addNewProductInProgress=true;
    setState(() {});
    Uri uri=Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');
    Map<String, dynamic> requestbody={
      "Img":_imageTEController.text.trim(),
      "ProductCode":_codeTEController.text.trim(),
      "ProductName":_nameTEController.text.trim(),
      "Qty":_quantityTEController.text.trim(),
      "TotalPrice":_totalpriceTEController.text.trim(),
      "UnitPrice":_priceTEController.text.trim()
    };
    Response response=await post(uri,
        headers: {
          'Content-type':'application/json'
        },
        body: jsonEncode(requestbody));
    print(response.statusCode);
    print(response.body);
    _addNewProductInProgress=false;
    setState(() {
    });
    if(response.statusCode==200){
      _clearTextField();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('New product add'),
      ),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('New product add failed! Try again'),
        ),
      );
    }
  }
  void _clearTextField(){
    _priceTEController.clear();
    _quantityTEController.clear();
    _totalpriceTEController.clear();
    _nameTEController.clear();
    _imageTEController.clear();
    _codeTEController.clear();
  }

  @override
  void dispose() {
    _priceTEController.dispose();
    _quantityTEController.dispose();
    _totalpriceTEController.dispose();
    _nameTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    super.dispose();
  }
}