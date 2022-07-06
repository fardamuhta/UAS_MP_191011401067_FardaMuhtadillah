import 'package:artikel/providers/artikel_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailArtikelScreen extends StatefulWidget {
  final String? title;
  const DetailArtikelScreen({this.title, Key? key});

  @override
  State<DetailArtikelScreen> createState() => _DetailArtikelScreenState();
}

class _DetailArtikelScreenState extends State<DetailArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Consumer<ArtikelProvider>(
        // ignore: non_constant_identifier_names
        builder: (context, provider, _) {
          return ListView.builder(
              itemCount: provider.detailArtikel.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height,
                        child: Image.network(
                          provider.detailArtikel.data![index].image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        provider.detailArtikel.data![index].title!,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(provider.detailArtikel.data![index].createdAt!),
                      Text(provider.detailArtikel.data![index].description!),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
