import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.west),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 226, 93, 253),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xFFA32EC1),
      ),
      body: Container(
        color: const Color(0xFFA32EC1),
        child: Stack(
          children: [
            Positioned(
              top: 19,
              left: 30,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 23, right: 23),
                          child: Text(
                            "Month",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            "All Times",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(255, 226, 93, 253),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 60),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(255, 226, 93, 253),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(255, 226, 93, 253),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // color: const Color(0xFFB2DD90),
                        child: Image.asset(
                          "assets/second.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        // color: const Color(0xFFB2DD90),
                        child: Image.asset(
                          "assets/first.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        // color: const Color(0xFFB2DD90),
                        child: Image.asset(
                          "assets/therd.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 330,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 365,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 173, 2, 207),
                      ),
                      title: Text("Nadim The king"),
                      trailing: Text("200pt"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
