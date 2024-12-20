import 'package:flutter/material.dart';
import 'package:ui_project/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Map<String, dynamic>> dataList = [
  {
    'name': 'Chair',
    'description' : 'This is red chair',
     'price': 100,
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcOxqUKjlhHp0kH4lZIBQo6gM1_G5F-Ber2w&s',
  },
  {
    'name': 'Table',
    'description' : 'This is red table',
    'price': 200,
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcOxqUKjlhHp0kH4lZIBQo6gM1_G5F-Ber2w&s',
  },
  {
    'name': 'Table 2',
    'description' : 'This is red table 2',
    'price': 250,
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcOxqUKjlhHp0kH4lZIBQo6gM1_G5F-Ber2w&s',
  }
];


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,size: 30,)),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('Home Screen',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: 20,
          // ),
          // Text('Home Screen \n and profile screen',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //         color: Colors.red,
          //         fontSize: 30,
          //         fontWeight: FontWeight.w600)),
          // TextButton(
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => ProfileScreen()));
          //     },
          //     child: Text('Profile Screen')),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     // mainAxisAlignment: MainAxisAlignment.,
          //     children: [
          //       Text('Row Text 1'),
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Text('Row Text 2'),
          //       Text('Row Text 3'),
          //       Text('Row Text 4'),
          //       Text(
          //           'Row Text 5 Row Text 5Row Text 5Row Text 5Row Text 5Row Text 5Row Text 5Row Text 5'),
          //     ],
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ProfileScreen()));
          //   },
          //   child: Container(
          //     height: 120,
          //     width: 200,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Colors.amberAccent,
          //     ),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Center(child: Text('Container 1')),
          //         Text('Container 2'),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Column(
          //   children: [
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.black,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.red,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.purple,
          //     ),
          //   ],
          // )

          Expanded(
            //height: 250,
            child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context,index){
                  print('data length----->${dataList.length}');
              return  Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Container(
                      height: 220,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(dataList[index]['image'].toString(),fit: BoxFit.fill,),
                  ),
                  title: Text(dataList[index]['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                  subtitle: Text(dataList[index]['description'], style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                  trailing: Text(dataList[index]['price'].toString(),),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
