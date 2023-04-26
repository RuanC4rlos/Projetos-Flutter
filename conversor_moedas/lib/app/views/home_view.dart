import 'package:conversor_moedas/app/components/moedas_box.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;
  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
            left: 30,
            right: 30,
            bottom: 0,
          ),
          child: Column(
            children: [
              Image.network(
                'https://apksos.com/storage/images/com/abstractestudio/conversor/com.abstractestudio.conversor_1.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 50),
              MoedasBox(
                key: UniqueKey(),
                selectedItem: homeController.toMoeda,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toMoeda = model!;
                  });
                },
              ),
              const SizedBox(height: 10),
              MoedasBox(
                key: UniqueKey(),
                selectedItem: homeController.fromMoeda,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromMoeda = model!;
                  });
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                ),
                onPressed: () {
                  homeController.convert();
                },
                child: const Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
