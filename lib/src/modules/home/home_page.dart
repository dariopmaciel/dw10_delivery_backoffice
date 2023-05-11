import 'package:flutter/material.dart';

import '../../core/env/env.dart';
import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/helpers/size_extentions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';
import '../template/base_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
//rodrigorahman@academiadoflutter.com.br
class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: Container(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    validator: (String) => 'Error',
                    decoration: const InputDecoration(label: Text('Login')),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botão'),
                ),
              ),
            ],
          ),
        ),
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(child: Text("Largura: ${context.screenWidth.toString()}")),
      //     Container(child: Text("Altura: ${context.screenHeight.toString()}")),
      //     Container(
      //       color: Colors.red,
      //       width: context.percentWidth(0.5),
      //       height: context.percentHeight(0.8),
      //     ),
      //   ],
      // ),
    );
  }
}
