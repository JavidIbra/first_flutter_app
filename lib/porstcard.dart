import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profilePicUrl;
  final String nameSurname;
  final String time;
  final String sharedPicUrl;
  final String description;

  const PostCard(
      {super.key,
      required this.profilePicUrl,
      required this.nameSurname,
      required this.time,
      required this.sharedPicUrl,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          height: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo,
                          image: DecorationImage(
                              image: NetworkImage(profilePicUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameSurname,
                            style: const TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            time,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 241, 90, 80),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                description,
                style: const TextStyle(
                  color: Color.fromARGB(255, 35, 32, 37),
                  fontSize: 22,
                ),
              ),
              Image.network(
                sharedPicUrl,
                width: double.infinity,
                height: 140.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonWithIcon(
                    myIcon: Icons.favorite,
                    text: "Like",
                    myFunction: () {},
                  ),
                  ButtonWithIcon(
                    myIcon: Icons.comment,
                    text: "Comment",
                    myFunction: () {},
                  ),
                  // ButtonWithIcon(
                  //   myIcon: Icons.share,
                  //   text: "Share",
                  //   myFunction: () {},
                  // ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.share),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  final IconData myIcon;
  final String text;
  final dynamic myFunction;

  const ButtonWithIcon({
    required this.myIcon,
    required this.text,
    required this.myFunction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: myFunction,
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(
                myIcon,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.grey,
                  // fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
