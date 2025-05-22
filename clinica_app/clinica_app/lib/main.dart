import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/agregar_cita.dart';
import 'screens/agregar_paciente.dart';
import 'screens/agregar_trabajador.dart';

void main() {
  runApp(ClinicaApp());
}

class ClinicaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clínica App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/agregar-cita': (context) => AgregarCitaScreen(),
        '/agregar-paciente': (context) => AgregarPacienteScreen(),
        '/agregar-trabajador': (context) => AgregarTrabajadorScreen(),
      },
    );
  }
}
