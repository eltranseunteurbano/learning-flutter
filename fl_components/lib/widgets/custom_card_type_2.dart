import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imgUrl;
  final String? message;

  const CustomCardType2({
    super.key,
    required this.imgUrl,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imgUrl),
              placeholder: const AssetImage("assets/images/jar-loading.gif"),
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 200),
            ),
            if (message != null && message!.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(message!),
              )
          ],
        ));
  }
}
