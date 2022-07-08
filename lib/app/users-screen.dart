import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });

  static where(bool Function(dynamic user) param0) {}
}

class UsersScreen extends StatefulWidget {
  static const String routName='UsersScreen';
  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final List<bool> isClicked = List.generate(1000, (i) => false);
  List<UserModel> Users = [
    UserModel(
      id: 77971,
      name: 'Ahmed Abd Elhalem',
      phone: '01013020722',
    ),
    UserModel(
      id: 77911,
      name: 'Omar Emad',
      phone: '01020302301',
    ),
    UserModel(
      id: 77711,
      name: 'Youssif Khaled',
      phone: '01224776198',
    ),
    UserModel(
      id: 77892,
      name: 'Fatma Amin',
      phone: '01002022023',
    ),
    UserModel(
      id: 77548,
      name: 'Mohamed Khaled',
      phone: '01020520215',
    ),
    UserModel(
      id: 77364,
      name: 'Mohamed Ashraf',
      phone: '01115825801',
    ),
    UserModel(
      id: 77539,
      name: 'Ammar Hussein',
      phone: '01020325620',
    ),
    UserModel(
      id: 77539,
      name: 'Ali Mohamed',
      phone: '01566823499',
    ),
    UserModel(
      id: 77539,
      name: 'Ahmed Mostafa',
      phone: '01226635177',
    ),
    UserModel(
      id: 77539,
      name: 'Essam Hussein',
      phone: '01000255732',
    ),
    UserModel(
      id: 77539,
      name: 'Hussein Mohamed',
      phone: '01118335671',
    ),
    UserModel(
      id: 77539,
      name: 'Samy Ali',
      phone: '01136779123',
    ),
    UserModel(
      id: 77539,
      name: 'Moataz Mohamed',
      phone: '01215188713',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff090A28),
        title: Text('Users Data'),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                print('Notifications');
              },
              icon: Icon(Icons.notifications)),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Usersdata(Users[index],index),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
        itemCount: Users.length,
      ),
    );
  }

  Widget Usersdata(UserModel user,index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff090A28),
            radius: 30,
            child: Text(
              '${user.id}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${user.phone}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color:  isClicked[index] ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: MaterialButton(

                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: isClicked[index] ?  Colors.white : Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),),
                        onPressed: () {
                          setState(() => isClicked[index] = true);
                        },),),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(

                        child: Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onPressed: () {
                          setState(() => isClicked[index] = false);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}