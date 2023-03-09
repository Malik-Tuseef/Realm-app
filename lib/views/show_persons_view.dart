import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realmapp/schemas.dart';
import 'package:realmapp/views/add_person_view.dart';

import '../globle.dart';

class ShowAllPersons extends StatefulWidget {
  const ShowAllPersons({super.key});

  @override
  State<ShowAllPersons> createState() => _ShowAllPersonsState();
}

class _ShowAllPersonsState extends State<ShowAllPersons> {
  RealmResults<Person>? persons;
  @override
  void initState() {
    dynamic realmPersons = realm.all<Person>();
    persons = realmPersons;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddPerson()),
              );
            },
            icon: Icon(Icons.add))
      ]),
      body: ListView.builder(
        itemCount: persons!.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(persons![index].firstName + persons![index].lastName),
            subtitle: Text(
                "${persons![index].age}\n${persons![index].born!.toLocal()}"),
          );
        },
      ),
    );
  }
}
