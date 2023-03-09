import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realmapp/schemas.dart';

import '../globle.dart';

class AddPerson extends StatefulWidget {
  const AddPerson({Key? key}) : super(key: key);

  @override
  State<AddPerson> createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("Add Person"),
          onPressed: () {
            final person = Person(ObjectId(), "Malik", "Tuseef",
                age: 25, born: DateTime(1996, 2, 2));
            realm.write(() {
              realm.add(person);
            });
          },
        ),
      ),
    );
  }
}
