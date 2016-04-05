package jp.innovationplus.ipp.client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class IPPGeoLocationClient$QueryCondition
{
  private LinkedHashMap<String, String> mCondition = new LinkedHashMap();
  
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
  
  public QueryCondition setBound(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramDouble1).append(",").append(paramDouble3).append(",").append(paramDouble2).append(",").append(paramDouble4);
    mCondition.put("bound", localStringBuilder.toString());
    return this;
  }
  
  public QueryCondition setBoundByRadiusSquare(double paramDouble1, double paramDouble2, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramDouble1).append(",").append(paramDouble2);
    mCondition.put("latlon", localStringBuilder.toString());
    mCondition.put("radiusSquare", Integer.toString(paramInt));
    return this;
  }
  
  public QueryCondition setCount(int paramInt)
  {
    mCondition.put("count", String.valueOf(paramInt));
    return this;
  }
  
  public QueryCondition setSelf()
  {
    mCondition.put("self", String.valueOf(true));
    return this;
  }
  
  public QueryCondition setSince(long paramLong)
  {
    mCondition.put("since", String.valueOf(paramLong));
    return this;
  }
  
  public QueryCondition setUntil(long paramLong)
  {
    mCondition.put("until", String.valueOf(paramLong));
    return this;
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client.IPPGeoLocationClient.QueryCondition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */