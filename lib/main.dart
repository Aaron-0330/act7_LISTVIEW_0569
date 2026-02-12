import 'package:flutter/material.dart';

void main() => runApp(const AppHAGALO());

class AppHAGALO extends StatelessWidget {
  const AppHAGALO({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HAGALO',
      home: const HERRAMIENTAS(),
    );
  }
} // FIN CLASE APPHAGALO

class HERRAMIENTAS extends StatelessWidget {
  const HERRAMIENTAS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1B263B), 
        title: const Text(
          "HAGALO",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.build, color: Color(0xFFE0FBFC)),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: const Icon(Icons.chair, color: Color(0xFFA2D2FF)),
              tooltip: 'Muebles',
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: const Icon(Icons.deck, color: Color(0xFFBDE0FE)),
              tooltip: 'Decoración Exterior',
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 12.0),
            child: IconButton(
              icon: const Icon(Icons.kitchen, color: Colors.white),
              tooltip: 'Electrodomésticos',
              onPressed: () {},
            ),
          ),
        ],
      ),

      // CUERPO SIN EL CARRITO, ENFOCADO EN LAS CATEGORÍAS
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        children: [
          _buildListTile(
            icon: Icons.fireplace,
            title: 'Calefacción',
            subtitle: 'Calentadores y chimeneas',
          ),
          const Divider(height: 1, thickness: 1),

          _buildListTile(
            icon: Icons.handyman,
            title: 'Herramientas',
            subtitle: 'Kits para reparaciones en frío',
          ),
          const Divider(height: 1, thickness: 1),

          _buildListTile(
            icon: Icons.lightbulb,
            title: 'Iluminación LED',
            subtitle: 'Ahorro de energía en invierno',
          ),
          const Divider(height: 1, thickness: 1),

          _buildListTile(
            icon: Icons.door_front_door,
            title: 'Puertas y Ventanas',
            subtitle: 'Aislamiento térmico profesional',
          ),
          const Divider(height: 1, thickness: 1),

          _buildListTile(
            icon: Icons.ac_unit,
            title: 'Control de Nieve',
            subtitle: 'Palas y químicos para deshielo',
          ),
        ],
      ),
    );
  }

  // Método optimizado para los elementos de la lista
  Widget _buildListTile({required IconData icon, required String title, required String subtitle}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0xFFEE7125), // Naranja HAGALO/Home Depot
        child: Icon(icon, color: Colors.white, size: 28),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right, color: Color(0xFF1B263B)),
      onTap: () {
        // Aquí podrías agregar la navegación más adelante
      },
    );
  }
} // FIN CLASE HERRAMIENTAS