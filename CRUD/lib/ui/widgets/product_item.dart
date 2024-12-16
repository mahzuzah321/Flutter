import 'package:crud/ui/models/product.dart';
import 'package:crud/ui/screens/update_new_screens.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product, required this.onDelete});
  final Product product;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: product.image != null && product.image!.isNotEmpty
          ? Image.network(product.image!, width: 40, errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.broken_image, size: 40);
      })
          : const Icon(Icons.image_not_supported, size: 40),
      title: Text(product.productName ?? 'No Name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: ${product.productCode ?? 'N/A'}'),
          Text('Quantity: ${product.quantity ?? 'N/A'}'),
          Text('Price: ${product.unitPrice ?? 'N/A'}'),
          Text('Total Price: ${product.totalPrice ?? 'N/A'}'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () async {
              await _handleDelete(context);
            },
            icon: const Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                UpdateNewScreens.name,
                arguments: product,
              );
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
    );
  }

  Future<void> _handleDelete(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await deleteProduct(product.id!);
      onDelete();
      Navigator.of(context).pop(); // Close loading indicator
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Product deleted successfully!')),
      );
    } catch (e) {
      Navigator.of(context).pop(); // Close loading indicator
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete product: $e')),
      );
    }
  }

  Future<void> deleteProduct(String productId) async {
    final uri = Uri.parse('https://crud.teamrabbil.com/api/v1/DeleteProduct/$productId');
    final response = await delete(uri);

    if (response.statusCode == 200) {
      return; // Successful deletion
    } else {
      throw Exception("Failed to delete product");
    }
  }
}