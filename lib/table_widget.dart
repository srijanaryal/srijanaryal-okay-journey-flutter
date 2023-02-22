import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataRowHeight: 29,
      dividerThickness: 0.0,
      columnSpacing: 15.0,
      columns: <DataColumn>[
        DataColumn(
          label: SizedBox(
              child: Text(
            'S.no',
            style: TextStyle(fontSize: 14),
          )),
        ),
        DataColumn(
          label: SizedBox(
              // width: 55,
              child: Text(
            'Name',
            style: TextStyle(fontSize: 14),
          )),
        ),
        DataColumn(
          label: SizedBox(
              child: Text(
            'Address',
            style: TextStyle(fontSize: 14),
          )),
        ),
        DataColumn(
          label: SizedBox(
              child: Text(
            'Working Status',
            style: TextStyle(fontSize: 14),
          )),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '1',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 90,
                onPressed: () {},
                child: Text(
                  'Not Operating',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '2',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 95,
                onPressed: () {},
                child: Text(
                  'Operating',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '3',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 95,
                onPressed: () {},
                child: Text(
                  'Operating',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '4',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 95,
                onPressed: () {},
                child: Text(
                  'Operating',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
