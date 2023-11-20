import 'package:flutter/material.dart';

class AgeCalculator extends StatelessWidget {
  AgeCalculator({super.key});
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent
                ),
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: ageController,
                decoration: const InputDecoration(hintText: "Give your age"),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 25,
                child: FloatingActionButton(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                onPressed: (){},
                child: const Text("Validate"),
              ),
              ),
              const SizedBox(height: 16,),
              const Text("Please provide input")
            ],
          )
        ),
      ),
    );
  }
}