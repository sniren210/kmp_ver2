import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class SelectMemberStepScreen extends StatefulWidget {
  const SelectMemberStepScreen({super.key});

  @override
  State<SelectMemberStepScreen> createState() => _SelectMemberStepScreenState();
}

class _SelectMemberStepScreenState extends State<SelectMemberStepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
                child: InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                child: Row(
                  children: [
                    Image.asset(ImageConstant.logo, height: 60, width: 60),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'memberType',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 120,
                            child: Text(
                              'Occaecat id incididunt deserunt tempor ea et mollit sint.',
                              maxLines: 4,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ));
          }),
    );
  }
}
