package com.millennialmedia.android;

import org.json.JSONException;
import org.json.JSONObject;

class MMJSResponse
{
  static final int ERROR = 0;
  static final int SUCCESS = 1;
  String className;
  byte[] dataResponse;
  String methodName;
  Object response;
  int result;
  
  static MMJSResponse responseWithError()
  {
    return responseWithError("An unknown error occured.");
  }
  
  static MMJSResponse responseWithError(String paramString)
  {
    MMJSResponse localMMJSResponse = new MMJSResponse();
    result = 0;
    response = paramString;
    return localMMJSResponse;
  }
  
  static MMJSResponse responseWithSuccess()
  {
    return responseWithSuccess("Success.");
  }
  
  static MMJSResponse responseWithSuccess(String paramString)
  {
    MMJSResponse localMMJSResponse = new MMJSResponse();
    result = 1;
    response = paramString;
    return localMMJSResponse;
  }
  
  String toJSONString()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if (className != null) {
        localJSONObject.put("class", className);
      }
      if (methodName != null) {
        localJSONObject.put("call", methodName);
      }
      localJSONObject.put("result", result);
      if (response != null) {
        localJSONObject.put("response", response);
      }
      for (;;)
      {
        return localJSONObject.toString();
        if (dataResponse == null) {
          break;
        }
        localJSONObject.put("response", Base64.encodeToString(dataResponse, false));
      }
      return "";
    }
    catch (JSONException localJSONException)
    {
      MMSDK.Log.e(localJSONException.getMessage());
      return "";
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMJSResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */