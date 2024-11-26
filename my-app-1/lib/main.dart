import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message, color: Colors.white),
            backgroundColor: Colors.green,
            elevation: 10,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "chat",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: "update",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "call",
              ),
            ],
          ),
          drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 30,
            title: Text(
              "whatsapp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Icon(Icons.camera, color: Colors.white),
              Icon(Icons.search, color: Colors.white),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                buildListTile("vicks", "junior developer",
                    "https://i.pinimg.com/564x/a2/69/7d/a2697d0031db7d9d32071746fa4723e9.jpg"),
                buildListTile("sha", "you are so cute",
                    "https://i.pinimg.com/474x/bf/c9/77/bfc97782a8babfe1a53a86300afb9375.jpg"),
                buildListTile("Roja amma", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnte0CXDuNakZ8JAvmAS7RrcHay4OdhZtW2w&s"),
                buildListTile("MOM", "where r you",
                    "https://images.squarespace-cdn.com/content/v1/574b35068a65e20cc74c4def/1660251051027-8HO91AWUKQ7KJWHUDCL5/BestMomIdeas-Mother+and+Son+Relationship.jpg"),
                buildListTile("DAD", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuTUmYv17tZ8LtRZTKIXNAHBZMf2vOGa1MIw&s"),
                buildListTile("elder sis", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtRxKeX31U3B6KjUAz8Du2FvErcvQNJ1jeJg&s"),
                buildListTile("cousin", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb5OdHyPaVFeAsF7ZPvd3A3rwSk4Qg84IsUg&s"),
                buildListTile("surya", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRAzDce3WW0YEvm3nr-k5ULL7v_lQlXAlZ1A&s"),
                buildListTile("vignesh", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAE8H7tnmm9KCaX9aaS9Le9c-e3qIqT1o-axtHxj5f6MjzEOeQhsRjweC6YbWDhid7ZFA&usqp=CAU"),
                buildListTile("javid", "where r you",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxbGGxnouU4XEa5hAwFevWeYNKSeQB1k7XmUtv3sF_z9QKaUJyJP-Mu-BA4XgCRgM7DVU&usqp=CAU"),
              ],
            ),
          )),
    );
  }

  ListTile buildListTile(title, subtitle, img) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(img),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            "25/11/2024",
            style: TextStyle(color: Colors.grey),
          ),
          Icon(Icons.done_all, color: Colors.blue),
        ],
      ),
    );
  }
}
