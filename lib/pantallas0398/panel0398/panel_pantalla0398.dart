import 'package:flutter/material.dart';
import 'package:rivas0398/pantallas0398/panel0398/item_juegos.dart';

class PanelPantalla0398 extends StatelessWidget {
  const PanelPantalla0398({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('XBOX Rivas 0398',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: const Color(0xff107c10),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/AlonsoRivasA/img_IOS/main/xboxlogo.png"),
                ))
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff107c10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Que quieres ver?",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xfffbfbfb),
                  ),
                ),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/AlonsoRivasA/img_IOS/main/drawerback.jpg"))),
            ),
            ListTile(
              title: Text("Juegos Xbox"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_outlined),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(15),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                children: [for (int i = 1; i <= 10; i++) const Itemjuego()],
              ),
            )
          ],
        ));
  }
}
