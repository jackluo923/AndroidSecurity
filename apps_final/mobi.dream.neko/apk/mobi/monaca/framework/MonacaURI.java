package mobi.monaca.framework;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;

public class MonacaURI
{
  private static final String TAG = MonacaURI.class.getSimpleName();
  public static final String URL_ENCODE = MonacaApplication.getStringFromResource(R.string.encoding);
  private boolean hasUnusedFragment;
  private URI originalUri;
  private ArrayList<QueryParam> queryParamsArrayList;
  
  public MonacaURI(String paramString)
  {
    try
    {
      originalUri = new URI(paramString);
      parseQuery();
      if (originalUri.getFragment() != null) {}
      for (boolean bool = true;; bool = false)
      {
        hasUnusedFragment = bool;
        return;
      }
      return;
    }
    catch (URISyntaxException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  /* Error */
  public static String buildUrlWithQuery(String paramString, org.json.JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +14 -> 15
    //   4: aload_1
    //   5: ifnull +12 -> 17
    //   8: aload_1
    //   9: invokevirtual 75	org/json/JSONObject:length	()I
    //   12: ifne +5 -> 17
    //   15: aload_0
    //   16: areturn
    //   17: aload_1
    //   18: invokevirtual 79	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   21: astore_3
    //   22: new 81	java/lang/String
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 82	java/lang/String:<init>	(Ljava/lang/String;)V
    //   30: astore_2
    //   31: new 50	java/net/URI
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 52	java/net/URI:<init>	(Ljava/lang/String;)V
    //   39: invokevirtual 85	java/net/URI:getQuery	()Ljava/lang/String;
    //   42: ifnull +114 -> 156
    //   45: new 87	java/lang/StringBuilder
    //   48: dup
    //   49: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   52: aload_2
    //   53: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: getstatic 95	mobi/monaca/framework/psedo/R$string:and	I
    //   59: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   62: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: astore_2
    //   69: aload_2
    //   70: astore_0
    //   71: aload_3
    //   72: invokeinterface 104 1 0
    //   77: ifeq +221 -> 298
    //   80: aload_3
    //   81: invokeinterface 108 1 0
    //   86: checkcast 81	java/lang/String
    //   89: astore_2
    //   90: aload_2
    //   91: ifnull +97 -> 188
    //   94: aload_1
    //   95: aload_2
    //   96: invokevirtual 112	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   99: ifeq +89 -> 188
    //   102: new 87	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   109: aload_0
    //   110: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload_2
    //   114: getstatic 33	mobi/monaca/framework/MonacaURI:URL_ENCODE	Ljava/lang/String;
    //   117: invokestatic 118	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   120: getstatic 121	mobi/monaca/framework/psedo/R$string:dot	I
    //   123: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   126: getstatic 124	mobi/monaca/framework/psedo/R$string:dot_encoded	I
    //   129: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   132: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   135: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: getstatic 95	mobi/monaca/framework/psedo/R$string:and	I
    //   141: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   144: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: astore_2
    //   151: aload_2
    //   152: astore_0
    //   153: goto -82 -> 71
    //   156: new 87	java/lang/StringBuilder
    //   159: dup
    //   160: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   163: aload_2
    //   164: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: getstatic 131	mobi/monaca/framework/psedo/R$string:question	I
    //   170: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   173: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: astore_2
    //   180: aload_2
    //   181: astore_0
    //   182: goto -111 -> 71
    //   185: astore_1
    //   186: aload_0
    //   187: areturn
    //   188: aload_2
    //   189: ifnull -118 -> 71
    //   192: new 87	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   199: aload_0
    //   200: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: aload_2
    //   204: getstatic 33	mobi/monaca/framework/MonacaURI:URL_ENCODE	Ljava/lang/String;
    //   207: invokestatic 118	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   210: getstatic 121	mobi/monaca/framework/psedo/R$string:dot	I
    //   213: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   216: getstatic 124	mobi/monaca/framework/psedo/R$string:dot_encoded	I
    //   219: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   222: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   225: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: getstatic 134	mobi/monaca/framework/psedo/R$string:equal	I
    //   231: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   234: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload_1
    //   238: aload_2
    //   239: invokevirtual 138	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   242: getstatic 33	mobi/monaca/framework/MonacaURI:URL_ENCODE	Ljava/lang/String;
    //   245: invokestatic 118	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   248: getstatic 121	mobi/monaca/framework/psedo/R$string:dot	I
    //   251: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   254: getstatic 124	mobi/monaca/framework/psedo/R$string:dot_encoded	I
    //   257: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   260: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   263: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: getstatic 95	mobi/monaca/framework/psedo/R$string:and	I
    //   269: invokestatic 31	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   272: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: astore_2
    //   279: aload_2
    //   280: astore_0
    //   281: goto -210 -> 71
    //   284: astore_2
    //   285: getstatic 41	mobi/monaca/framework/MonacaURI:TAG	Ljava/lang/String;
    //   288: aload_2
    //   289: invokevirtual 141	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   292: invokestatic 147	mobi/monaca/framework/util/MyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   295: goto -224 -> 71
    //   298: aload_0
    //   299: invokestatic 150	mobi/monaca/framework/MonacaURI:trimLastChar	(Ljava/lang/String;)Ljava/lang/String;
    //   302: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	paramString	String
    //   0	303	1	paramJSONObject	org.json.JSONObject
    //   30	250	2	str	String
    //   284	5	2	localUnsupportedEncodingException	UnsupportedEncodingException
    //   21	60	3	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   31	69	185	java/net/URISyntaxException
    //   156	180	185	java/net/URISyntaxException
    //   94	151	284	java/io/UnsupportedEncodingException
    //   192	279	284	java/io/UnsupportedEncodingException
  }
  
  public static String removeSpecialChar(String paramString)
  {
    String str = paramString.replace("\\", "\\\\").replace("\"", "\\\\\"").replace("'", "\\\\'").replace("/", "\\/").replace("}", "\\}");
    MyLog.d(TAG, paramString);
    MyLog.d(TAG, str);
    return str;
  }
  
  public static String trimLastChar(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramString);
    localStringBuffer.deleteCharAt(paramString.length() - 1);
    return localStringBuffer.toString();
  }
  
  public String getOriginalUrl()
  {
    return originalUri.toString();
  }
  
  public String getQueryParamsContainingHtml(String paramString)
  {
    String str = MonacaApplication.getStringFromResource(R.string.script_queryparams_forward);
    Iterator localIterator = queryParamsArrayList.iterator();
    if (localIterator.hasNext())
    {
      localObject = (QueryParam)localIterator.next();
      if (((QueryParam)localObject).hasValue()) {}
      for (localObject = "\"" + removeSpecialChar(((QueryParam)localObject).getDecodedKey()) + "\":" + "\"" + removeSpecialChar(((QueryParam)localObject).getDecodedValue()) + "\",";; localObject = "\"" + removeSpecialChar(((QueryParam)localObject).getDecodedKey()) + "\":" + "null,")
      {
        str = str + (String)localObject;
        break;
      }
    }
    str = trimLastChar(str);
    str = str + MonacaApplication.getStringFromResource(R.string.script_queryparams_backward);
    paramString = new String(paramString);
    Object localObject = Pattern.compile("<head.*?>", 2).matcher(paramString);
    if (((Matcher)localObject).find()) {
      return ((Matcher)localObject).replaceFirst(((Matcher)localObject).group() + str);
    }
    return str + paramString;
  }
  
  public String getUrlWithoutOptions()
  {
    if ((originalUri.getRawQuery() == null) && (originalUri.getFragment() == null)) {
      return getOriginalUrl();
    }
    return originalUri.toString().replaceFirst("(#" + originalUri.getFragment() + ")$", "").toString().replace(MonacaApplication.getStringFromResource(R.string.question) + originalUri.getRawQuery(), "");
  }
  
  public boolean hasQueryParams()
  {
    return (queryParamsArrayList != null) && (!queryParamsArrayList.isEmpty());
  }
  
  public boolean hasUnusedFragment()
  {
    return hasUnusedFragment;
  }
  
  public void parseQuery()
  {
    if (originalUri.getRawQuery() != null)
    {
      String[] arrayOfString = originalUri.getRawQuery().split(MonacaApplication.getStringFromResource(R.string.and));
      queryParamsArrayList = new ArrayList();
      int i = 0;
      while (i < arrayOfString.length)
      {
        QueryParam localQueryParam = new QueryParam(arrayOfString[i]);
        if (!localQueryParam.isEmpty()) {
          queryParamsArrayList.add(localQueryParam);
        }
        i += 1;
      }
    }
    queryParamsArrayList = null;
  }
  
  public String popFragment()
  {
    if (hasUnusedFragment)
    {
      hasUnusedFragment = false;
      return originalUri.getFragment();
    }
    return null;
  }
  
  public class QueryParam
  {
    private String key;
    private String value;
    
    public QueryParam(String paramString)
    {
      this$1 = paramString.split(MonacaApplication.getStringFromResource(R.string.equal));
      if ((MonacaURI.this == null) || (MonacaURI.this.length < 2))
      {
        key = paramString;
        value = null;
        if (key.equals("")) {
          key = null;
        }
        return;
      }
      key = MonacaURI.this[0];
      value = MonacaURI.this[1];
    }
    
    public String getDecodedKey()
    {
      try
      {
        String str = URLDecoder.decode(key, MonacaURI.URL_ENCODE);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
      return key;
    }
    
    public String getDecodedValue()
    {
      try
      {
        String str = URLDecoder.decode(value, MonacaURI.URL_ENCODE);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
      return value;
    }
    
    public boolean hasValue()
    {
      return value != null;
    }
    
    public boolean isEmpty()
    {
      return (key == null) && (value == null);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaURI
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */