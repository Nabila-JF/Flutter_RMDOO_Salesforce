import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widgets/appbar/default_subpages_appbar.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  String _data = "";

  _scan() async {
    await FlutterBarcodeScanner.scanBarcode(
            "#000000", "Cancel", true, ScanMode.BARCODE)
        .then((value) => setState(() => _data = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DefaultSubPagesAppBar(
          pageTitle: "Barcode Stock", pageSubtittle: "Checking"),
      body: Stack(
        children: [
          const BackgroundColor(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.qr_code_rounded),
                  label: const Text('Scan Barcode Here'),
                  onPressed: () => _scan(),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF242F9B)),
                ),
              ),
              AutoSizeText(
                _data,
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
