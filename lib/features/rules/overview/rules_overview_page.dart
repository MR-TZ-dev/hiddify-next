import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouteForm extends StatefulHookConsumerWidget {
  const RouteForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RouteFormState();
}

class _RouteFormState extends ConsumerState<RouteForm> {
  final _formKey = GlobalKey<FormState>();

  String? outboundIfMatch;

  String? name;

  List<String> ruleSetUrls = [];

  // Add other fields as needed...

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          DropdownButtonFormField<String>(
            value: outboundIfMatch,
            onChanged: (value) {
              setState(() {
                outboundIfMatch = value;
              });
            },
            items: const [
              DropdownMenuItem(value: 'direct', child: Text('Direct')),
              DropdownMenuItem(value: 'direct_with_fragment', child: Text('Direct with Fragment')),
              DropdownMenuItem(value: 'block', child: Text('Block')),
              DropdownMenuItem(value: 'proxy', child: Text('Proxy')),
            ],
            decoration: const InputDecoration(labelText: 'Outbound if Match'),
            validator: (value) => value == null ? 'Please select an option' : null,
          ),

          TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            onSaved: (value) => name = value,
            validator: (value) => value!.isEmpty ? 'Please enter a name' : null,
          ),

          // Add other fields similarly...

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                // Save the route or perform other actions
              }
            },
            child: const Text('Save Route'),
          ),
        ],
      ),
    );
  }
}
