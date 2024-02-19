
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGenerator extends StatefulWidget{
  State<StatefulWidget> createState() => _QRGeneratorState();

}
class _QRGeneratorState extends State<QRGenerator> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('QR Code Generator'),
    ),
    body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImageView(
              data: controller.text,
              size: 200,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 40,),
            buildTexField(context),
          ],
        ),
      ),
    ),
  );

  Widget buildTexField(BuildContext context) => TextField(
    controller: controller,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    decoration: InputDecoration(
      hintText: 'Enter the data',
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Theme.of(context).primaryColorDark)
      ),
      suffixIcon: IconButton(
        color: Theme.of(context).primaryColorLight,
        icon: Icon(Icons.done, size: 30),
        onPressed: () => setState(() {}),
      ),
    ),
  );
}
