
Time：2013-07-02 23:42:00,923 [9] 
Access denied for user 'root'@'localhost' (using password: YES)MySql.Data.MySqlClient.MySqlException (0x80004005): Access denied for user 'root'@'localhost' (using password: YES)
   在 MySql.Data.MySqlClient.MySqlStream.ReadPacket()
   在 MySql.Data.MySqlClient.NativeDriver.AuthenticateNew(Boolean reset)
   在 MySql.Data.MySqlClient.NativeDriver.Authenticate(Boolean reset)
   在 MySql.Data.MySqlClient.NativeDriver.Open()
   在 MySql.Data.MySqlClient.Driver.Open()
   在 MySql.Data.MySqlClient.Driver.Create(MySqlConnectionStringBuilder settings)
   在 MySql.Data.MySqlClient.MySqlPool.CreateNewPooledConnection()
   在 MySql.Data.MySqlClient.MySqlPool.GetPooledConnection()
   在 MySql.Data.MySqlClient.MySqlPool.TryToGetDriver()
   在 MySql.Data.MySqlClient.MySqlPool.GetConnection()
   在 MySql.Data.MySqlClient.MySqlConnection.Open()
   在 HelloData.FrameWork.Data.DataBase.OpenCon(DbConnection connection) 位置 k:\HelloData\HelloData.FrameWork\Data\DataBase.cs:行号 208

Time：2013-07-02 23:42:01,199 [9] 
Access denied for user 'root'@'localhost' (using password: YES)MySql.Data.MySqlClient.MySqlException (0x80004005): Access denied for user 'root'@'localhost' (using password: YES)
   在 MySql.Data.MySqlClient.MySqlStream.ReadPacket()
   在 MySql.Data.MySqlClient.NativeDriver.AuthenticateNew(Boolean reset)
   在 MySql.Data.MySqlClient.NativeDriver.Authenticate(Boolean reset)
   在 MySql.Data.MySqlClient.NativeDriver.Open()
   在 MySql.Data.MySqlClient.Driver.Open()
   在 MySql.Data.MySqlClient.Driver.Create(MySqlConnectionStringBuilder settings)
   在 MySql.Data.MySqlClient.MySqlPool.CreateNewPooledConnection()
   在 MySql.Data.MySqlClient.MySqlPool.GetPooledConnection()
   在 MySql.Data.MySqlClient.MySqlPool.TryToGetDriver()
   在 MySql.Data.MySqlClient.MySqlPool.GetConnection()
   在 MySql.Data.MySqlClient.MySqlConnection.Open()
   在 System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   在 System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   在 System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   在 HelloData.FrameWork.Data.DataBase.ExeDataTable(String commandText) 位置 k:\HelloData\HelloData.FrameWork\Data\DataBase.cs:行号 434
