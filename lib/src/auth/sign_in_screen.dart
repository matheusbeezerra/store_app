import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_store/src/auth/components/custom_text_field.dart';
import 'package:app_store/src/config/custom_color.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Ifood',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Market',
                          style: TextStyle(
                            color: CustomColor.customContrastColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //CATEGORIAS
                  SizedBox(
                    height: 35,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                          ScaleAnimatedText('Frutas'),
                          ScaleAnimatedText('Temperos'),
                          ScaleAnimatedText('Legumes'),
                          ScaleAnimatedText('Frios'),
                          ScaleAnimatedText('Carnes'),
                          ScaleAnimatedText('Laticíneos'),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              //FORMULÁRIO
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //EMAIL
                    CustomTextField(
                      icon: Icons.mail,
                      label: 'Email',
                    ),

                    //SENHA
                    CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                              fontSize: 18,
                              color: CustomColor.customContrastColor),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: CustomColor.customContrastColor,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            side: BorderSide(
                              width: 2,
                              color: CustomColor.customContrastColor,
                            )),
                        onPressed: () {},
                        child: Text(
                          'Criar conta',
                          style: TextStyle(
                            fontSize: 18,
                            color: CustomColor.customContrastColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
