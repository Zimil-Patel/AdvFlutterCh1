import 'package:adv_flutter_ch1/counter%20app%20using%20provider/screens/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterAppHomePage extends StatelessWidget {
  const CounterAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.black,
        leading: const Icon(Icons.menu),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: false,
        title: const Text('Counter App', style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30,
        ),),
      ),

      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context, listen: true).getCount().toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: (){
         Provider.of<CounterProvider>(context, listen: false).increaseCountPreference();
        },
        shape: const CircleBorder(),
        child: Icon(Icons.add, color: Theme.of(context).scaffoldBackgroundColor,),
      ),
    );
  }
}
