import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: Image.network(
                        countryData[index]['countryInfo']['flag'],
                        height: 25,
                      ),
                      title: Text(
                        countryData[index]['country'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'Deaths:' + countryData[index]['deaths'].toString(),
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
