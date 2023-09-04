import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class SelectMemberStepScreen extends StatefulWidget {
  const SelectMemberStepScreen({super.key});

  @override
  State<SelectMemberStepScreen> createState() => _SelectMemberStepScreenState();
}

class _SelectMemberStepScreenState extends State<SelectMemberStepScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MemberTypeProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    final repoMember = context.watch<MemberTypeProvider>();
    final repo = context.watch<RegisterProvider>();

    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(
          context.dimensions.paddingSizeDefault,
        ),
        child: OverlayLoadingWidget(
          loading: repoMember.isLoading || repo.isLoading,
          child: ListView.builder(
              itemCount: repoMember.memberTypes.length,
              itemBuilder: (context, index) {
                return Card(
                    child: InkWell(
                  onTap: () => showModalBottom(repoMember.memberTypes[index]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 20),
                    child: Row(
                      children: [
                        Image.asset(ImageConstant.logo, height: 60, width: 60),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                repoMember.memberTypes[index].name,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                repoMember.memberTypes[index].description,
                                maxLines: 4,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ));
              }),
        ),
      ),
    );
  }

  void showModalBottom(MemberType memberType) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(minHeight: 500.h),
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            height: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    memberType.name,
                    style: context.textTheme.labelMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Text(
                    memberType.description,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Text(
                    memberType.benefit,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  child: Text(
                    "Tarif :",
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  child: Text(
                    "Iuran Wajib : Rp. ${memberType.monthlyMandatoryFee}",
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  child: Text(
                    "Iuran Pokok : Rp. ${memberType.monthlyPrincipalFee}",
                  ),
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: context.dimensions.marginSizeDefault,
                        vertical: context.dimensions.marginSizeSmall),
                    child: FilledButton(
                      onPressed: () async {
                        final isSuccess =
                            await context.read<RegisterProvider>().register();

                        if (!isSuccess) return;

                        final res = await context
                            .read<RegisterProvider>()
                            .setmemberType(
                                memberType: memberType.id.toString());

                        if (res.success) {
                          print(res);
                        } else {
                          SnackBarUtils.show(context,
                              contentType: ContentType.failure,
                              title: 'Failed',
                              message:
                                  'Server sedang sibuk mohon coba lagi nanti');
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.0.h),
                        child: Text(
                          'Mendaftar',
                          style: context.textTheme.headlineSmall
                              ?.copyWith(color: Colors.white, letterSpacing: 3),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            )),
      ),
    );
  }
}
