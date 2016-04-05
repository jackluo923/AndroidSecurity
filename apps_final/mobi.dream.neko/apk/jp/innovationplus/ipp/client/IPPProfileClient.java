package jp.innovationplus.ipp.client;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import jp.innovationplus.ipp.core.IPPException;
import jp.innovationplus.ipp.core.IPPQueryCallback;
import jp.innovationplus.ipp.jsontype.IPPProfile;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class IPPProfileClient
  extends _HttpURLConnection
{
  private static final String IPP_PROFILES_PATH = "/profiles";
  private static final String IPP_PROFILE_PATH = "/profile";
  
  public IPPProfileClient(Context paramContext)
  {
    super.setResourcePath("/profile");
    super.setContext(paramContext);
  }
  
  public void get(Fields paramFields, IPPQueryCallback<IPPProfile> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/profile");
    super.ippGetRequest(IPPProfile.class, paramFields.build(), paramIPPQueryCallback);
  }
  
  public void get(IPPQueryCallback<IPPProfile> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/profile");
    super.ippGetRequest(IPPProfile.class, paramIPPQueryCallback);
  }
  
  public void query(Fields paramFields, IPPQueryCallback<IPPProfile[]> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/profiles");
    super.ippGetRequest(IPPProfile[].class, paramFields.build(), paramIPPQueryCallback);
  }
  
  public void query(IPPQueryCallback<IPPProfile[]> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/profiles");
    super.ippGetRequest(IPPProfile[].class, paramIPPQueryCallback);
  }
  
  public static class Fields
  {
    private LinkedHashMap<String, String> mCondition = new LinkedHashMap();
    
    private String descriptionFields(String[] paramArrayOfString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      for (;;)
      {
        if (i >= paramArrayOfString.length) {
          return localStringBuilder.toString();
        }
        localStringBuilder.append(paramArrayOfString[i]);
        if (i != paramArrayOfString.length - 1) {
          localStringBuilder.append(",");
        }
        i += 1;
      }
    }
    
    public List<NameValuePair> build()
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = mCondition.keySet().iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return localArrayList;
        }
        String str = (String)localIterator.next();
        localArrayList.add(new BasicNameValuePair(str, (String)mCondition.get(str)));
      }
    }
    
    public void clear()
    {
      mCondition.clear();
    }
    
    public Fields setFields(String[] paramArrayOfString)
    {
      if (paramArrayOfString.length > 0) {
        mCondition.put("fields", descriptionFields(paramArrayOfString));
      }
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client.IPPProfileClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */