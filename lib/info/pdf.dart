import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewerPage extends StatefulWidget {
  final String namepath;
  const PdfViewerPage({super.key, required this.namepath});

  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();

    pdfControllerPinch =
        PdfControllerPinch(document: PdfDocument.openAsset(widget.namepath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapa curricular"),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(children: [
      _pdfView(),
    ]);
  }

  Widget _pdfView() {
    return Expanded(child: PdfViewPinch(controller: pdfControllerPinch));
  }
}
