import 'package:band_names/services/socket_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {

    final socketService = Provider.of<SocketServices>(context);
    // socketService.socket.emit(event);

    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Server Status: ${ socketService.serverStatus}'),
              SizedBox(height: 20),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.message),
          onPressed: () {
            // Emitir un evento al servidor
            socketService.emit('emitir-mensaje', {
              'nombre': 'Flutter',
              'mensaje': 'Hola desde Flutter!'
            });
          },
        )
    );
  }
}