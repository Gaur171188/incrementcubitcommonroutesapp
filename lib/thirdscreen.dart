import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incrementcubitcommonroutesapp/thirdcubit.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Third Screen"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        BlocProvider.of<ThirddCubit>(context).increment();
      },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: BlocBuilder<ThirddCubit, int>(
          builder: (context, state) {
            return Center(
              child: Text(state.toString(),style: TextStyle(fontSize: 50)),
            );
          },
        ),
      ),
    );
  }
}