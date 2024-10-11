import 'package:mysql_client/mysql_client.dart';

Future<void> main(List<String> arguments) async {
  // create connections pool
  final pool = new MySQLConnectionPool(
    host: "db",
    port: 3306,
    userName: "maria",
    password: "pass",
    databaseName: "animal", // optional
    maxConnections: 10,
  );

  // make query
  var result = await pool.execute("SELECT * FROM dog");

  // print some result data
  print(result.numOfColumns);
  print(result.numOfRows);
  print(result.lastInsertID);
  print(result.affectedRows);

  // print query result
  for (final row in result.rows) {
    // print(row.colAt(0));
    // print(row.colByName("title"));

    // print all rows as Map<String, String>
    print(row.assoc());
  }

  // close all connections
  await pool.close();
}