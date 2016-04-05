package org.apache.cordova;

import android.util.Log;
import android.webkit.WebView;
import java.util.HashMap;
import org.apache.cordova.api.CordovaInterface;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ContactAccessor
{
  protected final String LOG_TAG = "ContactsAccessor";
  protected CordovaInterface mApp;
  protected WebView mView;
  
  protected HashMap<String, Boolean> buildPopulationSet(JSONArray paramJSONArray)
  {
    HashMap localHashMap = new HashMap();
    for (;;)
    {
      int i;
      try
      {
        if ((paramJSONArray.length() != 1) || (!paramJSONArray.getString(0).equals("*"))) {
          break label516;
        }
        localHashMap.put("displayName", Boolean.valueOf(true));
        localHashMap.put("name", Boolean.valueOf(true));
        localHashMap.put("nickname", Boolean.valueOf(true));
        localHashMap.put("phoneNumbers", Boolean.valueOf(true));
        localHashMap.put("emails", Boolean.valueOf(true));
        localHashMap.put("addresses", Boolean.valueOf(true));
        localHashMap.put("ims", Boolean.valueOf(true));
        localHashMap.put("organizations", Boolean.valueOf(true));
        localHashMap.put("birthday", Boolean.valueOf(true));
        localHashMap.put("note", Boolean.valueOf(true));
        localHashMap.put("urls", Boolean.valueOf(true));
        localHashMap.put("photos", Boolean.valueOf(true));
        localHashMap.put("categories", Boolean.valueOf(true));
        return localHashMap;
      }
      catch (JSONException paramJSONArray)
      {
        Log.e("ContactsAccessor", paramJSONArray.getMessage(), paramJSONArray);
        return localHashMap;
      }
      if (i < paramJSONArray.length())
      {
        String str = paramJSONArray.getString(i);
        if (str.startsWith("displayName"))
        {
          localHashMap.put("displayName", Boolean.valueOf(true));
        }
        else if (str.startsWith("name"))
        {
          localHashMap.put("displayName", Boolean.valueOf(true));
          localHashMap.put("name", Boolean.valueOf(true));
        }
        else if (str.startsWith("nickname"))
        {
          localHashMap.put("nickname", Boolean.valueOf(true));
        }
        else if (str.startsWith("phoneNumbers"))
        {
          localHashMap.put("phoneNumbers", Boolean.valueOf(true));
        }
        else if (str.startsWith("emails"))
        {
          localHashMap.put("emails", Boolean.valueOf(true));
        }
        else if (str.startsWith("addresses"))
        {
          localHashMap.put("addresses", Boolean.valueOf(true));
        }
        else if (str.startsWith("ims"))
        {
          localHashMap.put("ims", Boolean.valueOf(true));
        }
        else if (str.startsWith("organizations"))
        {
          localHashMap.put("organizations", Boolean.valueOf(true));
        }
        else if (str.startsWith("birthday"))
        {
          localHashMap.put("birthday", Boolean.valueOf(true));
        }
        else if (str.startsWith("note"))
        {
          localHashMap.put("note", Boolean.valueOf(true));
        }
        else if (str.startsWith("urls"))
        {
          localHashMap.put("urls", Boolean.valueOf(true));
        }
        else if (str.startsWith("photos"))
        {
          localHashMap.put("photos", Boolean.valueOf(true));
        }
        else if (str.startsWith("categories"))
        {
          localHashMap.put("categories", Boolean.valueOf(true));
        }
      }
      else
      {
        return localHashMap;
        label516:
        i = 0;
        continue;
      }
      i += 1;
    }
  }
  
  public abstract JSONObject getContactById(String paramString)
    throws JSONException;
  
  protected String getJsonString(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject2 = null;
    JSONObject localJSONObject1 = null;
    if (paramJSONObject != null) {}
    try
    {
      paramJSONObject = paramJSONObject.getString(paramString);
      localJSONObject1 = paramJSONObject;
      localJSONObject2 = paramJSONObject;
      if (paramJSONObject.equals("null"))
      {
        localJSONObject2 = paramJSONObject;
        Log.d("ContactsAccessor", paramString + " is string called 'null'");
        localJSONObject1 = null;
      }
      return localJSONObject1;
    }
    catch (JSONException paramJSONObject)
    {
      Log.d("ContactsAccessor", "Could not get = " + paramJSONObject.getMessage());
    }
    return localJSONObject2;
  }
  
  protected boolean isRequired(String paramString, HashMap<String, Boolean> paramHashMap)
  {
    paramString = (Boolean)paramHashMap.get(paramString);
    if (paramString == null) {
      return false;
    }
    return paramString.booleanValue();
  }
  
  public abstract boolean remove(String paramString);
  
  public abstract String save(JSONObject paramJSONObject);
  
  public abstract JSONArray search(JSONArray paramJSONArray, JSONObject paramJSONObject);
  
  class WhereOptions
  {
    private String where;
    private String[] whereArgs;
    
    WhereOptions() {}
    
    public String getWhere()
    {
      return where;
    }
    
    public String[] getWhereArgs()
    {
      return whereArgs;
    }
    
    public void setWhere(String paramString)
    {
      where = paramString;
    }
    
    public void setWhereArgs(String[] paramArrayOfString)
    {
      whereArgs = paramArrayOfString;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.ContactAccessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */