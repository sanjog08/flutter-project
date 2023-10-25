import 'package:flutter/material.dart';

class watchlist_7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrStocks = [
      'WATCHLIST',
      'RAILTEL',
      'RVNL',
      'IRFC',
      'PFS',
      'TRIDENT',
      'EXIDEIND',
      'MINDACORP',
      'GFLLIMITED',
      'M&MFIN',
      'WIPRO',
      'SJVN'
    ];
    var arrSE = [
      'SEVEN',
      'BSE',
      'BSE',
      'NSE',
      'BSE',
      'NSE',
      'BSE',
      'BSE',
      'BSE',
      'BSE',
      'NSE',
      'NSE'
    ];
    var arrColor = [
      Colors.blue,
      Colors.green,
      Colors.green,
      Colors.red,
      Colors.red,
      Colors.green,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.green
    ];
    var arrRate = [
      '+7',
      '+1.45 (+0.62%)',
      '+1.65 (+0.99%)',
      '-0.58 (-0.75%)',
      '-0.80 (-2.74%)',
      '+0.62 (+1.78%)',
      '-7.40 (-2.79%)',
      '-7.85 (-2.16%)',
      '-3.10 (-1.94%)',
      '-4.55 (-1.61%)',
      '-3.45 (-0.87%)',
      '+0.45 (+0.60%)'
    ];
    var arrRateSt = [
      '7.0',
      '134.75',
      '168.30',
      '77.03',
      '28.44',
      '35.48',
      '258.05',
      '355.80',
      '102.45',
      '277.85',
      '391.85',
      '75.35'
    ];

    return ListView.separated(itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.only(top: 16, bottom: 16),
        child: Row(
          children: [
            Expanded(flex: 3,
                child: Container(
                    margin: EdgeInsets.only(left: 15), child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(arrStocks[index], style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500, color: Color(
                        0xFF424242))),
                    Text(arrSE[index], style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500, color: Color(
                        0xFF424242))),

                  ],
                ))),
            Expanded(flex: 2,
                child: Container(
                    margin: EdgeInsets.only(right: 12), child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(arrRateSt[index], style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: arrColor[index])),
                    Text(arrRate[index], style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400, color: Color(
                        0xFF757575))),
                  ],
                ))),
          ],
        ),
      );
    },
      itemCount: arrStocks.length,
      separatorBuilder: (context, index) {
        return Divider(height: 6,);
      },
    );
  }

}





// Container(
// color: Color(0xFFEEEEEE),
// child: ListView(
// scrollDirection: Axis.horizontal,
// children: [
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF2196FE)),))),
// ),
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),))),
// ),
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),))),
// ),
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 4', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),))),
// ),
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),))),
// ),
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 6', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),))),
// ),
// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Container( child: Center(child: Text('Watchlist 7', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF616161)),))),
// ),
// ],
// ),
// ),