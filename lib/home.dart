import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List <Map<String,dynamic>>gamers = [
    {"name": "David James", "image": "Assets/images/gamer1.png"},
    {"name": "Alena Derlin", "image": "Assets/images/gamer2.png"},
    {"name": "Madelyn Dias", "image": "Assets/images/gamer3.png"},
    {"name": "david james", "image": "Assets/images/gamer1.png"},
    {"name": "Alena Derlin", "image": "Assets/images/gamer2.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 40),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Quiz",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 34.05),
                child: Text("Hello",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 5),
            child: Row(
              children: const [
                Text("Lets Start Quiz",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 30, right: 30),
            child: Container(
              height: 162.28,
              width: 333,
              child: Image.asset("Assets/images/Rectangle1.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20, right: 30.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Winners",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                Icon(
                  Icons.arrow_forward,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 19.72),
            child: SizedBox(
              height: 108,
              child: ListView.builder(
                  itemCount: gamers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 22.0,
                      ),
                      child: SizedBox(
                          child: Column(
                        children: [
                          Image.asset(
                            gamers[index]["image"],
                            width: 65,
                            height: 65,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              gamers[index]["name"],
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      )),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 22.78,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              "Popular Super quiz",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 23.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 22),
            child: SizedBox(
              width: 341,
              height: 210,
              child: Image.asset("Assets/images/personalityquiz.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 22),
            child: SizedBox(
              width: 341,
              height: 210,
              child: Image.asset("Assets/images/General.png"),
            ),
          ),
        ],
      ),
    );
  }
}
