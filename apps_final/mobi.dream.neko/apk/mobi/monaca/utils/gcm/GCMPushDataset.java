package mobi.monaca.utils.gcm;

import java.io.Serializable;

public class GCMPushDataset
  implements Serializable
{
  public static final String KEY = "get_pushdata_key";
  private static final long serialVersionUID = -2053523995979076876L;
  private String extraJsonString;
  private String pushProjectId;
  
  public GCMPushDataset(String paramString1, String paramString2)
  {
    pushProjectId = paramString1;
    extraJsonString = paramString2;
  }
  
  public String getExtraJSONString()
  {
    return extraJsonString;
  }
  
  public String getPushProjectId()
  {
    return pushProjectId;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.gcm.GCMPushDataset
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */