package org.apache.cordova;

import org.json.JSONException;
import org.json.JSONObject;

public class FileUploadResult
{
  private long bytesSent = 0L;
  private String objectId = null;
  private String response = null;
  private int responseCode = -1;
  
  public long getBytesSent()
  {
    return bytesSent;
  }
  
  public String getObjectId()
  {
    return objectId;
  }
  
  public String getResponse()
  {
    return response;
  }
  
  public int getResponseCode()
  {
    return responseCode;
  }
  
  public void setBytesSent(long paramLong)
  {
    bytesSent = paramLong;
  }
  
  public void setObjectId(String paramString)
  {
    objectId = paramString;
  }
  
  public void setResponse(String paramString)
  {
    response = paramString;
  }
  
  public void setResponseCode(int paramInt)
  {
    responseCode = paramInt;
  }
  
  public JSONObject toJSONObject()
    throws JSONException
  {
    return new JSONObject("{bytesSent:" + bytesSent + ",responseCode:" + responseCode + ",response:" + JSONObject.quote(response) + ",objectId:" + JSONObject.quote(objectId) + "}");
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileUploadResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */