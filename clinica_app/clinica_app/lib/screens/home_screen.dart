import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clínica - Menú Principal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMenuButton(
              context,
              label: 'Agregar Cita',
              routeName: '/agregar-cita',
              icon: Icons.calendar_today,
            ),
            const SizedBox(height: 16),
            _buildMenuButton(
              context,
              label: 'Agregar Paciente',
              routeName: '/agregar-paciente',
              icon: Icons.person_add,
            ),
            const SizedBox(height: 16),
            _buildMenuButton(
              context,
              label: 'Agregar Trabajador',
              routeName: '/agregar-trabajador',
              icon: Icons.badge,
            ),
            const SizedBox(height: 16),
            _buildMenuButton(
              context,
              label: 'Ver Citas',
              routeName: '/ver-citas', // Puedes definir esto más adelante
              icon: Icons.list,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context,
      {required String label,
      required String routeName,
      required IconData icon}) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(label),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        textStyle: const TextStyle(fontSize: 18),
      ),
    );
  }
}
