package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.millennialmedia.google.gson.Gson;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class HandShake
{
  static final String BASE_URL = "http://androidsdk.ads.mp.mydas.mobi/";
  static final String BASE_URL_PATH = "getAd.php5?";
  private static final String HANDSHAKE_FALLBACK_URL = "http://ads.mp.mydas.mobi/appConfigServlet?apid=";
  private static final String HANDSHAKE_HTTPS_SCHEME = "https://";
  private static final String HANDSHAKE_HTTP_SCHEME = "http://";
  private static final String HANDSHAKE_URL_HOST = "ads.mp.mydas.mobi/";
  private static final String HANDSHAKE_URL_OVERRIDE_PARMS = "?apid=";
  private static final String HANDSHAKE_URL_PARMS = "appConfigServlet?apid=";
  private static final String KEY_CACHED_VIDEOS = "handshake_cachedvideos5.0";
  private static String adUrl = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
  static String apid = "28913";
  private static boolean forceRefresh;
  private static String handShakeURL = "https://ads.mp.mydas.mobi/appConfigServlet?apid=";
  private static HandShake sharedInstance;
  long adRefreshSecs;
  private LinkedHashMap<String, HandShake.AdTypeHandShake> adTypeHandShakes = new LinkedHashMap();
  private WeakReference<Context> appContextRef;
  DTOCachedVideo[] cachedVideos;
  private WeakReference<Context> contextRef;
  long creativeCacheTimeout = 259200000L;
  private long deferredViewTimeout = 3600000L;
  String endSessionURL;
  private long handShakeCallback = 86400000L;
  private final Handler handler = new Handler(Looper.getMainLooper());
  boolean hardwareAccelerationEnabled;
  boolean kill = false;
  private long lastHandShake;
  String mmdid;
  String mmjsUrl;
  private String noVideosToCacheURL;
  private ArrayList<HandShake.Scheme> schemes = new ArrayList();
  private String schemesList;
  String startSessionURL;
  private Runnable updateHandShakeRunnable = new HandShake.2(this);
  
  private HandShake() {}
  
  private HandShake(Context paramContext)
  {
    contextRef = new WeakReference(paramContext);
    appContextRef = new WeakReference(paramContext.getApplicationContext());
    if ((forceRefresh) || (!loadHandShake(paramContext)) || (System.currentTimeMillis() - lastHandShake > handShakeCallback))
    {
      forceRefresh = false;
      lastHandShake = System.currentTimeMillis();
      requestHandshake(false);
    }
  }
  
  private void deserializeFromObj(JSONObject paramJSONObject)
  {
    int j = 0;
    Context localContext = (Context)contextRef.get();
    if (paramJSONObject == null) {
      return;
    }
    int i;
    label33:
    Object localObject3;
    Object localObject2;
    try
    {
      localObject1 = paramJSONObject.optJSONArray("errors");
      if (localObject1 != null)
      {
        i = 0;
        if (i < ((JSONArray)localObject1).length())
        {
          localObject3 = ((JSONArray)localObject1).optJSONObject(i);
          if (localObject3 == null) {
            break label522;
          }
          localObject2 = ((JSONObject)localObject3).optString("message", null);
          localObject3 = ((JSONObject)localObject3).optString("type", null);
          if ((localObject2 == null) || (localObject3 == null)) {
            break label522;
          }
          if (((String)localObject3).equalsIgnoreCase("log")) {
            MMSDK.Log.e((String)localObject2);
          } else if (((String)localObject3).equalsIgnoreCase("prompt")) {
            handler.post(new HandShake.3(this, localContext, (String)localObject2));
          }
        }
      }
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
      return;
    }
    Object localObject1 = paramJSONObject.optJSONObject("adtypes");
    if (localObject1 != null)
    {
      localObject2 = MMAdImpl.getAdTypes();
      i = 0;
      label161:
      if (i < localObject2.length)
      {
        localObject3 = ((JSONObject)localObject1).optJSONObject(localObject2[i]);
        if (localObject3 == null) {
          break label531;
        }
        HandShake.AdTypeHandShake localAdTypeHandShake = new HandShake.AdTypeHandShake(this);
        localAdTypeHandShake.deserializeFromObj((JSONObject)localObject3);
        localAdTypeHandShake.loadLastVideo(localContext, localObject2[i]);
        adTypeHandShakes.put(localObject2[i], localAdTypeHandShake);
        break label531;
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = paramJSONObject.optJSONArray("schemes");
        if (localObject1 != null)
        {
          i = j;
          if (schemes != null)
          {
            i = j;
            if (schemes.size() > 0)
            {
              schemes.removeAll(schemes);
              i = j;
            }
          }
          if (i < ((JSONArray)localObject1).length())
          {
            localObject2 = ((JSONArray)localObject1).optJSONObject(i);
            if (localObject2 == null) {
              break label540;
            }
            localObject3 = new HandShake.Scheme(this);
            ((HandShake.Scheme)localObject3).deserializeFromObj((JSONObject)localObject2);
            schemes.add(localObject3);
            break label540;
          }
        }
        adRefreshSecs = paramJSONObject.optLong("adrefresh", 0L);
        deferredViewTimeout = (paramJSONObject.optLong("deferredviewtimeout", 3600L) * 1000L);
        kill = paramJSONObject.optBoolean("kill");
        setAdUrl(localContext, paramJSONObject.optString("baseURL"));
        handShakeCallback = (paramJSONObject.optLong("handshakecallback", 86400L) * 1000L);
        creativeCacheTimeout = (paramJSONObject.optLong("creativeCacheTimeout", 259200L) * 1000L);
        hardwareAccelerationEnabled = paramJSONObject.optBoolean("hardwareAccelerationEnabled");
        startSessionURL = paramJSONObject.optString("startSessionURL");
        endSessionURL = paramJSONObject.optString("endSessionURL");
        mmjsUrl = paramJSONObject.optString("mmjs");
        handleCachedVideos(paramJSONObject, localContext);
        if ((TextUtils.isEmpty(mmjsUrl)) || (MRaid.isMRaidUpdated(localContext, mmjsUrl))) {
          break;
        }
        MRaid.downloadMraidJs((Context)appContextRef.get(), mmjsUrl);
        return;
      }
      finally {}
      label522:
      i += 1;
      break label33;
      label531:
      i += 1;
      break label161;
      label540:
      i += 1;
    }
  }
  
  static String getAdUrl()
  {
    return adUrl;
  }
  
  private void handleCachedVideos(JSONObject paramJSONObject, Context paramContext)
  {
    JSONArray localJSONArray = paramJSONObject.optJSONArray("cachedVideos");
    if (localJSONArray != null)
    {
      cachedVideos = ((DTOCachedVideo[])new Gson().fromJson(localJSONArray.toString(), DTOCachedVideo[].class));
      MMSDK.Log.d(cachedVideos.toString());
    }
    noVideosToCacheURL = paramJSONObject.optString("noVideosToCacheURL");
    if (cachedVideos != null) {
      PreCacheWorker.preCacheVideos(cachedVideos, paramContext, noVideosToCacheURL);
    }
  }
  
  private boolean isFirstLaunch(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    return paramContext.getSharedPreferences("MillennialMediaSettings", 0).getBoolean("firstlaunchHandshake", true);
  }
  
  private boolean loadHandShake(Context paramContext)
  {
    int j = 0;
    boolean bool2 = false;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
    if (localSharedPreferences == null) {
      return bool2;
    }
    boolean bool1;
    label54:
    Object localObject1;
    int i;
    Object localObject2;
    if (localSharedPreferences.contains("handshake_deferredviewtimeout"))
    {
      deferredViewTimeout = localSharedPreferences.getLong("handshake_deferredviewtimeout", deferredViewTimeout);
      bool1 = true;
      if (localSharedPreferences.contains("handshake_baseUrl"))
      {
        adUrl = localSharedPreferences.getString("handshake_baseUrl", adUrl);
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_callback"))
      {
        handShakeCallback = localSharedPreferences.getLong("handshake_callback", handShakeCallback);
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_hardwareAccelerationEnabled"))
      {
        hardwareAccelerationEnabled = localSharedPreferences.getBoolean("handshake_hardwareAccelerationEnabled", false);
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_startSessionURL"))
      {
        startSessionURL = localSharedPreferences.getString("handshake_startSessionURL", "");
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_endSessionURL"))
      {
        endSessionURL = localSharedPreferences.getString("handshake_endSessionURL", "");
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_mmdid"))
      {
        setMMdid(paramContext, localSharedPreferences.getString("handshake_mmdid", mmdid), false);
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_creativecachetimeout"))
      {
        creativeCacheTimeout = localSharedPreferences.getLong("handshake_creativecachetimeout", creativeCacheTimeout);
        bool1 = true;
      }
      if (localSharedPreferences.contains("handshake_mmjs"))
      {
        mmjsUrl = localSharedPreferences.getString("handshake_mmjs", mmjsUrl);
        bool1 = true;
      }
      localObject1 = MMAdImpl.getAdTypes();
      i = 0;
      while (i < localObject1.length)
      {
        localObject2 = new HandShake.AdTypeHandShake(this);
        if (((HandShake.AdTypeHandShake)localObject2).load(localSharedPreferences, localObject1[i]))
        {
          adTypeHandShakes.put(localObject1[i], localObject2);
          bool1 = true;
        }
        i += 1;
      }
    }
    for (;;)
    {
      try
      {
        if (!localSharedPreferences.contains("handshake_schemes")) {
          break label666;
        }
        localObject1 = localSharedPreferences.getString("handshake_schemes", "");
        if (((String)localObject1).length() <= 0) {
          break label666;
        }
        localObject1 = ((String)localObject1).split("\n");
        int k = localObject1.length;
        i = j;
        if (i >= k) {
          break label684;
        }
        localObject2 = localObject1[i].split("\t");
        if (localObject2.length < 2) {
          break label675;
        }
        localObject2 = new HandShake.Scheme(this, localObject2[0], Integer.parseInt(localObject2[1]));
        schemes.add(localObject2);
      }
      finally {}
      if (localSharedPreferences.contains("handshake_cachedvideos5.0"))
      {
        localObject1 = localSharedPreferences.getString("handshake_cachedvideos5.0", "");
        if (((String)localObject1).length() > 0) {
          cachedVideos = ((DTOCachedVideo[])new Gson().fromJson((String)localObject1, DTOCachedVideo[].class));
        }
      }
      if (localSharedPreferences.contains("handshake_lasthandshake"))
      {
        lastHandShake = localSharedPreferences.getLong("handshake_lasthandshake", lastHandShake);
        bool1 = true;
      }
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      MMSDK.Log.d("Handshake successfully loaded from shared preferences.");
      if (System.currentTimeMillis() - lastHandShake < handShakeCallback) {
        handler.postDelayed(updateHandShakeRunnable, handShakeCallback - (System.currentTimeMillis() - lastHandShake));
      }
      noVideosToCacheURL = localSharedPreferences.getString("handshake_novideostocacheurl", "");
      bool2 = bool1;
      if (cachedVideos == null) {
        break;
      }
      PreCacheWorker.preCacheVideos(cachedVideos, paramContext, noVideosToCacheURL);
      return bool1;
      label666:
      continue;
      bool1 = false;
      break label54;
      label675:
      i += 1;
      continue;
      label684:
      bool1 = true;
    }
  }
  
  private JSONObject parseJson(String paramString)
  {
    MMSDK.Log.d("JSON String: %s", new Object[] { paramString });
    if (paramString != null) {
      try
      {
        paramString = new JSONObject(paramString);
        MMSDK.Log.v(paramString.toString());
        if (paramString.has("mmishake"))
        {
          paramString = paramString.getJSONObject("mmishake");
          return paramString;
        }
      }
      catch (JSONException paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  private void requestHandshake(boolean paramBoolean)
  {
    Utils.ThreadUtils.execute(new HandShake.1(this, paramBoolean));
  }
  
  private void saveHandShake(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
    paramContext.putLong("handshake_deferredviewtimeout", deferredViewTimeout);
    paramContext.putBoolean("handshake_kill", kill);
    paramContext.putString("handshake_baseUrl", adUrl);
    paramContext.putLong("handshake_callback", handShakeCallback);
    paramContext.putBoolean("handshake_hardwareAccelerationEnabled", hardwareAccelerationEnabled);
    paramContext.putString("handshake_startSessionURL", startSessionURL);
    paramContext.putString("handshake_endSessionURL", endSessionURL);
    paramContext.putLong("handshake_creativecaetimeout", creativeCacheTimeout);
    paramContext.putString("handshake_mmjs", mmjsUrl);
    Object localObject1 = adTypeHandShakes.keySet().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      ((HandShake.AdTypeHandShake)adTypeHandShakes.get(localObject2)).save(paramContext, (String)localObject2);
    }
    try
    {
      localObject1 = new StringBuilder();
      int i = 0;
      while (i < schemes.size())
      {
        localObject2 = (HandShake.Scheme)schemes.get(i);
        if (i > 0) {
          ((StringBuilder)localObject1).append("\n");
        }
        ((StringBuilder)localObject1).append(scheme + "\t" + id);
        i += 1;
      }
      paramContext.putString("handshake_schemes", ((StringBuilder)localObject1).toString());
      if (cachedVideos != null) {
        paramContext.putString("handshake_cachedvideos5.0", new Gson().toJson(cachedVideos));
      }
      paramContext.putString("handshake_novideostocacheurl", noVideosToCacheURL);
      paramContext.putLong("handshake_lasthandshake", lastHandShake);
      paramContext.commit();
      return;
    }
    finally {}
  }
  
  private void sentFirstLaunch(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
      paramContext.putBoolean("firstlaunchHandshake", false);
      paramContext.commit();
    }
  }
  
  static void setAdUrl(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (!paramString.endsWith("/")) {
        adUrl = paramString + "/getAd.php5?";
      }
    }
    else {
      return;
    }
    adUrl = paramString + "getAd.php5?";
  }
  
  static void setHandShakeURL(Context paramContext, String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        String str = paramString;
        if (paramString.startsWith("http://")) {
          str = paramString.replaceFirst("http://", "https://");
        }
        handShakeURL = str + "?apid=";
        forceRefresh = true;
        sharedInstance = new HandShake(paramContext);
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  static HandShake sharedHandShake(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 75	com/millennialmedia/android/HandShake:apid	Ljava/lang/String;
    //   6: ifnonnull +16 -> 22
    //   9: ldc_w 609
    //   12: invokestatic 251	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;)V
    //   15: aconst_null
    //   16: astore_0
    //   17: ldc 2
    //   19: monitorexit
    //   20: aload_0
    //   21: areturn
    //   22: getstatic 605	com/millennialmedia/android/HandShake:sharedInstance	Lcom/millennialmedia/android/HandShake;
    //   25: ifnonnull +21 -> 46
    //   28: new 2	com/millennialmedia/android/HandShake
    //   31: dup
    //   32: aload_0
    //   33: invokespecial 603	com/millennialmedia/android/HandShake:<init>	(Landroid/content/Context;)V
    //   36: putstatic 605	com/millennialmedia/android/HandShake:sharedInstance	Lcom/millennialmedia/android/HandShake;
    //   39: getstatic 605	com/millennialmedia/android/HandShake:sharedInstance	Lcom/millennialmedia/android/HandShake;
    //   42: astore_0
    //   43: goto -26 -> 17
    //   46: invokestatic 159	java/lang/System:currentTimeMillis	()J
    //   49: getstatic 605	com/millennialmedia/android/HandShake:sharedInstance	Lcom/millennialmedia/android/HandShake;
    //   52: getfield 161	com/millennialmedia/android/HandShake:lastHandShake	J
    //   55: lsub
    //   56: getstatic 605	com/millennialmedia/android/HandShake:sharedInstance	Lcom/millennialmedia/android/HandShake;
    //   59: getfield 120	com/millennialmedia/android/HandShake:handShakeCallback	J
    //   62: lcmp
    //   63: ifle -24 -> 39
    //   66: ldc_w 611
    //   69: invokestatic 386	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   72: new 2	com/millennialmedia/android/HandShake
    //   75: dup
    //   76: aload_0
    //   77: invokespecial 603	com/millennialmedia/android/HandShake:<init>	(Landroid/content/Context;)V
    //   80: putstatic 605	com/millennialmedia/android/HandShake:sharedInstance	Lcom/millennialmedia/android/HandShake;
    //   83: goto -44 -> 39
    //   86: astore_0
    //   87: ldc 2
    //   89: monitorexit
    //   90: aload_0
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	15	86	finally
    //   22	39	86	finally
    //   39	43	86	finally
    //   46	83	86	finally
  }
  
  /* Error */
  boolean canDisplayCachedAd(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 105	com/millennialmedia/android/HandShake:adTypeHandShakes	Ljava/util/LinkedHashMap;
    //   6: aload_1
    //   7: invokevirtual 555	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 277	com/millennialmedia/android/HandShake$AdTypeHandShake
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +15 -> 30
    //   18: aload_1
    //   19: lload_2
    //   20: invokevirtual 616	com/millennialmedia/android/HandShake$AdTypeHandShake:canDisplayCachedAd	(J)Z
    //   23: istore 4
    //   25: aload_0
    //   26: monitorexit
    //   27: iload 4
    //   29: ireturn
    //   30: iconst_1
    //   31: istore 4
    //   33: goto -8 -> 25
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	HandShake
    //   0	41	1	paramString	String
    //   0	41	2	paramLong	long
    //   23	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	14	36	finally
    //   18	25	36	finally
  }
  
  /* Error */
  boolean canRequestVideo(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 105	com/millennialmedia/android/HandShake:adTypeHandShakes	Ljava/util/LinkedHashMap;
    //   6: aload_2
    //   7: invokevirtual 555	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 277	com/millennialmedia/android/HandShake$AdTypeHandShake
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +16 -> 31
    //   18: aload_3
    //   19: aload_1
    //   20: aload_2
    //   21: invokevirtual 619	com/millennialmedia/android/HandShake$AdTypeHandShake:canRequestVideo	(Landroid/content/Context;Ljava/lang/String;)Z
    //   24: istore 4
    //   26: aload_0
    //   27: monitorexit
    //   28: iload 4
    //   30: ireturn
    //   31: iconst_1
    //   32: istore 4
    //   34: goto -8 -> 26
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	HandShake
    //   0	42	1	paramContext	Context
    //   0	42	2	paramString	String
    //   13	6	3	localAdTypeHandShake	HandShake.AdTypeHandShake
    //   24	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	14	37	finally
    //   18	26	37	finally
  }
  
  void endSession()
  {
    if (!TextUtils.isEmpty(endSessionURL)) {
      Utils.HttpUtils.executeUrl(endSessionURL);
    }
  }
  
  JSONArray getSchemesJSONArray(Context paramContext)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray();
      if (schemes.size() > 0)
      {
        Iterator localIterator = schemes.iterator();
        while (localIterator.hasNext())
        {
          HandShake.Scheme localScheme = (HandShake.Scheme)localIterator.next();
          boolean bool = localScheme.checkAvailability(paramContext);
          if (bool) {
            try
            {
              JSONObject localJSONObject = new JSONObject();
              localJSONObject.put("scheme", scheme);
              localJSONObject.put("schemeid", id);
              localJSONArray.put(localJSONObject);
            }
            catch (JSONException localJSONException) {}
          }
        }
      }
      return localJSONArray;
    }
    finally {}
  }
  
  String getSchemesList(Context paramContext)
  {
    StringBuilder localStringBuilder;
    for (;;)
    {
      try
      {
        if ((schemesList != null) || (schemes.size() <= 0)) {
          break label136;
        }
        localStringBuilder = new StringBuilder();
        Iterator localIterator = schemes.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        HandShake.Scheme localScheme = (HandShake.Scheme)localIterator.next();
        if (localScheme.checkAvailability(paramContext)) {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append("," + id);
          } else {
            localStringBuilder.append(Integer.toString(id));
          }
        }
      }
      finally {}
    }
    if (localStringBuilder.length() > 0) {
      schemesList = localStringBuilder.toString();
    }
    label136:
    paramContext = schemesList;
    return paramContext;
  }
  
  /* Error */
  boolean isAdTypeDownloading(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 105	com/millennialmedia/android/HandShake:adTypeHandShakes	Ljava/util/LinkedHashMap;
    //   6: aload_1
    //   7: invokevirtual 555	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 277	com/millennialmedia/android/HandShake$AdTypeHandShake
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +12 -> 27
    //   18: aload_1
    //   19: getfield 660	com/millennialmedia/android/HandShake$AdTypeHandShake:downloading	Z
    //   22: istore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: iload_2
    //   26: ireturn
    //   27: iconst_0
    //   28: istore_2
    //   29: goto -6 -> 23
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	HandShake
    //   0	37	1	paramString	String
    //   22	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	14	32	finally
    //   18	23	32	finally
  }
  
  void lockAdTypeDownload(String paramString)
  {
    try
    {
      paramString = (HandShake.AdTypeHandShake)adTypeHandShakes.get(paramString);
      if (paramString != null) {
        downloading = true;
      }
      return;
    }
    finally {}
  }
  
  void sendInitRequest()
  {
    requestHandshake(true);
  }
  
  void setMMdid(Context paramContext, String paramString)
  {
    setMMdid(paramContext, paramString, true);
  }
  
  /* Error */
  void setMMdid(Context paramContext, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnull +74 -> 77
    //   6: aload_2
    //   7: invokevirtual 451	java/lang/String:length	()I
    //   10: ifeq +13 -> 23
    //   13: aload_2
    //   14: ldc_w 664
    //   17: invokevirtual 667	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   20: ifeq +57 -> 77
    //   23: aload_0
    //   24: aconst_null
    //   25: putfield 436	com/millennialmedia/android/HandShake:mmdid	Ljava/lang/String;
    //   28: aload_0
    //   29: getfield 436	com/millennialmedia/android/HandShake:mmdid	Ljava/lang/String;
    //   32: invokestatic 671	com/millennialmedia/android/MMSDK:setMMdid	(Ljava/lang/String;)V
    //   35: iload_3
    //   36: ifeq +38 -> 74
    //   39: aload_1
    //   40: ldc_w 397
    //   43: iconst_0
    //   44: invokevirtual 401	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   47: invokeinterface 515 1 0
    //   52: astore_1
    //   53: aload_1
    //   54: ldc_w 434
    //   57: aload_0
    //   58: getfield 436	com/millennialmedia/android/HandShake:mmdid	Ljava/lang/String;
    //   61: invokeinterface 531 3 0
    //   66: pop
    //   67: aload_1
    //   68: invokeinterface 587 1 0
    //   73: pop
    //   74: aload_0
    //   75: monitorexit
    //   76: return
    //   77: aload_0
    //   78: aload_2
    //   79: putfield 436	com/millennialmedia/android/HandShake:mmdid	Ljava/lang/String;
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	HandShake
    //   0	90	1	paramContext	Context
    //   0	90	2	paramString	String
    //   0	90	3	paramBoolean	boolean
    // Exception table:
    //   from	to	target	type
    //   6	23	85	finally
    //   23	28	85	finally
    //   28	35	85	finally
    //   39	74	85	finally
    //   77	82	85	finally
  }
  
  void startSession()
  {
    if (!TextUtils.isEmpty(startSessionURL)) {
      Utils.HttpUtils.executeUrl(startSessionURL);
    }
  }
  
  void unlockAdTypeDownload(String paramString)
  {
    try
    {
      paramString = (HandShake.AdTypeHandShake)adTypeHandShakes.get(paramString);
      if (paramString != null) {
        downloading = false;
      }
      return;
    }
    finally {}
  }
  
  void updateLastVideoViewedTime(Context paramContext, String paramString)
  {
    try
    {
      HandShake.AdTypeHandShake localAdTypeHandShake = (HandShake.AdTypeHandShake)adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null) {
        localAdTypeHandShake.updateLastVideoViewedTime(paramContext, paramString);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HandShake
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */