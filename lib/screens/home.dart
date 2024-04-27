import 'package:app10/models/clientes.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeScreen extends StatefulWidget {
  final String titulo;

  const HomeScreen({
    super.key,
    required this.titulo,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final supabase = Supabase.instance.client;

  late final Future<List<Cliente>> listaClientes;

  Future<List<Cliente>> obtenerClientes() async {
    final response = await supabase.from('clientes').select();

    final List<Cliente> clientes = [];

    if (response.isNotEmpty) {
      for (var item in response) {
        clientes.add(
          Cliente(
            id: item['id'],
            cliente: item['cliente'],
            rif: item['rif'],
            grupoCliente: item['grupo_cliente'],
          ),
        );
      }

      return clientes;
    } else {
      return Future.error('Falló de conexión...');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    listaClientes = obtenerClientes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: listaClientes,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: verClientes(snapshot.data!),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('No hay datos...'),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      backgroundColor: Colors.blueGrey[100],
    );
  }

  List<Widget> verClientes(List<Cliente> data) {
    List<Widget> clientes = [];

    for (var item in data) {
      clientes.add(Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text(
              item.cliente.substring(0, 2),
            ),
          ),
          title: Text(item.cliente),
          subtitle: Text(item.rif),
          trailing: Text(item.grupoCliente),
        ),
      ));
    }

    return clientes;
  }
}
