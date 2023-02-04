import 'package:delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:delivery_app/app/core/widgets/delivery_app_bar.dart';
import 'package:delivery_app/app/core/widgets/delivery_button.dart';
import 'package:delivery_app/app/delivery_app.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login', style: context.textStyles.textTitle),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: DeliveryButton(
                        onPressed: () {},
                        width: double.infinity,
                        label: 'Entrar',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Não possui uma conta',
                      style: context.textStyles.textBold,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cadastre-se',
                        style: context.textStyles.textBold
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
