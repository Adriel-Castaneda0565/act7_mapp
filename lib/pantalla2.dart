import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff91ba6a),
          title: const Text(
            'Pantalla 2 ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedPhysicalModel(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                elevation: _isFlat ? 0 : 6.0,
                shape: BoxShape.rectangle,
                shadowColor: Colors.black,
                color: Colors.white,
                child: const SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: Icon(Icons.android_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Click'),
                onPressed: () {
                  setState(() {
                    _isFlat = !_isFlat;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
