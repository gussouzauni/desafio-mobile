import 'package:challenge/app/screens/order/order.dart';
import 'package:challenge/app/shared/widgets/buttonRoundedCustom.dart';
import 'package:flutter/material.dart';

class PriceCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void onTapped() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderScreen(),
          ));
    }

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'TOTAL',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              Text(
                '\$81.57',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                'Free Domestic Shipping',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          buttonRounded('CHECKOUT', Color(0xff515C6F), Color(0XffF9C705),
              'assets/img/icon_arrow.png', onTapped)
        ],
      ),
    );
  }
}
