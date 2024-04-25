// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tlwapp/component/profileContainer.dart';

class company_catogery extends StatefulWidget {
  const company_catogery({super.key});

  @override
  State<company_catogery> createState() => _company_catogeryState();
}

class _company_catogeryState extends State<company_catogery> {
  var dropdownvalue = 'Select Catogery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Company Catogery')),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: true,
                child: profileContainer(
                  cunug: TextField(
                      decoration: InputDecoration(
                    hintText: 'Enter company ID',
                    labelText: 'ID',
                    prefixIcon: Icon(Icons.card_membership),
                  )),
                ),
              ),
              profileContainer(
                cunug: TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter Company Name',
                  labelText: 'company name',
                  prefixIcon: Icon(Icons.business),
                )),
              ),
              profileContainer(
                  cunug: DropdownButtonFormField(
                      style: TextStyle(),
                      value: dropdownvalue,
                      items: const [
                        DropdownMenuItem(
                            value: 'Select Catogery',
                            child: Text('Select Catogery')),
                        DropdownMenuItem(
                            value: 'date', child: Text('Services Secters')),
                        DropdownMenuItem(
                            value: 'dat', child: Text('Product Sectors')),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      })),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 10, 97, 228),
                      ),
                      onPressed: () {},
                      child: Text(
                        'ADD',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
