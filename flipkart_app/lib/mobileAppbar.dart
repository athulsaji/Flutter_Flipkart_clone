import 'package:flutter/material.dart';

class MobileAppbar extends AppBar {
  MobileAppbar({Key? key})
      : super(
          key: key,
          backgroundColor: Color.fromARGB(255, 21, 123, 206),
          toolbarHeight: 150,
          title: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65buwZ6L99zb6qtZXNiuWI3OflsY7cNjRDz1414a60oGbkz3J3D_wXLOTGeMLR9ZOTRE&usqp=CAU',
                    height: 50,
                    width: 120,
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Login"),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search for products, Brands and More",
                          hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 134, 133, 133)),
                          contentPadding: EdgeInsets.only(top: 1),
                          border: InputBorder.none),
                      style: TextStyle(
                          fontSize: 14, backgroundColor: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
}
