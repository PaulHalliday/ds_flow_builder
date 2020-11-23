import 'package:ds_flow_builder/src/contact_flow/contact_flow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            await Navigator.of(context).push(
              ContactFlow.route(),
            );

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Flow Completed!"),
                content: Text("All done."),
              ),
            );
          },
          child: Text("Go to Contact List Flow"),
        ),
      ),
    );
  }
}
