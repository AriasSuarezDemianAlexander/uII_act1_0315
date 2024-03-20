import 'package:flutter/material.dart';
import 'item_carpinteria.dart';

class PanelPantallaa0315 extends StatelessWidget {
  const PanelPantallaa0315({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6c6c6c),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/AriasSuarezDemianAlexander/IMGFlutlabCarpinteria/main/iconoUser.jpg",
              ),
            ),
          ),
        ],
        title: const Text(
          'Carpintería Arias0315',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Que Quieres Buscar?",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              )),
          Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/AriasSuarezDemianAlexander/IMGFlutlabCarpinteria/main/IconoCa.jpg"))),
          ),
          ListTile(
            title: Text("Top Maderas"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itemcarpi()],
            ),
          )
        ],
      ),
    );
  }
}
