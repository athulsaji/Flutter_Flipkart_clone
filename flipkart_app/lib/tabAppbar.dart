import 'package:flutter/material.dart';

class TabAppbar extends AppBar {
  TabAppbar({Key? key})
      : super(
          key: key,
          backgroundColor: Color.fromARGB(255, 21, 123, 206),
          toolbarHeight: 100,
          title: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65buwZ6L99zb6qtZXNiuWI3OflsY7cNjRDz1414a60oGbkz3J3D_wXLOTGeMLR9ZOTRE&usqp=CAU',
                      height: 45,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: SizedBox(
                        height: 38,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(3),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(Icons.search),
                              hintText: " Search for products, Brands and More",
                              hintStyle: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 134, 133, 133)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Become a seller"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("More"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // Container(
              //   height: 50,
              //   decoration: BoxDecoration(color: Colors.white),
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 10),
              //     child: TextField(
              //       decoration: InputDecoration(
              //           prefixIcon: Icon(Icons.search),
              //           hintText: " Search for products, Brands and More",
              //           hintStyle: TextStyle(
              //               fontSize: 25.0,
              //               color: Color.fromARGB(255, 134, 133, 133)),
              //           contentPadding: EdgeInsets.only(top: 1),
              //           border: InputBorder.none),
              //       style:
              //           TextStyle(fontSize: 14, backgroundColor: Colors.white),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // )
            ],
          ),
        );
}
