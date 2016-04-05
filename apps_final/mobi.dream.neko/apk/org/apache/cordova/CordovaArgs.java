package org.apache.cordova;

import android.util.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CordovaArgs
{
  private JSONArray baseArgs;
  
  public CordovaArgs(JSONArray paramJSONArray)
  {
    baseArgs = paramJSONArray;
  }
  
  public Object get(int paramInt)
    throws JSONException
  {
    return baseArgs.get(paramInt);
  }
  
  public byte[] getArrayBuffer(int paramInt)
    throws JSONException
  {
    return Base64.decode(baseArgs.getString(paramInt), 0);
  }
  
  public boolean getBoolean(int paramInt)
    throws JSONException
  {
    return baseArgs.getBoolean(paramInt);
  }
  
  public double getDouble(int paramInt)
    throws JSONException
  {
    return baseArgs.getDouble(paramInt);
  }
  
  public int getInt(int paramInt)
    throws JSONException
  {
    return baseArgs.getInt(paramInt);
  }
  
  public JSONArray getJSONArray(int paramInt)
    throws JSONException
  {
    return baseArgs.getJSONArray(paramInt);
  }
  
  public JSONObject getJSONObject(int paramInt)
    throws JSONException
  {
    return baseArgs.getJSONObject(paramInt);
  }
  
  public long getLong(int paramInt)
    throws JSONException
  {
    return baseArgs.getLong(paramInt);
  }
  
  public String getString(int paramInt)
    throws JSONException
  {
    return baseArgs.getString(paramInt);
  }
  
  public boolean isNull(int paramInt)
  {
    return baseArgs.isNull(paramInt);
  }
  
  public Object opt(int paramInt)
  {
    return baseArgs.opt(paramInt);
  }
  
  public boolean optBoolean(int paramInt)
  {
    return baseArgs.optBoolean(paramInt);
  }
  
  public double optDouble(int paramInt)
  {
    return baseArgs.optDouble(paramInt);
  }
  
  public int optInt(int paramInt)
  {
    return baseArgs.optInt(paramInt);
  }
  
  public JSONArray optJSONArray(int paramInt)
  {
    return baseArgs.optJSONArray(paramInt);
  }
  
  public JSONObject optJSONObject(int paramInt)
  {
    return baseArgs.optJSONObject(paramInt);
  }
  
  public long optLong(int paramInt)
  {
    return baseArgs.optLong(paramInt);
  }
  
  public String optString(int paramInt)
  {
    return baseArgs.optString(paramInt);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */