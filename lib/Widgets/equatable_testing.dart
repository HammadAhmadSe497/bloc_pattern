import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person p1 = const Person(name: 'John', age: 30);
          Person p2 = const Person(name: 'John', age: 30);

          print(p1.hashCode.toString());
          print(p2.hashCode.toString());

           print(p1 == p2);
          // setState(() {
          //   _counter++;
          // });
        },
        // tooltip: 'Increment',
        // child: const Icon(Icons.add),
      )
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name, age];


}