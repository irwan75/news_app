import 'package:flutter/material.dart';

class FormSearch extends StatelessWidget {
  final TextEditingController textEditingController;
  final GestureTapCallback onTap;
  final String hintText;
  const FormSearch({
    Key? key,
    required this.textEditingController,
    required this.onTap,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade200,
              ),
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 10)),
              ),
            ),
          ),
          SizedBox(width: 10),
          IntrinsicHeight(
            child: Material(
              child: InkWell(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                  child: Text(
                    "Cari",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
