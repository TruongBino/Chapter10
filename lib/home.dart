import 'package:flutter/material.dart';
void main(){
  runApp(const Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                  'Layouts',
                  style: TextStyle(color: Colors.black87),
              ),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black54),
              //  brightness: Brightness.light,
                leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
                actions: <Widget>[
                  IconButton(icon: const Icon(Icons.cloud_queue), onPressed: () {})
                ]
            ),
            body: const _buildBody(),
          ),
      ),
    );
  }
}

class _buildBody extends StatelessWidget {
  const _buildBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildJournalEntry(),
                  Divider(),
                  _buildJournalWeather(),
                  Divider(),
                  _buildJournalTags(),
                  Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class _buildJournalHeaderImage extends StatelessWidget {
  const _buildJournalHeaderImage();

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/gift.jpg'),
      fit: BoxFit.cover,
    );
  }
}
class _buildJournalEntry extends StatelessWidget {
  const _buildJournalEntry();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text(
      'My Birthday',
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    Divider(),
    Text(
    'It’s going to be a great birthday. We are going out for dinner at my'
    'favorite place, then watch a movie after we go to the gelateria for ice cream and'
    'espresso.',
    style: TextStyle(color: Colors.black54),
    ),
    ],
    );
  }
}
class _buildJournalWeather extends StatelessWidget {
  const _buildJournalWeather();

  @override
  Widget build(BuildContext context) {
    return const  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(width: 16.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '81º Clear',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  '4500 San Alpho Drive, Dallas, TX United States',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
class _buildJournalTags extends StatelessWidget {
  const _buildJournalTags();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children: List.generate(7, (int index) {
        return Chip(
          label: Text(
            'Gift ${index + 1}',
            style: const TextStyle(fontSize: 10.0),
          ),
          avatar: Icon(
            Icons.card_giftcard,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      }),
    );
  }
}
class _buildJournalFooterImages extends StatelessWidget {
  const _buildJournalFooterImages();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/salmon.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/asparagus.jpg'),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/strawberries.jpg'),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.cake),
              Icon(Icons.star_border),
              Icon(Icons.music_note),
              //Icon(Icons.movie),
            ],
          ),
        ),
      ],
    );
  }
}
