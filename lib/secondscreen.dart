import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incrementcubitcommonroutesapp/secondcubit.dart';
import 'package:incrementcubitcommonroutesapp/thirdscreen.dart';

class SecondScreen extends StatelessWidget {

  final String title;
  const SecondScreen({Key? key,required this.title}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context,"/third");
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => ThirdScreen())
            // );
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        BlocProvider.of<SecondCubit>(context).increment();
      },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: BlocBuilder<SecondCubit, int>(
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