package org.apache.cordova;

import org.json.JSONException;
import org.json.JSONObject;

public class FileProgressResult
{
  private boolean lengthComputable = false;
  private long loaded = 0L;
  private long total = 0L;
  
  public boolean getLengthComputable()
  {
    return lengthComputable;
  }
  
  public long getLoaded()
  {
    return loaded;
  }
  
  public long getTotal()
  {
    return total;
  }
  
  public void setLengthComputable(boolean paramBoolean)
  {
    lengthComputable = paramBoolean;
  }
  
  public void setLoaded(long paramLong)
  {
    loaded = paramLong;
  }
  
  public void setTotal(long paramLong)
  {
    total = paramLong;
  }
  
  public JSONObject toJSONObject()
    throws JSONException
  {
    StringBuilder localStringBuilder = new StringBuilder().append("{loaded:").append(loaded).append(",total:").append(total).append(",lengthComputable:");
    if (lengthComputable) {}
    for (String str = "true";; str = "false") {
      return new JSONObject(str + "}");
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileProgressResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */