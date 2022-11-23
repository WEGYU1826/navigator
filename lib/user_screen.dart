import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator/route_constant.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String id = 'user user';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.pushNamed(
                  RouteConstant.userProfile,
                  params: {
                    'id': id,
                  },
                );
              },
              child: const Text('user Profile'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(
                  RouteConstant.userProduct,
                  params: {'id': id},
                  queryParams: {
                    'id': id,
                    "name": 'something',
                    'price': '1234',
                    'isAvailable': 'true',
                  },
                );
              },
              child: const Text('User Product'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                context.replaceNamed(RouteConstant.home);
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
