import 'package:climateshift/home.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const SpaceCoders());
}

class SpaceCoders extends StatelessWidget {
  const SpaceCoders({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 37, 40),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(140)),
                const Center(
                  child: Text("SpaceShifts",
                            style: TextStyle(color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                            ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14.0,right: 14.0,top: 10.0),
                  
                  child: Center(
                    child: Text("Learn, Watch, and Discover",
                                
                    style: TextStyle(fontSize: 16,
                    color: Colors.white
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Image.asset("lib/images/logo.png",
                width: 220,
                height: 220,

                ),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage(),));
                  },
                              style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 11, 60, 84), 
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                              textStyle: const TextStyle(fontSize: 18), 
                    ),
                              child: const Text("Start Learning",
                              style: TextStyle(
                  color: Colors.white,
                              ),),
                  );
                }
              ),
              
              ],
            ),
          ),
        ),
      ),

    );
  }
}