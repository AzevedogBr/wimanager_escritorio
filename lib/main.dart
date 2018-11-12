import 'package:flutter/material.dart';
import 'package:wimanager_escritorio/ui/detector_eventos.dart';
import 'package:wimanager_escritorio/ui/home.dart';
import 'package:wimanager_escritorio/ui/login.dart';


void main()=> runApp(
    new MaterialApp(
      title: "Wibi",
      home: new DetectorEventos(),
    )

);