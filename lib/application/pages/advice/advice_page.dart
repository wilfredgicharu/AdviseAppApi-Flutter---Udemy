import 'package:advise/application/core/services.dart';
import 'package:advise/application/pages/advice/widgets/advice_field.dart';
import 'package:advise/application/pages/advice/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Adviser", style: themeData.textTheme.headline1),
          centerTitle: true,
          actions: [
            Switch(
                value: Provider.of<ThemeService>(context).isDarkModeOn,
                onChanged: (_) {
                  Provider.of<ThemeService>(context, listen: false)
                      .toggleTheme();
                })
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: const [
              Expanded(
                  child: Center(
                child: AdviseField(
                  advise: "Fred will be great software Developer",
                ),
                /* child: CircularProgressIndicator(
                  color: themeData.colorScheme.secondary,
                ) */

                /* Text(
                  "Your advice is waiting for you.",
                  style: themeData.textTheme.headline1,
                ) */
              )),
              SizedBox(
                height: 200,
                child: Center(
                  child: CustomButton(),
                ),
              )
            ],
          ),
        ));
  }
}
