package com.inmobi.androidsdk.impl.imai.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.inmobi.androidsdk.impl.imai.IMAIClickEventList;
import com.inmobi.commons.db.ColumnData;
import com.inmobi.commons.db.ColumnData.ColumnType;
import com.inmobi.commons.db.DatabaseHandler;
import com.inmobi.commons.db.TableData;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;
import java.util.LinkedHashMap;

public class ClickDatabaseManager
  extends DatabaseHandler
{
  public static final String COLUMN_CLICK_ID = "clickid";
  public static final String COLUMN_CLICK_URL = "clickurl";
  public static final String COLUMN_FOLLOW_REDIRECT = "followredirect";
  public static final String COLUMN_PINGWV = "pingwv";
  public static final String COLUMN_RETRY_COUNT = "retrycount";
  public static final String COLUMN_TIMESTAMP = "timestamp";
  public static final String TABLE_CLICK = "clickevent";
  private static ClickDatabaseManager a;
  private int b = 1000;
  
  protected ClickDatabaseManager(Context paramContext, ArrayList<TableData> paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  private static TableData a()
  {
    TableData localTableData = new TableData();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    ColumnData localColumnData = new ColumnData();
    localColumnData.setPrimaryKey(true);
    localColumnData.setDataType(ColumnData.ColumnType.INTEGER);
    localColumnData.setMandatory(true);
    localLinkedHashMap.put("clickid", localColumnData);
    localColumnData = new ColumnData();
    localColumnData.setDataType(ColumnData.ColumnType.VARCHAR);
    localColumnData.setMandatory(true);
    localLinkedHashMap.put("clickurl", localColumnData);
    localColumnData = new ColumnData();
    localColumnData.setDataType(ColumnData.ColumnType.INTEGER);
    localColumnData.setMandatory(true);
    localLinkedHashMap.put("pingwv", localColumnData);
    localColumnData = new ColumnData();
    localColumnData.setDataType(ColumnData.ColumnType.INTEGER);
    localColumnData.setMandatory(true);
    localLinkedHashMap.put("followredirect", localColumnData);
    localColumnData = new ColumnData();
    localColumnData.setDataType(ColumnData.ColumnType.INTEGER);
    localColumnData.setMandatory(true);
    localLinkedHashMap.put("retrycount", localColumnData);
    localColumnData = new ColumnData();
    localColumnData.setDataType(ColumnData.ColumnType.INTEGER);
    localColumnData.setMandatory(true);
    localLinkedHashMap.put("timestamp", localColumnData);
    localTableData.setmColumns(localLinkedHashMap);
    localTableData.setmTableName("clickevent");
    return localTableData;
  }
  
  public static ClickDatabaseManager getInstance()
  {
    try
    {
      if (a == null)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).add(a());
        a = new ClickDatabaseManager(InternalSDKUtil.getContext(), (ArrayList)localObject1);
      }
      localObject1 = a;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject1;
        Log.internal("[InMobi]-[Network]-4.4.1", "Exception getting DB Manager Instance", localException);
        Object localObject2 = null;
      }
    }
    finally {}
    return (ClickDatabaseManager)localObject1;
  }
  
  /* Error */
  public boolean deleteClickEvents(ArrayList<Long> paramArrayList)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +95 -> 98
    //   6: aload_1
    //   7: invokevirtual 121	java/util/ArrayList:isEmpty	()Z
    //   10: ifne +88 -> 98
    //   13: aload_0
    //   14: invokevirtual 124	com/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager:open	()V
    //   17: aload_1
    //   18: invokevirtual 128	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   21: astore_1
    //   22: aload_1
    //   23: invokeinterface 133 1 0
    //   28: ifeq +60 -> 88
    //   31: aload_1
    //   32: invokeinterface 137 1 0
    //   37: checkcast 139	java/lang/Long
    //   40: invokevirtual 143	java/lang/Long:longValue	()J
    //   43: lstore_2
    //   44: aload_0
    //   45: ldc 26
    //   47: new 145	java/lang/StringBuilder
    //   50: dup
    //   51: ldc -109
    //   53: invokespecial 149	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: lload_2
    //   57: invokevirtual 153	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   60: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: aconst_null
    //   64: invokevirtual 161	com/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   67: pop
    //   68: goto -46 -> 22
    //   71: astore_1
    //   72: ldc 107
    //   74: ldc -93
    //   76: aload_1
    //   77: invokestatic 115	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   80: iconst_0
    //   81: istore 4
    //   83: aload_0
    //   84: monitorexit
    //   85: iload 4
    //   87: ireturn
    //   88: aload_0
    //   89: invokevirtual 166	com/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager:close	()V
    //   92: iconst_1
    //   93: istore 4
    //   95: goto -12 -> 83
    //   98: iconst_0
    //   99: istore 4
    //   101: goto -18 -> 83
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	ClickDatabaseManager
    //   0	109	1	paramArrayList	ArrayList<Long>
    //   43	14	2	l	long
    //   81	19	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	22	71	java/lang/Exception
    //   22	68	71	java/lang/Exception
    //   88	92	71	java/lang/Exception
    //   6	22	104	finally
    //   22	68	104	finally
    //   72	80	104	finally
    //   88	92	104	finally
  }
  
  public IMAIClickEventList getClickEvents(int paramInt)
  {
    for (;;)
    {
      ClickData localClickData;
      try
      {
        IMAIClickEventList localIMAIClickEventList = new IMAIClickEventList();
        try
        {
          open();
          Cursor localCursor = getNRows("clickevent", "timestamp", paramInt);
          localCursor.moveToFirst();
          localClickData = new ClickData();
          localClickData.setClickId(localCursor.getLong(0));
          localClickData.setClickUrl(localCursor.getString(1));
          if (1 != localCursor.getInt(2)) {
            continue;
          }
          localClickData.setPingWv(true);
          if (1 != localCursor.getInt(3)) {
            break label178;
          }
          localClickData.setFollowRedirect(true);
          localClickData.setRetryCount(localCursor.getInt(4));
          localClickData.setTimestamp(localCursor.getLong(5));
          localIMAIClickEventList.add(localClickData);
          if (localCursor.moveToNext()) {
            continue;
          }
          localCursor.close();
          close();
        }
        catch (Exception localException)
        {
          Log.internal("[InMobi]-4.4.1", "Failed to get clicks from db", localException);
          continue;
        }
        return localIMAIClickEventList;
      }
      finally {}
      localClickData.setPingWv(false);
      continue;
      label178:
      localClickData.setFollowRedirect(false);
    }
  }
  
  public int getNoOfEvents()
  {
    try
    {
      open();
      int i = getInstance().getNoOfRows("clickevent", null, null);
      close();
      return i;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception getting no of click events", localException);
    }
    return 0;
  }
  
  public void insertClick(ClickData paramClickData)
  {
    try
    {
      open();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("timestamp", Long.valueOf(paramClickData.getTimestamp()));
      localContentValues.put("clickurl", paramClickData.getClickUrl());
      localContentValues.put("pingwv", Boolean.valueOf(paramClickData.isPingWv()));
      localContentValues.put("retrycount", Integer.valueOf(paramClickData.getRetryCount()));
      localContentValues.put("followredirect", Boolean.valueOf(paramClickData.isFollowRedirects()));
      if (getTableSize("clickevent") >= b)
      {
        paramClickData = executeQuery("SELECT clickid FROM clickevent WHERE timestamp= (SELECT MIN(timestamp) FROM clickevent Limit 1);", null);
        paramClickData.moveToFirst();
        long l = paramClickData.getLong(0);
        paramClickData.close();
        delete("clickevent", "clickid = " + l, null);
      }
      insert("clickevent", localContentValues);
      close();
    }
    catch (Exception paramClickData)
    {
      for (;;)
      {
        Log.internal("[InMobi]-4.4.1", "Failed to insert click event to db", paramClickData);
      }
    }
    finally {}
  }
  
  public void setDBLimit(int paramInt)
  {
    if (paramInt > 0) {
      b = paramInt;
    }
  }
  
  /* Error */
  public boolean updateRetryCount(ArrayList<ClickData> paramArrayList)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +179 -> 182
    //   6: aload_1
    //   7: invokevirtual 121	java/util/ArrayList:isEmpty	()Z
    //   10: ifne +172 -> 182
    //   13: aload_0
    //   14: invokevirtual 124	com/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager:open	()V
    //   17: aload_1
    //   18: invokevirtual 128	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   21: astore_1
    //   22: aload_1
    //   23: invokeinterface 133 1 0
    //   28: ifeq +144 -> 172
    //   31: aload_1
    //   32: invokeinterface 137 1 0
    //   37: checkcast 183	com/inmobi/androidsdk/impl/imai/db/ClickData
    //   40: astore_2
    //   41: new 238	android/content/ContentValues
    //   44: dup
    //   45: invokespecial 239	android/content/ContentValues:<init>	()V
    //   48: astore_3
    //   49: aload_3
    //   50: ldc 8
    //   52: aload_2
    //   53: invokevirtual 301	com/inmobi/androidsdk/impl/imai/db/ClickData:getClickId	()J
    //   56: invokestatic 246	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   59: invokevirtual 249	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   62: aload_3
    //   63: ldc 11
    //   65: aload_2
    //   66: invokevirtual 252	com/inmobi/androidsdk/impl/imai/db/ClickData:getClickUrl	()Ljava/lang/String;
    //   69: invokevirtual 255	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload_3
    //   73: ldc 14
    //   75: aload_2
    //   76: invokevirtual 280	com/inmobi/androidsdk/impl/imai/db/ClickData:isFollowRedirects	()Z
    //   79: invokestatic 263	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   82: invokevirtual 266	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   85: aload_3
    //   86: ldc 17
    //   88: aload_2
    //   89: invokevirtual 258	com/inmobi/androidsdk/impl/imai/db/ClickData:isPingWv	()Z
    //   92: invokestatic 263	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   95: invokevirtual 266	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   98: aload_3
    //   99: ldc 20
    //   101: aload_2
    //   102: invokevirtual 269	com/inmobi/androidsdk/impl/imai/db/ClickData:getRetryCount	()I
    //   105: iconst_1
    //   106: iadd
    //   107: invokestatic 274	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   110: invokevirtual 277	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   113: aload_3
    //   114: ldc 23
    //   116: aload_2
    //   117: invokevirtual 242	com/inmobi/androidsdk/impl/imai/db/ClickData:getTimestamp	()J
    //   120: invokestatic 246	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   123: invokevirtual 249	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   126: aload_0
    //   127: ldc 26
    //   129: aload_3
    //   130: ldc_w 303
    //   133: iconst_1
    //   134: anewarray 305	java/lang/String
    //   137: dup
    //   138: iconst_0
    //   139: aload_2
    //   140: invokevirtual 301	com/inmobi/androidsdk/impl/imai/db/ClickData:getClickId	()J
    //   143: invokestatic 308	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   146: aastore
    //   147: invokevirtual 312	com/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    //   150: pop2
    //   151: goto -129 -> 22
    //   154: astore_1
    //   155: ldc 107
    //   157: ldc_w 314
    //   160: aload_1
    //   161: invokestatic 115	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   164: iconst_0
    //   165: istore 4
    //   167: aload_0
    //   168: monitorexit
    //   169: iload 4
    //   171: ireturn
    //   172: aload_0
    //   173: invokevirtual 166	com/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager:close	()V
    //   176: iconst_1
    //   177: istore 4
    //   179: goto -12 -> 167
    //   182: iconst_0
    //   183: istore 4
    //   185: goto -18 -> 167
    //   188: astore_1
    //   189: aload_0
    //   190: monitorexit
    //   191: aload_1
    //   192: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	ClickDatabaseManager
    //   0	193	1	paramArrayList	ArrayList<ClickData>
    //   40	100	2	localClickData	ClickData
    //   48	82	3	localContentValues	ContentValues
    //   165	19	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	22	154	java/lang/Exception
    //   22	151	154	java/lang/Exception
    //   172	176	154	java/lang/Exception
    //   6	22	188	finally
    //   22	151	188	finally
    //   155	164	188	finally
    //   172	176	188	finally
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.imai.db.ClickDatabaseManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */