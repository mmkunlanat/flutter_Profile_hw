import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Flutter App'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 74, 75, 72),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/12.jpg',
                errorBuilder: (context, error, stackTrace) {
                  return const Text('โหลดรูปไม่สำเร็จ');
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Ass.Pro Gunlanat Rattanawan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'นักศึกษาสาขาวิทยาการคอมพิวเตอร์ คณะศิลปศาสตร์และวิทยาศาสตร์\nมหาวิทยาลัยราชภัฏศรีสะเกษ',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // ⭐⭐⭐⭐⭐ + 170 Reviews ในแถวเดียว
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 10),
                  Text(
                    "170 Reviews",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // แถวข้อมูล Phone, Email, Social
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.phone, color: Color.fromARGB(255, 76, 175, 80)),
                        SizedBox(height: 5),
                        Text('PHONE'),
                        Text('098-7654321'),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.email, color: Color.fromARGB(255, 33, 150, 243)),
                        SizedBox(height: 5),
                        Text('EMAIL'),
                        Text('example@email.com'),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.share, color: Color.fromARGB(255, 156, 39, 176)),
                        SizedBox(height: 5),
                        Text('SOCIAL'),
                        Text('@kunlanat'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
