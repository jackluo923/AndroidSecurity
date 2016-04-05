package jp.innovationplus.ipp.client;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import jp.innovationplus.ipp.core.IPPException;
import jp.innovationplus.ipp.core.IPPQueryCallback;
import jp.innovationplus.ipp.jsontype.IPPApplicationResource;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class IPPApplicationResourceClient
  extends _HttpURLConnection
{
  private static final String IPP_PUBLICS_PATH = "/pubs";
  private static final String IPP_PUBLIC_PATH = "/pub";
  
  public IPPApplicationResourceClient(Context paramContext)
  {
    super(paramContext, "/pub");
  }
  
  public void create(String paramString, IPPApplicationResource paramIPPApplicationResource, IPPQueryCallback<String> paramIPPQueryCallback)
    throws IPPException
  {
    try
    {
      super.setResourcePath("/pub" + "/" + paramString);
      super.ippPostRequest(String.class, paramIPPApplicationResource, paramIPPQueryCallback);
      return;
    }
    catch (Exception paramString)
    {
      while (!isDebugMessage()) {}
      Log.d("IPPKit", "can not instanciate resource class", paramString);
    }
  }
  
  public void createAll(String paramString, IPPApplicationResource[] paramArrayOfIPPApplicationResource, IPPQueryCallback<Void> paramIPPQueryCallback)
    throws IPPException
  {
    try
    {
      super.setResourcePath("/pubs" + "/" + paramString);
      super.ippPostRequest(Void.class, paramArrayOfIPPApplicationResource, paramIPPQueryCallback);
      return;
    }
    catch (Exception paramString)
    {
      while (!isDebugMessage()) {}
      Log.d("IPPKit", "can not instanciate resource class", paramString);
    }
  }
  
  public <T extends IPPApplicationResource> void delete(String paramString1, String paramString2, IPPQueryCallback<String> paramIPPQueryCallback)
    throws IPPException
  {
    try
    {
      super.setResourcePath("/pub" + "/" + paramString1 + "/" + paramString2);
      super.ippDeleteRequest(String.class, paramIPPQueryCallback);
      return;
    }
    catch (Exception paramString1)
    {
      while (!isDebugMessage()) {}
      Log.d("IPPKit", "can not instanciate resource class", paramString1);
    }
  }
  
  public <T extends IPPApplicationResource> void get(String paramString1, String paramString2, IPPQueryCallback<T> paramIPPQueryCallback, T... paramVarArgs)
    throws IPPException
  {
    try
    {
      super.setResourcePath("/pub" + "/" + paramString1 + "/" + paramString2);
      super.ippGetRequest(paramVarArgs.getClass().getComponentType(), paramIPPQueryCallback);
      return;
    }
    catch (Exception paramString1)
    {
      while (!isDebugMessage()) {}
      Log.d("IPPKit", "can not instanciate resource class", paramString1);
    }
  }
  
  public <T extends IPPApplicationResource> void query(String paramString, QueryCondition paramQueryCondition, IPPQueryCallback<T[]> paramIPPQueryCallback, T... paramVarArgs)
    throws IPPException
  {
    try
    {
      super.setResourcePath("/pubs" + "/" + paramString);
      super.ippGetRequest(paramVarArgs.getClass(), paramQueryCondition.build(), paramIPPQueryCallback);
      return;
    }
    catch (Exception paramString)
    {
      while (!isDebugMessage()) {}
      Log.d("IPPKit", "can not instanciate resource class", paramString);
    }
  }
  
  public static class QueryCondition
  {
    private LinkedHashMap<String, String> mCondition = new LinkedHashMap();
    
    public QueryCondition and()
    {
      String str = (String)mCondition.get("query");
      if ((str == null) || (str.endsWith("."))) {
        throw new RuntimeException("you must not call 'and()' continuously.");
      }
      str = str + ".AND.";
      mCondition.put("query", str);
      return this;
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
    
    /* Error */
    public QueryCondition eq(String paramString, Object paramObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 19	jp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition:mCondition	Ljava/util/LinkedHashMap;
      //   4: ldc 24
      //   6: invokevirtual 28	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   9: checkcast 30	java/lang/String
      //   12: astore_3
      //   13: aload_3
      //   14: ifnull +22 -> 36
      //   17: aload_3
      //   18: ldc 111
      //   20: invokevirtual 36	java/lang/String:endsWith	(Ljava/lang/String;)Z
      //   23: ifeq +13 -> 36
      //   26: new 38	java/lang/RuntimeException
      //   29: dup
      //   30: ldc 113
      //   32: invokespecial 43	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
      //   35: athrow
      //   36: new 115	org/json/JSONStringer
      //   39: dup
      //   40: invokespecial 116	org/json/JSONStringer:<init>	()V
      //   43: astore 4
      //   45: aload 4
      //   47: invokevirtual 120	org/json/JSONStringer:object	()Lorg/json/JSONStringer;
      //   50: aload_1
      //   51: invokevirtual 124	org/json/JSONStringer:key	(Ljava/lang/String;)Lorg/json/JSONStringer;
      //   54: aload_2
      //   55: invokevirtual 128	org/json/JSONStringer:value	(Ljava/lang/Object;)Lorg/json/JSONStringer;
      //   58: invokevirtual 131	org/json/JSONStringer:endObject	()Lorg/json/JSONStringer;
      //   61: pop
      //   62: aload_3
      //   63: ifnonnull +37 -> 100
      //   66: new 45	java/lang/StringBuilder
      //   69: dup
      //   70: ldc -123
      //   72: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   75: aload 4
      //   77: invokevirtual 134	org/json/JSONStringer:toString	()Ljava/lang/String;
      //   80: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   83: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   86: astore_1
      //   87: aload_0
      //   88: getfield 19	jp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition:mCondition	Ljava/util/LinkedHashMap;
      //   91: ldc 24
      //   93: aload_1
      //   94: invokevirtual 64	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   97: pop
      //   98: aload_0
      //   99: areturn
      //   100: new 45	java/lang/StringBuilder
      //   103: dup
      //   104: aload_3
      //   105: invokestatic 49	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   108: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   111: ldc -123
      //   113: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   116: aload 4
      //   118: invokevirtual 134	org/json/JSONStringer:toString	()Ljava/lang/String;
      //   121: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   124: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   127: astore_1
      //   128: goto -41 -> 87
      //   131: astore_1
      //   132: new 38	java/lang/RuntimeException
      //   135: dup
      //   136: aload_1
      //   137: invokespecial 137	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
      //   140: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	141	0	this	QueryCondition
      //   0	141	1	paramString	String
      //   0	141	2	paramObject	Object
      //   12	93	3	str	String
      //   43	74	4	localJSONStringer	org.json.JSONStringer
      // Exception table:
      //   from	to	target	type
      //   45	62	131	org/json/JSONException
      //   66	87	131	org/json/JSONException
      //   87	98	131	org/json/JSONException
      //   100	128	131	org/json/JSONException
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
 * Qualified Name:     jp.innovationplus.ipp.client.IPPApplicationResourceClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */