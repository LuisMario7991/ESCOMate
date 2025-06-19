import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/pages/listaprofesorespage.dart';
import '../info/provider.dart';
import '../pages/directorio.dart';
import '../pages/inicio.dart';
import '../pages/login.dart';
import '../pages/ubicacion.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    Widget buildHeader(BuildContext context) => Container(
          color: Colors.blue.shade700,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          child: const Column(
            children: [
              // SizedBox(
              //   width: 100,
              //   height: 100,
              //   child: Image.asset(
              //     'logo_sep.png',
              //   ),
              // ),
              SizedBox(height: 8),
              Text(
                'Escuela Superior de Computo',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        );

    Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Inicio'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const PageOne(),
              )),
            ),
            ListTile(
              leading: const Icon(Icons.map_outlined),
              title: const Text('Ubicacion'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Ubicacionescom(),
              )),
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Directorio'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const PageTwo(),
              )),
            ),
            if (loginProvider.isLoggedIn)
              ListTile(
                leading: const Icon(Icons.person_2_outlined),
                title: const Text('Profesores'),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ProfesorCards(),
                    ),
                  );
                },
              )
            else
              ListTile(
                leading: const Icon(Icons.person_2_outlined),
                title: const Text('Iniciar Sesion'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Login(),
                )),
              ),
          ],
        ));

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}
