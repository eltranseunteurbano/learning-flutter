import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Text('Alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Text('Este es el contenido de la alerta')),
                const FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          );
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Text('Este es el contenido de la alerta')),
                const FlutterLogo(size: 100)
              ],
            ),
            actions: [
              CupertinoDialogAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.red))),
              CupertinoDialogAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Alert screen'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () => Platform.isIOS ? displayDialogIOS(context) : displayDialogAndroid(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          label: const Text('Volver atrás'),
        ));
  }
}
