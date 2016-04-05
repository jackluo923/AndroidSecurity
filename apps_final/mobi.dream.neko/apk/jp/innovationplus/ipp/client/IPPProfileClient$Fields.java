package jp.innovationplus.ipp.client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class IPPProfileClient$Fields
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

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client.IPPProfileClient.Fields
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */