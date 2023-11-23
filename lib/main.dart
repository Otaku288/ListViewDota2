import 'package:flutter/material.dart';

final List<String> mass = <String>[
  'axe',
  'enigma',
  'invoker',
  'lina',
  'necrophus',
  'slark',
  'sniper',
  'spectra',
  'tinker',
  'bristback'
];
final List<String> mass2 = <String>[
  'https://avatars.mds.yandex.net/i?id=f00a4a760768c5a1e363607a67815f6b-6413042-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=b9b3dd44c18c4e1133b3266b5faaf356c9ef80f8-9198173-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=266f5acae31d0ff9c927d59bf2b8dc8e297d80d8-11387720-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=7a2c5ce9b32528561a2365be90d0f5eebcb45b39-10350639-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=59433cd690e33266339652da2e67201c514818fe-10468051-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=3e4ea25a947865314efbadf44cf9039cf890f90b-9842828-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=ad31883b6b0c2fa2660b61984c6fa97aca709ab3-10578163-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=d381507dac050d720e6a83d75fccc1a272548213-10906504-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=d04634c0e2b692422c1a16b6de02339b5903f9ac-9211526-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=7baf55cf8b5d747f4012594b9040993cd16b9b33-11004153-images-thumbs&n=13',
];

void main() {
  runApp(const MaterialApp(
    home: ListViewLesson(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListViewLesson extends StatelessWidget {
  const ListViewLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dota 2'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(top: 8, left: 100, right: 100),
          itemCount: mass.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(8),
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.red),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 290, bottom: 100),
                ),
                Text('${mass[index]}'),
                SizedBox(
                  width: 100,
                ),
                Image.network('${mass2[index]}', width: 200, height: 200,),
                Container(
                  margin: EdgeInsets.all(8),
                )
              ]),
            );
          }),
    );
  }
}
