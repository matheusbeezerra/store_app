import 'package:app_store/src/config/custom_color.dart';
import 'package:app_store/src/pages/auth/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Controladores para os campos de texto
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController celularController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  final cpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {'#': RegExp(r'[0-9]')});

  final phoneFormatter = MaskTextInputFormatter(
      mask: '## # ####-####', filter: {'#': RegExp(r'[0-9]')});

  // Função para validar o CPF
  void _validateAndSubmit() {
    String cpf = cpfController.text;
    if (CPFValidator.isValid(cpf)) {
      // Caso o CPF seja válido, continue o cadastro
      print('CPF válido. Proceder com o cadastro.');
      // Adicionar lógica de cadastro aqui
    } else {
      // Exiba uma mensagem de erro se o CPF for inválido
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('CPF inválido.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // FORMULÁRIO
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
                        // Passa os controladores para os campos
                        CustomTextField(
                          icon: Icons.mail,
                          label: 'Email',
                          controller:
                              emailController, // Aqui passa o controller
                        ),
                        CustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                          controller: senhaController, // Aqui também
                        ),
                        CustomTextField(
                          icon: Icons.person,
                          label: 'Nome',
                          controller: nomeController,
                        ),
                        CustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          controller: celularController,
                          inputFormatters: [phoneFormatter],
                        ),
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          controller: cpfController,
                          inputFormatters: [cpfFormatter],
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed:
                                _validateAndSubmit, // Chama a função de validação
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                fontSize: 18,
                                color: CustomColor.customSwatchColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
