import 'package:flutter/material.dart';
import 'package:wearwise_mobile/screens/list_productentry.dart';
import 'package:wearwise_mobile/screens/menu.dart';
import 'package:wearwise_mobile/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Wearwise',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Choose what you like at Wearwise!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },  
          ),
          ListTile(
            leading: const Icon(Icons.add_circle_outlined),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ProductEntry
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  ));
        
            },
          ),
        ListTile(
          leading: const Icon(Icons.add_circle_outline_rounded),
          title: const Text('Daftar Produk'),
          onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductEntryPage()),
              );
          },
      ),

        ],
      ),
    );
  }
}