import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade900,
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/36008270-6290-45ae-95cc-8bd0f2615f88/dbfsfy1-4a0dd7c5-122e-4160-b5df-153202d97d5b.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzM2MDA4MjcwLTYyOTAtNDVhZS05NWNjLThiZDBmMjYxNWY4OFwvZGJmc2Z5MS00YTBkZDdjNS0xMjJlLTQxNjAtYjVkZi0xNTMyMDJkOTdkNWIucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.P0_5orNCfKILntGw9UsksMCwYlCrjimkhF62CFpunFI'),
         )
      ),
    );
  }
}