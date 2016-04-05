package com.inmobi.commons.cache;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class ProductCacheConfig
  extends ProductConfig
{
  public static final int DEFAULT_EXPIRY = 432000;
  public static final int DEFAULT_INTERVAL = 60;
  public static final int DEFAULT_MAX_RETRY = 3;
  private static Timer a = new Timer();
  private AtomicBoolean b = new AtomicBoolean(false);
  private Map<String, String> c = new HashMap();
  private CacheController.Validator d = null;
  private RetryMechanism e = new RetryMechanism(3, 60000, a);
  private CacheController.Committer f;
  private long g;
  
  public ProductCacheConfig(JSONObject paramJSONObject)
  {
    try
    {
      loadFromJSON(paramJSONObject);
      return;
    }
    catch (Exception paramJSONObject)
    {
      Log.internal("[InMobi]-4.4.1", "JSON retrieved is invalid.");
    }
  }
  
  public ProductCacheConfig(JSONObject paramJSONObject, CacheController.Committer paramCommitter)
  {
    this(paramJSONObject);
    f = paramCommitter;
  }
  
  private void a()
  {
    String str;
    try
    {
      ProductCacheConfig.b localb = c();
      str = ProductCacheConfig.b.a(localb);
      if (str == null) {
        break label152;
      }
      if ((d != null) && (!d.validate(a(str)))) {
        throw new IOException("Invalid config.");
      }
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Error connecting to url, or " + getUrl() + " did not return 200. Purge cache update.", localException);
      throw localException;
    }
    setData(str);
    setTimestamp((int)(System.currentTimeMillis() / 1000L));
    g = ProductCacheConfig.b.b(localException);
    Log.internal("[InMobi]-4.4.1", "Product with url " + getUrl() + " accepted data " + getRawData());
    f.onCommit();
    return;
    label152:
    setTimestamp((int)(System.currentTimeMillis() / 1000L));
    g = ProductCacheConfig.b.b(localException);
    f.onCommit();
  }
  
  private void b()
  {
    if (!b.compareAndSet(false, true)) {
      return;
    }
    e.rescheduleTimer(new ProductCacheConfig.a(this));
  }
  
  private ProductCacheConfig.b c()
  {
    Object localObject2 = "";
    Object localObject1 = UIDUtil.bindToGetParam(c);
    if ((localObject1 != null) && (!"".equals(localObject1))) {
      if (getUrl().endsWith("?")) {
        localObject1 = getUrl() + (String)localObject1;
      }
    }
    Object localObject3;
    int i;
    for (;;)
    {
      localObject3 = new URL((String)localObject1);
      Log.internal("[InMobi]-4.4.1", "Sending request to " + (String)localObject1 + " to retreive cache..");
      localObject3 = (HttpURLConnection)((URL)localObject3).openConnection();
      InternalSDKUtil.addCommonPropertiesToConnection((HttpURLConnection)localObject3);
      ((HttpURLConnection)localObject3).setIfModifiedSince(g);
      ((HttpURLConnection)localObject3).setRequestMethod("GET");
      i = ((HttpURLConnection)localObject3).getResponseCode();
      if (i != 304) {
        break;
      }
      localObject1 = new ProductCacheConfig.b(this, null);
      ProductCacheConfig.b.a((ProductCacheConfig.b)localObject1, null);
      ProductCacheConfig.b.a((ProductCacheConfig.b)localObject1, ((HttpURLConnection)localObject3).getLastModified());
      return (ProductCacheConfig.b)localObject1;
      if (getUrl().contains("?"))
      {
        localObject1 = getUrl() + "&" + (String)localObject1;
      }
      else
      {
        localObject1 = getUrl() + "?" + (String)localObject1;
        continue;
        localObject1 = getUrl();
      }
    }
    if (i != 200) {
      throw new IOException("Server did not return 200. ");
    }
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(((HttpURLConnection)localObject3).getInputStream()));
    for (localObject1 = localObject2;; localObject1 = (String)localObject1 + (String)localObject2)
    {
      localObject2 = localBufferedReader.readLine();
      if (localObject2 == null) {
        break;
      }
    }
    localBufferedReader.close();
    localObject2 = new ProductCacheConfig.b(this, null);
    ProductCacheConfig.b.a((ProductCacheConfig.b)localObject2, (String)localObject1);
    ProductCacheConfig.b.a((ProductCacheConfig.b)localObject2, ((HttpURLConnection)localObject3).getLastModified());
    return (ProductCacheConfig.b)localObject2;
  }
  
  public ProductConfig getConfig()
  {
    return this;
  }
  
  public String getData(CacheController.Validator paramValidator)
  {
    if (paramValidator != null) {
      d = paramValidator;
    }
    setRetryNumber(0);
    int i = (int)(System.currentTimeMillis() / 1000L);
    if (getTimestamp() + getExpiry() - i <= 0) {
      b();
    }
    return getRawData();
  }
  
  public String getData(Map<String, String> paramMap, CacheController.Validator paramValidator)
  {
    if (paramMap != null) {
      c = paramMap;
    }
    return getData(paramValidator);
  }
  
  public Map<String, String> getMap()
  {
    return c;
  }
  
  public CacheController.Validator getValidator()
  {
    return d;
  }
  
  public final void loadFromJSON(JSONObject paramJSONObject)
  {
    setExpiry(InternalSDKUtil.getIntFromJSON(paramJSONObject, "expiry", 432000));
    setMaxRetry(InternalSDKUtil.getIntFromJSON(paramJSONObject, "maxRetry", 3));
    setRetryInterval(InternalSDKUtil.getIntFromJSON(paramJSONObject, "retryInterval", 60));
    g = InternalSDKUtil.getLongFromJSON(paramJSONObject, "lastModified", 0L);
    setUrl(InternalSDKUtil.getStringFromJSON(paramJSONObject, "url", ""));
    setProtocol(InternalSDKUtil.getStringFromJSON(paramJSONObject, "protocol", "json"));
    e = new RetryMechanism(getMaxRetry(), getRetryInterval() * 1000, a);
    setTimestamp(InternalSDKUtil.getIntFromJSON(paramJSONObject, "timestamp", 0));
    setData(InternalSDKUtil.getStringFromJSON(paramJSONObject, "data", null));
  }
  
  protected void reset()
  {
    setExpiry(0);
    setRetryInterval(0);
    setMaxRetry(0);
    setTimestamp(0);
    setUrl(null);
    setProtocol(null);
    setData(null);
  }
  
  public void setMap(Map<String, String> paramMap)
  {
    c = paramMap;
  }
  
  public void setValidator(CacheController.Validator paramValidator)
  {
    d = paramValidator;
  }
  
  /* Error */
  public JSONObject toJSON()
  {
    // Byte code:
    //   0: new 354	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 355	org/json/JSONObject:<init>	()V
    //   7: astore_1
    //   8: new 354	org/json/JSONObject
    //   11: dup
    //   12: new 106	java/lang/StringBuilder
    //   15: dup
    //   16: ldc_w 357
    //   19: invokespecial 109	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: invokevirtual 279	com/inmobi/commons/cache/ProductCacheConfig:getExpiry	()I
    //   26: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   29: ldc_w 362
    //   32: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_0
    //   36: invokevirtual 335	com/inmobi/commons/cache/ProductCacheConfig:getMaxRetry	()I
    //   39: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   42: ldc_w 364
    //   45: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_0
    //   49: invokevirtual 338	com/inmobi/commons/cache/ProductCacheConfig:getRetryInterval	()I
    //   52: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   55: ldc_w 366
    //   58: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_0
    //   62: invokevirtual 369	com/inmobi/commons/cache/ProductCacheConfig:getProtocol	()Ljava/lang/String;
    //   65: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc_w 371
    //   71: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_0
    //   75: invokevirtual 276	com/inmobi/commons/cache/ProductCacheConfig:getTimestamp	()I
    //   78: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: ldc_w 373
    //   84: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokespecial 374	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   93: astore_2
    //   94: aload_2
    //   95: ldc_w 318
    //   98: aload_0
    //   99: invokevirtual 113	com/inmobi/commons/cache/ProductCacheConfig:getUrl	()Ljava/lang/String;
    //   102: invokevirtual 378	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   105: pop
    //   106: aload_2
    //   107: ldc_w 342
    //   110: aload_0
    //   111: invokevirtual 152	com/inmobi/commons/cache/ProductCacheConfig:getRawData	()Ljava/lang/String;
    //   114: invokevirtual 378	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   117: pop
    //   118: aload_2
    //   119: ldc_w 312
    //   122: aload_0
    //   123: getfield 145	com/inmobi/commons/cache/ProductCacheConfig:g	J
    //   126: invokevirtual 381	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   129: pop
    //   130: aload_2
    //   131: areturn
    //   132: astore_2
    //   133: ldc 67
    //   135: new 106	java/lang/StringBuilder
    //   138: dup
    //   139: ldc_w 383
    //   142: invokespecial 109	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload_0
    //   146: invokevirtual 113	com/inmobi/commons/cache/ProductCacheConfig:getUrl	()Ljava/lang/String;
    //   149: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: ldc_w 385
    //   155: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: aload_2
    //   162: invokestatic 125	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   165: aload_1
    //   166: areturn
    //   167: astore_3
    //   168: aload_2
    //   169: astore_1
    //   170: aload_3
    //   171: astore_2
    //   172: goto -39 -> 133
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	175	0	this	ProductCacheConfig
    //   7	163	1	localObject1	Object
    //   93	38	2	localJSONObject	JSONObject
    //   132	37	2	localJSONException1	org.json.JSONException
    //   171	1	2	localObject2	Object
    //   167	4	3	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   8	94	132	org/json/JSONException
    //   94	130	167	org/json/JSONException
  }
  
  public String toString()
  {
    return toJSON().toString();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.ProductCacheConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */