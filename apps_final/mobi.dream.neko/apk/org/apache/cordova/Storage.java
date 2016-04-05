package org.apache.cordova;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import java.io.File;
import java.io.PrintStream;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Storage
  extends CordovaPlugin
{
  private static final String ALTER = "alter";
  private static final String CREATE = "create";
  private static final String DROP = "drop";
  private static final String TRUNCATE = "truncate";
  String dbName = null;
  SQLiteDatabase myDb = null;
  String path = null;
  
  private boolean isDDL(String paramString)
  {
    paramString = paramString.toLowerCase();
    return (paramString.startsWith("drop")) || (paramString.startsWith("create")) || (paramString.startsWith("alter")) || (paramString.startsWith("truncate"));
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    boolean bool = false;
    if (paramString.equals("openDatabase")) {
      openDatabase(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getString(2), paramJSONArray.getLong(3));
    }
    for (;;)
    {
      paramCallbackContext.success();
      bool = true;
      do
      {
        return bool;
      } while (!paramString.equals("executeSql"));
      if (!paramJSONArray.isNull(1)) {
        break;
      }
      paramString = new String[0];
      executeSql(paramJSONArray.getString(0), paramString, paramJSONArray.getString(2));
    }
    JSONArray localJSONArray = paramJSONArray.getJSONArray(1);
    int j = localJSONArray.length();
    String[] arrayOfString = new String[j];
    int i = 0;
    for (;;)
    {
      paramString = arrayOfString;
      if (i >= j) {
        break;
      }
      arrayOfString[i] = localJSONArray.getString(i);
      i += 1;
    }
  }
  
  public void executeSql(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    try
    {
      if (isDDL(paramString1))
      {
        myDb.execSQL(paramString1);
        webView.sendJavascript("cordova.require('cordova/plugin/android/storage').completeQuery('" + paramString2 + "', '');");
        return;
      }
      paramString1 = myDb.rawQuery(paramString1, paramArrayOfString);
      processResults(paramString1, paramString2);
      paramString1.close();
      return;
    }
    catch (SQLiteException paramString1)
    {
      paramString1.printStackTrace();
      System.out.println("Storage.executeSql(): Error=" + paramString1.getMessage());
      webView.sendJavascript("cordova.require('cordova/plugin/android/storage').failQuery('" + paramString1.getMessage() + "','" + paramString2 + "');");
    }
  }
  
  public void onDestroy()
  {
    if (myDb != null)
    {
      myDb.close();
      myDb = null;
    }
  }
  
  public void onReset()
  {
    onDestroy();
  }
  
  public void openDatabase(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    if (myDb != null) {
      myDb.close();
    }
    if (path == null) {
      path = cordova.getActivity().getApplicationContext().getDir("database", 0).getPath();
    }
    dbName = (path + File.separator + paramString1 + ".db");
    paramString1 = new File(path + File.pathSeparator + paramString1 + ".db");
    if (paramString1.exists())
    {
      paramString2 = new File(path);
      paramString3 = new File(dbName);
      paramString2.mkdirs();
      paramString1.renameTo(paramString3);
    }
    myDb = SQLiteDatabase.openOrCreateDatabase(dbName, null);
  }
  
  public void processResults(Cursor paramCursor, String paramString)
  {
    Object localObject = "[]";
    if (paramCursor.moveToFirst())
    {
      localObject = new JSONArray();
      int j = paramCursor.getColumnCount();
      do
      {
        JSONObject localJSONObject = new JSONObject();
        int i = 0;
        for (;;)
        {
          if (i < j) {}
          try
          {
            localJSONObject.put(paramCursor.getColumnName(i), paramCursor.getString(i));
            i += 1;
          }
          catch (JSONException localJSONException)
          {
            for (;;)
            {
              localJSONException.printStackTrace();
            }
          }
        }
        ((JSONArray)localObject).put(localJSONObject);
      } while (paramCursor.moveToNext());
      localObject = ((JSONArray)localObject).toString();
    }
    webView.sendJavascript("cordova.require('cordova/plugin/android/storage').completeQuery('" + paramString + "', " + (String)localObject + ");");
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Storage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */