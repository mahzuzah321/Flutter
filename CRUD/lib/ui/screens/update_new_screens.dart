import 'dart:convert';

import 'package:crud/ui/models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class UpdateNewScreens extends StatefulWidget {
  const UpdateNewScreens({super.key, required this.product});

  static const String name='/update-new-product';

  final Product product;

  @override
  State<UpdateNewScreens> createState() => _AddNewProductScreensState();
}

class _AddNewProductScreensState extends State<UpdateNewScreens> {
  final TextEditingController _nameTEController=TextEditingController();
  final TextEditingController _priceTEController=TextEditingController();
  final TextEditingController _totalpriceTEController=TextEditingController();
  final TextEditingController _quantityTEController=TextEditingController();
  final TextEditingController _imageTEController=TextEditingController();
  final TextEditingController _codeTEController=TextEditingController();
  bool _updateProductInProgress=false;
  @override
  void initState() {
    super.initState();
    _nameTEController.text=widget.product.productName ?? '';
    _priceTEController.text=widget.product.unitPrice ?? '';
    _totalpriceTEController.text=widget.product.totalPrice ?? '';
    _quantityTEController.text=widget.product.quantity ?? '';
    _imageTEController.text=widget.product.image ?? '';
    _codeTEController.text=widget.product.productCode ?? '';
  }

  @override
  Widget build
      (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update new product'),
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
      //TODO:complete form validation
      child: Column(
        children: [
          TextFormField(
            controller: _nameTEController,
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
            visible: _updateProductInProgress==false,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ElevatedButton(onPressed: (){
              //TODO: check form validation
              _updateProduct();
            }, child: Text('Update Product')),
          )
        ],
      ),
    );
  }
  Future<void> _updateProduct() async {
    _updateProductInProgress=true;
    setState(() {});
    Uri uri = Uri.parse(
        'https://crud.teamrabbil.com/api/v1/UpdateProduct/${widget.product.id}');
    Map<String,dynamic> requestbody={
      "Img":_imageTEController.text.trim(),
      "ProductCode":_codeTEController.text.trim(),
      "ProductName":_nameTEController.text.trim(),
      "Qty":_quantityTEController.text.trim(),
      "TotalPrice":_totalpriceTEController.text.trim(),
      "UnitPrice":_priceTEController.text.trim()
    };
    Response response = await post(uri,
        headers: {'Content-type':'application/json'},
        body: jsonEncode(requestbody));

    print(response.statusCode);
    print(response.body);
    _updateProductInProgress=false;
    setState(() {});
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Product has been updated'),
        ),
      );
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Product update failed! Try again,'),
        ),
      );
    }
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