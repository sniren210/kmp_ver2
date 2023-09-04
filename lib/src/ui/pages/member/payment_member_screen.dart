import 'package:flutter/material.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class PaymentMemberScreen extends StatefulWidget {
  const PaymentMemberScreen({super.key});

  @override
  State<PaymentMemberScreen> createState() => _PaymentMemberScreenState();
}

class _PaymentMemberScreenState extends State<PaymentMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 60.h,
          color: ColorSchemeKmp.colorPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: context.dimensions.paddingSizeDefault,
            vertical: context.dimensions.paddingSizeDefault,
          ),
          child: Center(
            child: InkWell(
              onTap: () async {},
              child: Text(
                "Cek Pembayaran",
                style: context.textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.dimensions.marginSizeDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.dimensions.paddingSizeLarge,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.dimensions.paddingSizeSmall,
                        vertical: context.dimensions.paddingSizeSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.dimensions.paddingSizeSmall,
                              vertical: context.dimensions.paddingSizeSmall),
                          child: Text('Batas akhir pembayaran'),
                        ),
                        Divider(),
                        SizedBox(
                          height: context.dimensions.marginSizeDefault,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.dimensions.paddingSizeSmall,
                              vertical: context.dimensions.paddingSizeSmall),
                          child: Text(
                            DateTime.now().toString(),
                            style: context.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.dimensions.paddingSizeSmall,
                        vertical: context.dimensions.paddingSizeSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.dimensions.paddingSizeSmall,
                              vertical: context.dimensions.paddingSizeSmall),
                          child: Text('Nama Anggota'),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.dimensions.paddingSizeSmall,
                              vertical: context.dimensions.paddingSizeSmall),
                          child: Text(
                            'Rendi Dwi kurniasandi',
                            style: context.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.dimensions.paddingSizeSmall,
                                vertical: context.dimensions.paddingSizeSmall),
                            child: Text('Tipe Anggota')),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.dimensions.paddingSizeSmall,
                              vertical: context.dimensions.paddingSizeSmall),
                          child: Text(
                            'Platinum',
                            style: context.textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.dimensions.marginSizeLarge,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Have a Coupon'),
                              ),
                            ),
                            FilledButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                                child: Text(
                                  'Gunakan',
                                  style: context.textTheme.headlineSmall
                                      ?.copyWith(
                                          color: Colors.white,
                                          letterSpacing: 3),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(context.dimensions.marginSizeDefault),
                  child: Text(
                    'Ringkasan pesanan',
                    style: context.textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.dimensions.paddingSizeSmall,
                        vertical: context.dimensions.paddingSizeSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Iuran Pokok'),
                            Text('Rp. 50.000,00'),
                          ],
                        ),
                        Divider(height: 5, color: context.theme.hintColor),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total'),
                            Text('Rp. 50.000,00'),
                          ],
                        ),
                        SizedBox(
                          height: context.dimensions.marginSizeDefault,
                        ),
                        Row(
                          children: [
                            Image.asset(AppConstants.imageConstant.bank,
                                height: 40, width: 40),
                            // SizedBox(width: 10,),
                            Text(
                              'Bank Artha Graha Internasional',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.dimensions.marginSizeDefault,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'No Virtual Account',
                                  maxLines: 3,
                                  overflow: TextOverflow.fade,
                                ),
                                InkWell(
                                    onTap: () async {},
                                    child: const Icon(Icons.copy, size: 20))
                              ],
                            ),
                            Divider(),
                            Text(
                              '1002012',
                              style: context.textTheme.labelMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
