import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class DataInCard {
  final String dataIcon;
  final String subText;
  final int? accountBalance;
  final String mainText;

  const DataInCard({
    this.dataIcon = '',
    this.subText = '',
    this.accountBalance,
    this.mainText = '',
  });
}

List<String> disconnectedBanks = [
  'assets/third_page_icon_1.png',
];

class TossBank {
  final String bankIcon;
  final String text1;
  final String text2;
  const TossBank(
    this.bankIcon,
    this.text1,
    this.text2,
  );
}

const List<TossBank> data = [
  TossBank('assets/third_page_icon_1.png', '토스뱅크 카드 쓰면', '매달 최대 40,300원 캐시백'),
];

class TossFirstPage extends StatelessWidget {
  const TossFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            DisconnectedAccountsCards(),
            SizedBox(
              height: 15,
            ),
            TossBankCard()
          ],
        ),
      ),
    );
  }
}

class TossBankCard extends StatelessWidget {
  const TossBankCard({
    Key? key,
  }) : super(key: key);

  final String bankIcon = 'assets/third_page_icon_1.png';

  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Row(children: [
  //       Image.asset(
  //         account.bankIcon,
  //         width: 35,
  //       ),
  //     ]),
  //   );
  // }  @override

  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //   color: TossColor.white,
        //   borderRadius: BorderRadius.circular(20),
        // ),
        // child: Column(
        //   children: [
        //     ...disconnectedAccountsCards.map((e) => accountsAndCards(e))
        //   ],
        // ),
        );
  }
}

Widget WhiteCard() {
  return Container();
}

class DisconnectedAccountsCards extends StatelessWidget {
  const DisconnectedAccountsCards({Key? key}) : super(key: key);

  Widget accountsAndCards(String bankIcon) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(
            bankIcon,
            width: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '계좌, 카드 연결이 끊어졌어요',
                  style: TextStyle(
                    color: TossColor.grey2,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  '잔액 다시 표시하기',
                  style: TextStyle(
                    color: TossColor.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: TossColor.grey2,
            size: 15,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: TossColor.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [...disconnectedBanks.map((e) => accountsAndCards(e))],
        ));
  }
}
