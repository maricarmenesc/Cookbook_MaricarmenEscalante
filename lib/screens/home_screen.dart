import 'package:flutter/material.dart';
import 'design/design_screen.dart';
import 'forms/forms_screen.dart';
import 'images/images_screen.dart';
import 'lists/lists_screen.dart';
import 'navigation/navigation_screen.dart';
import 'first_app_screen.dart'; // Importa la nueva actividad

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Cookbook'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 4.0,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Choose a Section',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  _buildCustomButton(
                    context,
                    title: 'Design',
                    icon: Icons.design_services,
                    gradientColors: [Colors.teal, Colors.tealAccent],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DesignScreen()),
                      );
                    },
                  ),
                  _buildCustomButton(
                    context,
                    title: 'Forms',
                    icon: Icons.text_fields,
                    gradientColors: [Colors.orange, Colors.deepOrangeAccent],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FormsScreen()),
                      );
                    },
                  ),
                  _buildCustomButton(
                    context,
                    title: 'Images',
                    icon: Icons.image,
                    gradientColors: [Colors.purple, Colors.purpleAccent],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ImagesScreen()),
                      );
                    },
                  ),
                  _buildCustomButton(
                    context,
                    title: 'Lists',
                    icon: Icons.list,
                    gradientColors: [Colors.red, Colors.redAccent],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ListsScreen()),
                      );
                    },
                  ),
                  _buildCustomButton(
                    context,
                    title: 'Navigation',
                    icon: Icons.navigation,
                    gradientColors: [Colors.green, Colors.lightGreenAccent],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NavigationScreen()),
                      );
                    },
                  ),
                  _buildCustomButton(
                    context,
                    title: 'First App',
                    icon: Icons.create,
                    gradientColors: [Colors.cyan, Colors.lightBlueAccent],
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FirstAppScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Color> gradientColors,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: gradientColors.last.withOpacity(0.4),
            blurRadius: 8.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Icon(icon, size: 32, color: Colors.white),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
