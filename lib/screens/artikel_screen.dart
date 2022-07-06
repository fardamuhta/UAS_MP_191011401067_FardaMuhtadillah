import 'package:artikel/providers/artikel_provider.dart';
import 'package:artikel/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({Key? key}) : super(key: key);
  @override
  _ArtikelScreenState createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('191011401067 - Farda Muhtadillah',
              style: TextStyle(
                  color: Colors.lightGreen, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Consumer<ArtikelProvider>(
            builder: (context, ArtikelProvider, child) {
          return ListView.builder(
            itemCount: ArtikelProvider.artikel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtikelScreen(
                        title: ArtikelProvider.artikel.data![index].title!,
                      ),
                    ),
                  );
                },
                child: Card(
                    elevation: 20,
                    child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                                "${ArtikelProvider.artikel.data![index].image}"),
                            Text(
                              "${ArtikelProvider.artikel.data![index].title}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                "${ArtikelProvider.artikel.data![index].createdAt}"),
                          ],
                        ))),
              );
            },
            padding: const EdgeInsets.all(18),
          );
        }));
  }
}
