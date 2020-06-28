import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/data/user.dart';

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  String name;
  String age;
  String myGender;
  //String myGenderResult;
  final formKey = new GlobalKey<FormState>();
  User user = User();
  @override
  void initState() {
    super.initState();
    myGender = '';
    name = '';
    age = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        user.name = name;
        user.age = int.parse(age);
        user.gender = myGender;
        Prefs.instance.setUserDetails(user);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            genderForm(),
          ],
        ),
      ),
    );
  }

  Form genderForm() {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              initialValue: name,
              decoration: textInputDecoration.copyWith(hintText: 'Name'),
              validator: (val) => val.isEmpty ? 'Enter Your Name' : null,
              onChanged: (val) => setState(() => name = val),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              initialValue: age,
              decoration: textInputDecoration.copyWith(hintText: 'Age'),
              validator: (val) => val.isEmpty ? 'Enter your age' : null,
              onChanged: (val) => setState(() => age = val),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: DropDownFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'select either one';
                }
                return null;
              },
              titleText: 'Gender',
              hintText: 'Please choose one',
              value: myGender,
              onSaved: (value) {
                setState(() {
                  myGender = value;
                });
              },
              onChanged: (value) {
                setState(() {
                  myGender = value;
                });
              },
              dataSource: [
                {
                  "display": "Male",
                  "value": "Male",
                },
                {
                  "display": "Female",
                  "value": "Female",
                },
              ],
              textField: 'display',
              valueField: 'value',
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: RaisedButton(
              child: Text('Save'),
              onPressed: _saveForm,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
                "User signed = " + Prefs.instance.isUserSignedIn().toString()),
          )
        ],
      ),
    );
  }
}

const textInputDecoration = InputDecoration(
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2.0)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 2.0)),
);
