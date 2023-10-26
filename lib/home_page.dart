import 'package:flutter/material.dart';
import 'package:the_navi_gator_v2/destination_page.dart';
import 'package:the_navi_gator_v2/feedback_page.dart';
import 'package:the_navi_gator_v2/street_map.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navi-Gator'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Menu')
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  image: AssetImage('lib/assets/alligator_logo1.jpg'),
                  width: 200,
                  height: 150),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 20,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                    maximumSize: const Size(300, 200)
                   ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const DestinationPage();
                        },
                      ),
                    );
                  },
                  child: const Column(
                    children: [
                      SizedBox(height: 20),
                      Image(image: AssetImage('lib/assets/roadsign3.png'),
                      width: 100,
                      height: 100),
                      Text(('Go to Destination Page'),
                      style:TextStyle(
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                    elevation: 20,
                  minimumSize: const Size(200, 50)
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Streetmap();
                      },
                    ),
                  );
                },
                label: const Text('Open Streetmap'),
                icon: const Icon(Icons.location_city)
              ),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                    elevation: 20,
                  minimumSize: const Size(200, 50)
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const FeedbackPage();
                      },
                    ),
                  );
                },
                label: const Text('Give us your feedback'),
                icon: const Icon(Icons.question_answer)
              ),
              const SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}
