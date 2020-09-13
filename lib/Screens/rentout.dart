//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
//import 'package:enrio/main.dart';
import 'package:enrio/product.dart';
import 'package:enrio/sign_in.dart';
import 'package:enrio/Screens/database.dart';
import 'image_input.dart';
//import 'package:path/path.dart' as path;
//import 'package:path_provider/path_provider.dart' as syspaths;
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Rentoutpage extends StatefulWidget {
  static final String routeName = '/RentoutpageRoute';
  Rentoutpage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RentoutpageState createState() => _RentoutpageState();
}

class _RentoutpageState extends State<Rentoutpage> {
  final _price = FocusNode();
  final _time = FocusNode();
  final _precautions = FocusNode();
  final _description = FocusNode();
  final _form = GlobalKey<FormState>();
  //final _priceFocusNode = FocusNode();
  var _editedProduct = Product(
    id: null,
    title: '',
    price: 0,
    time: 0,
    precautions: '',
    description: '',
  );
  File _storedImage;

  Future<void> _takePicture() async {
    final imageFile = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    setState(() {
      _storedImage = imageFile;
    });
  }

  Future<void> uploadPic(String filename) async {
    StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(filename);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_storedImage);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  }

  @override
  void dispose() {
    _price.dispose();
    _time.dispose();
    _precautions.dispose();
    _description.dispose();
    super.dispose();
  }

  void _saveForm() {
    _form.currentState.save();
    print(_editedProduct.title);
    print(_editedProduct.price);
    print(_editedProduct.precautions);
    print(_editedProduct.time);
    print(_editedProduct.description);
    DatabaseService(uid: userid).updateProductData(
        _editedProduct.title,
        _editedProduct.precautions,
        _editedProduct.price,
        _editedProduct.time,
        _editedProduct.description);
    String filename = userid;
    uploadPic(filename);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add products'),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2.0,
        child: SafeArea(
          child: Container(
            child: InkWell(
              onTap: () {
                _saveForm();
                //  Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Submit',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF21BFBD),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: ListView(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_price);
              },
              onSaved: (value) {
                _editedProduct = Product(
                  id: null,
                  time: _editedProduct.time,
                  title: value,
                  price: _editedProduct.price,
                  precautions: _editedProduct.precautions,
                  description: _editedProduct.description,
                );
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Price'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.numberWithOptions(),
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_time);
              },
              onSaved: (value) {
                _editedProduct = Product(
                  id: null,
                  title: _editedProduct.title,
                  time: _editedProduct.time,
                  price: double.parse(value),
                  precautions: _editedProduct.precautions,
                  description: _editedProduct.description,
                );
              },
              focusNode: _price,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Time in hrs'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.numberWithOptions(),
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_precautions);
              },
              onSaved: (value) {
                _editedProduct = Product(
                  id: null,
                  title: _editedProduct.title,
                  time: double.parse(value),
                  price: _editedProduct.price,
                  precautions: _editedProduct.precautions,
                  description: _editedProduct.description,
                );
              },
              focusNode: _time,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Precautions'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_description);
              },
              focusNode: _precautions,
              onSaved: (value) {
                _editedProduct = Product(
                  id: null,
                  title: _editedProduct.title,
                  time: _editedProduct.time,
                  price: _editedProduct.price,
                  precautions: value,
                  description: _editedProduct.description,
                );
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Specifications'),
              textInputAction: TextInputAction.done,
              focusNode: _description,
              onSaved: (value) {
                _editedProduct = Product(
                  id: null,
                  title: _editedProduct.title,
                  price: _editedProduct.price,
                  time: _editedProduct.time,
                  precautions: _editedProduct.precautions,
                  description: value,
                );
              },
              onFieldSubmitted: (_) {
                _saveForm();
              },
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: _storedImage != null
                      ? Image.file(
                          _storedImage,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )
                      : Text(
                          'No Image Taken',
                          textAlign: TextAlign.center,
                        ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: FlatButton.icon(
                    icon: Icon(Icons.camera),
                    label: Text('Take Picture'),
                    textColor: Theme.of(context).primaryColor,
                    onPressed: _takePicture,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
