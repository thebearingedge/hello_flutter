import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  build(BuildContext _) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: 30.0,
        left: 10.0,
      ),
      color: Colors.deepOrangeAccent,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Margherita',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              )),
              Expanded(
                child: Text(
                  'Tomato, Mozzarella, Basil',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                'Marinara',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              )),
              Expanded(
                child: Text(
                  'Tomato, Garlic',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          PizzaImage(),
          OrderButton(),
        ],
      ),
    );
  }
}

class PizzaImage extends StatelessWidget {
  @override
  build(BuildContext _) {
    return Container(
      child: Image(
        image: AssetImage('images/pizza.png'),
        width: 400.0,
        height: 400.0,
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  order(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: Text("Order Placed!"),
            content: Text("Pizza is good."),
          ),
    );
  }

  @override
  build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order Now!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () => order(context),
      ),
    );
  }
}
