import 'package:first_flutter_app/pages/second_page.dart';
import 'package:first_flutter_app/porstcard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: AutofillHints.name,
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        // elevation: 2,
        leading: IconButton.filled(
          hoverColor: Colors.cyan[400],
          onPressed: () {},
          color: Colors.grey,
          icon: const Icon(
            Icons.menu,
            size: 32.0,
          ),
        ),
        title: const Text(
          "Salam",
          style: TextStyle(
              color: Color.fromARGB(255, 58, 11, 200),
              fontSize: 27,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton.filled(
            onPressed: () {},
            color: Colors.purple[300],
            icon: const Icon(
              Icons.notifications,
              size: 32.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.all(3),
              children: [
                createProfileCard(
                    "Leyla",
                    "https://cdn.pixabay.com/photo/2016/11/22/21/42/woman-1850703_1280.jpg",
                    "Leyla Babayeva",
                    "https://cdn.pixabay.com/photo/2022/11/30/20/43/mouse-7627700_1280.jpg"),
                createProfileCard(
                    "Akif",
                    "https://media.istockphoto.com/id/1496805665/photo/thoughtful-business-man-wearing-glasses-at-the-office.jpg?s=2048x2048&w=is&k=20&c=HKdydaYr97_UFuPQstg0jlIfiIMu0cfpo0gosKRUePg=",
                    "Akif Isayev",
                    "https://cdn.pixabay.com/photo/2023/01/05/22/12/ai-generated-7699924_1280.png"),
                createProfileCard(
                    "Asif",
                    "https://media.istockphoto.com/id/1316604492/photo/profile-portrait-of-middle-aged-man-over-grey-background.jpg?s=2048x2048&w=is&k=20&c=GuCZwVwvbNxy7BtIJTGA9YZKZ9dhyTrHSpDbMzWGKr8=",
                    "Asif Haqverdiyev",
                    "https://cdn.pixabay.com/photo/2024/04/24/18/32/ai-generated-8718302_1280.png"),
                createProfileCard(
                    "Davud",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
                    "Davud Ismayilov",
                    "https://cdn.pixabay.com/photo/2024/04/04/03/08/ai-generated-8674235_1280.png"),
                createProfileCard(
                    "Ilqar",
                    "https://cdn.pixabay.com/photo/2021/08/11/11/15/man-6538205_1280.jpg",
                    "Ilqar Abdullayev",
                    "https://cdn.pixabay.com/photo/2021/01/29/08/08/dog-5960092_1280.jpg"),
                createProfileCard(
                  "Nazim",
                  "https://media.istockphoto.com/id/1592210966/photo/happy-black-man-running-in-park-with-music-smile-and-mockup-in-nature-garden-and-workout.jpg?s=2048x2048&w=is&k=20&c=ep7D80ngjTb8fELBVaB9qQ5mnIPXQwIJMXEX8vsJQiw=",
                  "Nazim Xudiyev",
                  "https://cdn.pixabay.com/photo/2019/11/15/05/23/dog-4627679_1280.png",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const PostCard(
            profilePicUrl:
                "https://cdn.pixabay.com/photo/2016/11/21/12/54/man-1845259_1280.jpg",
            nameSurname: "Akif",
            time: "1 il öncə",
            sharedPicUrl:
                "https://cdn.pixabay.com/photo/2024/04/22/17/03/ai-generated-8713076_1280.png",
            description: "Nolufdur?",
          ),
          const PostCard(
            profilePicUrl:
                "https://cdn.pixabay.com/photo/2023/01/28/20/23/ai-generated-7751688_1280.jpg",
            nameSurname: "Malik",
            time: "1 ay öncə",
            sharedPicUrl:
                "https://cdn.pixabay.com/photo/2022/12/22/02/56/dog-7671355_1280.jpg",
            description: "Nolufdu?",
          ),
          const PostCard(
            profilePicUrl:
                "https://cdn.pixabay.com/photo/2024/02/13/07/05/ai-generated-8570323_1280.jpg",
            nameSurname: "Vusal",
            time: "2 il öncə",
            sharedPicUrl:
                "https://cdn.pixabay.com/photo/2023/09/25/03/27/ai-generated-8274116_1280.png",
            description: "salamatciliqdir?",
          ),
        ],
      ),
    );
  }

  Widget createProfileCard(
      String userName, String link, String nameSurname, String backgroundPic) {
    return Material(
      child: InkWell(
        onTap: () async {
          Future<dynamic> backValue = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => SecondPage(
                profilePic: link,
                userName: userName,
                backgroundPic: backgroundPic,
                nameSurname: nameSurname,
              ),
            ),
          );
          debugPrint(await backValue);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(link),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                userName,
                style: const TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
