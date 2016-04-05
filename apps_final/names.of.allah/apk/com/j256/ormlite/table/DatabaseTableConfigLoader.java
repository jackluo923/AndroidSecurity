package com.j256.ormlite.table;

import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.DatabaseFieldConfigLoader;
import com.j256.ormlite.misc.SqlExceptionUtil;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DatabaseTableConfigLoader
{
  private static final String CONFIG_FILE_END_MARKER = "# --table-end--";
  private static final String CONFIG_FILE_FIELDS_END = "# --table-fields-end--";
  private static final String CONFIG_FILE_FIELDS_START = "# --table-fields-start--";
  private static final String CONFIG_FILE_START_MARKER = "# --table-start--";
  private static final String FIELD_NAME_DATA_CLASS = "dataClass";
  private static final String FIELD_NAME_TABLE_NAME = "tableName";
  
  public static <T> DatabaseTableConfig<T> fromReader(BufferedReader paramBufferedReader)
  {
    DatabaseTableConfig localDatabaseTableConfig = new DatabaseTableConfig();
    for (int i = 0;; i = 1)
    {
      String str;
      do
      {
        try
        {
          do
          {
            for (;;)
            {
              str = paramBufferedReader.readLine();
              if ((str == null) || (str.equals("# --table-end--"))) {
                break label134;
              }
              if (!str.equals("# --table-fields-start--")) {
                break;
              }
              readFields(paramBufferedReader, localDatabaseTableConfig);
            }
          } while (str.length() == 0);
        }
        catch (IOException paramBufferedReader)
        {
          throw SqlExceptionUtil.create("Could not read DatabaseTableConfig from stream", paramBufferedReader);
        }
      } while ((str.startsWith("#")) || (str.equals("# --table-start--")));
      String[] arrayOfString = str.split("=", -2);
      if (arrayOfString.length != 2) {
        throw new SQLException("DatabaseTableConfig reading from stream cannot parse line: " + str);
      }
      readTableField(localDatabaseTableConfig, arrayOfString[0], arrayOfString[1]);
    }
    label134:
    if (i != 0) {
      return localDatabaseTableConfig;
    }
    return null;
  }
  
  public static List<DatabaseTableConfig<?>> loadDatabaseConfigFromReader(BufferedReader paramBufferedReader)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      DatabaseTableConfig localDatabaseTableConfig = fromReader(paramBufferedReader);
      if (localDatabaseTableConfig == null) {
        break;
      }
      localArrayList.add(localDatabaseTableConfig);
    }
    return localArrayList;
  }
  
  private static <T> void readFields(BufferedReader paramBufferedReader, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      for (;;)
      {
        Object localObject = paramBufferedReader.readLine();
        if ((localObject == null) || (((String)localObject).equals("# --table-fields-end--"))) {
          break;
        }
        localObject = DatabaseFieldConfigLoader.fromReader(paramBufferedReader);
        if (localObject == null) {
          break;
        }
        localArrayList.add(localObject);
      }
      paramDatabaseTableConfig.setFieldConfigs(localArrayList);
    }
    catch (IOException paramBufferedReader)
    {
      throw SqlExceptionUtil.create("Could not read next field from config file", paramBufferedReader);
    }
  }
  
  private static <T> void readTableField(DatabaseTableConfig<T> paramDatabaseTableConfig, String paramString1, String paramString2)
  {
    if (paramString1.equals("dataClass")) {}
    while (!paramString1.equals("tableName")) {
      try
      {
        paramDatabaseTableConfig.setDataClass(Class.forName(paramString2));
        return;
      }
      catch (ClassNotFoundException paramDatabaseTableConfig)
      {
        throw new IllegalArgumentException("Unknown class specified for dataClass: " + paramString2);
      }
    }
    paramDatabaseTableConfig.setTableName(paramString2);
  }
  
  public static <T> void write(BufferedWriter paramBufferedWriter, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    try
    {
      writeConfig(paramBufferedWriter, paramDatabaseTableConfig);
      return;
    }
    catch (IOException paramBufferedWriter)
    {
      throw SqlExceptionUtil.create("Could not write config to writer", paramBufferedWriter);
    }
  }
  
  private static <T> void writeConfig(BufferedWriter paramBufferedWriter, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    paramBufferedWriter.append("# --table-start--");
    paramBufferedWriter.newLine();
    if (paramDatabaseTableConfig.getDataClass() != null)
    {
      paramBufferedWriter.append("dataClass").append('=').append(paramDatabaseTableConfig.getDataClass().getName());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseTableConfig.getTableName() != null)
    {
      paramBufferedWriter.append("tableName").append('=').append(paramDatabaseTableConfig.getTableName());
      paramBufferedWriter.newLine();
    }
    paramBufferedWriter.append("# --table-fields-start--");
    paramBufferedWriter.newLine();
    if (paramDatabaseTableConfig.getFieldConfigs() != null)
    {
      Iterator localIterator = paramDatabaseTableConfig.getFieldConfigs().iterator();
      while (localIterator.hasNext()) {
        DatabaseFieldConfigLoader.write(paramBufferedWriter, (DatabaseFieldConfig)localIterator.next(), paramDatabaseTableConfig.getTableName());
      }
    }
    paramBufferedWriter.append("# --table-fields-end--");
    paramBufferedWriter.newLine();
    paramBufferedWriter.append("# --table-end--");
    paramBufferedWriter.newLine();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.table.DatabaseTableConfigLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */