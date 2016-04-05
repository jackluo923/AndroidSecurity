package org.apache.cordova;

import org.json.JSONException;
import org.json.JSONObject;

public class GlobalizationError
  extends Exception
{
  public static final String FORMATTING_ERROR = "FORMATTING_ERROR";
  public static final String PARSING_ERROR = "PARSING_ERROR";
  public static final String PATTERN_ERROR = "PATTERN_ERROR";
  public static final String UNKNOWN_ERROR = "UNKNOWN_ERROR";
  private static final long serialVersionUID = 1L;
  int error = 0;
  
  public GlobalizationError() {}
  
  public GlobalizationError(String paramString)
  {
    if (paramString.equalsIgnoreCase("FORMATTING_ERROR")) {
      error = 1;
    }
    do
    {
      return;
      if (paramString.equalsIgnoreCase("PARSING_ERROR"))
      {
        error = 2;
        return;
      }
    } while (!paramString.equalsIgnoreCase("PATTERN_ERROR"));
    error = 3;
  }
  
  public int getErrorCode()
  {
    return error;
  }
  
  public String getErrorString()
  {
    switch (error)
    {
    default: 
      return "";
    case 0: 
      return "UNKNOWN_ERROR";
    case 1: 
      return "FORMATTING_ERROR";
    case 2: 
      return "PARSING_ERROR";
    }
    return "PATTERN_ERROR";
  }
  
  public JSONObject toJson()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("code", getErrorCode());
      localJSONObject.put("message", getErrorString());
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.GlobalizationError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */