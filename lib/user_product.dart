import 'package:flutter/material.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({
    super.key,
    required this.productDetail,
  });
  final Map<String, String> productDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          productDetail.toString(),
        ),
      ),
    );
  }
}
