package jp.innovationplus.ipp.jsontype;

import java.util.LinkedHashMap;

public class IPPApplicationResource
  extends LinkedHashMap<String, Object>
{
  public String getResource_id()
  {
    return (String)get("resource_id");
  }
  
  public long getTimestamp()
  {
    return ((Long)get("timestamp")).longValue();
  }
  
  public void setResource_id(String paramString)
  {
    put("resource_id", paramString);
  }
  
  public void setTimestamp(long paramLong)
  {
    put("timestamp", Long.valueOf(paramLong));
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.jsontype.IPPApplicationResource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */