import 'package:flutter/material.dart';

class ContinueFloatingButton extends StatelessWidget {
  final String? title;
  final IconData icon;
  final Function onTap;

  const ContinueFloatingButton(
      {Key? key, this.title, required this.icon, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 12,
                offset: const Offset(0, 3), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 12,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title!,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(icon, size: 20, color: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }
}
