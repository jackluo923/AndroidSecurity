package jp.innovationplus.ipp.client;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import jp.innovationplus.ipp.core.IPPException;
import jp.innovationplus.ipp.core.IPPQueryCallback;
import jp.innovationplus.ipp.jsontype.IPPGeoLocation;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public final class IPPGeoLocationClient
  extends _HttpURLConnection
{
  private static final String IPP_GEOLOCATIONS_PATH = "/geolocations";
  private static final String IPP_GEOLOCATION_PATH = "/geolocation";
  
  public IPPGeoLocationClient(Context paramContext)
  {
    super(paramContext, "/geolocation");
  }
  
  public void create(IPPGeoLocation paramIPPGeoLocation, IPPQueryCallback<String> paramIPPQueryCallback)
    throws IPPException
  {
    super.ippPostRequest(String.class, paramIPPGeoLocation, paramIPPQueryCallback);
  }
  
  public void createAll(IPPGeoLocation[] paramArrayOfIPPGeoLocation, IPPQueryCallback<Void> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/geolocations");
    super.ippPostRequest(Void.class, paramArrayOfIPPGeoLocation, paramIPPQueryCallback);
  }
  
  public void delete(String paramString, IPPQueryCallback<String> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/geolocation/" + paramString);
    super.ippDeleteRequest(String.class, paramIPPQueryCallback);
  }
  
  public void get(String paramString, IPPQueryCallback<IPPGeoLocation> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/geolocation/" + paramString);
    super.ippGetRequest(IPPGeoLocation.class, paramIPPQueryCallback);
  }
  
  public void get(IPPQueryCallback<IPPGeoLocation> paramIPPQueryCallback)
    throws IPPException
  {
    super.ippGetRequest(IPPGeoLocation.class, paramIPPQueryCallback);
  }
  
  public void query(QueryCondition paramQueryCondition, IPPQueryCallback<IPPGeoLocation[]> paramIPPQueryCallback)
    throws IPPException
  {
    super.setResourcePath("/geolocations");
    super.ippGetRequest(IPPGeoLocation[].class, paramQueryCondition.build(), paramIPPQueryCallback);
  }
  
  public static class QueryCondition
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
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client.IPPGeoLocationClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */