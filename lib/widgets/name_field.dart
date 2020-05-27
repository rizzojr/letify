import 'package:flutter/material.dart';
import 'package:letify/services/blocs/user_bloc.dart';
import 'package:letify/utils/theme.dart';

Widget buildNameField(
    {UserBloc bloc, BuildContext context, TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
    child: StreamBuilder<String>(
        stream: bloc.name,
        builder: (context, AsyncSnapshot<String> snapshot) {
          return TextFormField(
            controller: controller,
            onChanged: bloc.nameSink,
            cursorColor: letifyGreen,
            decoration: InputDecoration(
                errorText: snapshot.error,
                labelText: 'Full name',
                labelStyle: TextStyle(color: letifyGreen),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: letifyGreen),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(
                  Icons.perm_identity,
                  color: letifyGreen,
                )),
          );
        }),
  );
}
