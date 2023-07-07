import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user.jpeg'),
            ),
            const Text.rich(
              TextSpan(
                // default text style
                children: <TextSpan>[
                  TextSpan(text: '\n    ROSHAN KUMAR YADAV \n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '\n KYC not verified ☒ '),
                  TextSpan(text: 'Verify Now', style: TextStyle(fontWeight: FontWeight.bold)),

                ],
              ),
            ),
            const SizedBox(height: 8),
            itemProfile1( CupertinoIcons.bus,'Long Travel', 'When you want to travel a long distance from one place to another'),
            const SizedBox(height: 8),
            itemProfile('Wallet'),
            const SizedBox(height: 8),
            itemProfile('Booking History'),
            const SizedBox(height: 8),
            itemProfile('Favorite Destinations'),
            const SizedBox(height: 8,),
            itemProfile('Settings'),
            const SizedBox(height: 8,),
            itemProfile('Feedback'),
            const SizedBox(height: 8,),
            itemProfile('Customer Support'),
            const SizedBox(height: 8,),
            itemProfile('About Us'),
            const SizedBox(height: 8,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Sign Out')
              ),
            )
          ],
        ),
      ),
    );
  }

  itemProfile1( IconData iconData,String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),

        trailing: Icon(Icons.toggle_on, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
  itemProfile( String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios_rounded , color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
