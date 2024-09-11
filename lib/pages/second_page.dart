import 'package:flutter/material.dart';

class SeconPage extends StatelessWidget {
  const SeconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //     image: NetworkImage(
                    //         "https://cdn.pixabay.com/photo/2017/06/14/08/20/map-of-the-world-2401458_1280.jpg"),
                    //     fit: BoxFit.fill),
                    ),
              ),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/06/14/08/20/map-of-the-world-2401458_1280.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 5,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2021/06/20/20/31/woman-6351965_1280.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.teal,
                  ),
                ),
              ),
              const Positioned(
                top: 200,
                left: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salam",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "Salam",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 140,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                      border: Border.all(width: 2.0, color: Colors.white)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 90,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              children: [
                saygac("Follower", "20k"),
                saygac("Follow", "500"),
                saygac("Sharing", "75"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column saygac(String header, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          header,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }
}
