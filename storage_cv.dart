import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'EmployeeProfile.dart';

class AddCv extends StatefulWidget {
  const AddCv({super.key});

  @override
  State<AddCv> createState() => _AddCvState();
}

class _AddCvState extends State<AddCv> {
  List<File> cvFiles = [];

  getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      setState(() {
        cvFiles.addAll(files);
      });
    }
  }

  removeCv(int index) {
    setState(() {
      cvFiles.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => EmployeeProfile()),
              );
            },
            child: Icon(Icons.arrow_back_sharp ,color: Colors.black,)) ,
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [

            SizedBox(height: 50,),

            const Text( "Storage Cv",
              style: TextStyle(
                fontSize: 48,
                color: Colors.teal,
              ),),
            SizedBox(height: 30,),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              padding:  const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color:Colors.teal.withOpacity(.2) ),
              child:  Row(
                  children: [
                    const Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Add Cv",style: TextStyle(color: Colors.black,fontSize: 25),),
                    )),
                    Expanded(child: GestureDetector(
                        onTap: ()async { await getFile();},
                        child: const Icon( Icons.attach_file,size: 25,))),

                  ]) ,),


            ...cvFiles.asMap().entries.map((entry) {
              int index = entry.key;
              File cvFile = entry.value;
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                padding:  const EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color:Colors.blue.withOpacity(.28) ),
                child: ListTile(
                  title: Text('CV${index + 1}'),
                  subtitle: Text(cvFile.path),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => removeCv(index),
                  ),
                ),
              );
            }).toList(),
          ]),
        ),
      ),
    );
  }
}
