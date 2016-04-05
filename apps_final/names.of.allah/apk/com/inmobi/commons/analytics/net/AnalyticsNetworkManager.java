package com.inmobi.commons.analytics.net;

import android.os.Handler;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.db.AnalyticsDatabaseManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDHelper;
import java.util.HashMap;
import java.util.Random;

public final class AnalyticsNetworkManager
{
  public static final int MESSAGE_PING = 1001;
  private static Handler a;
  private static AnalyticsNetworkManager b;
  private static AnalyticsConnectivityReceiver.a f = new a();
  private AnalyticsPayloadBuilder c;
  private AnalyticsConnectivityReceiver d;
  private int e = 0;
  
  private AnalyticsNetworkManager()
  {
    new AnalyticsNetworkManager.a(this).start();
    Log.debug("[InMobi]-[Analytics]-4.4.1", "NetworkManager-> Constructor ");
  }
  
  private String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = Integer.toString(new Random().nextInt());
    Object localObject = null;
    Long localLong = AnalyticsInitializer.getConfigParams().getLTVId();
    if (paramString1 != null)
    {
      localStringBuilder.append("payload=");
      localStringBuilder.append(AnalyticsCommon.getURLEncoded(paramString1));
    }
    if (paramString2 != null)
    {
      localStringBuilder.append("&mk-siteid=");
      localStringBuilder.append(paramString2);
    }
    localStringBuilder.append("&c=");
    if (paramBoolean)
    {
      localStringBuilder.append(1);
      paramString1 = (String)localObject;
      if (localLong != null)
      {
        paramString1 = new HashMap();
        paramString1.put("LTVID", localLong);
      }
      paramString1 = AnalyticsInitializer.getConfigParams().getUID().getUidMap(1, str, paramString1);
      localStringBuilder.append("&u-id-map=");
      localStringBuilder.append(AnalyticsCommon.getURLEncoded(paramString1));
      localStringBuilder.append("&u-id-key=");
      localStringBuilder.append(str);
      localStringBuilder.append("&u-key-ver=");
      localStringBuilder.append(UIDHelper.getRSAKeyVersion());
      paramString1 = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion("4.4.1") + "-20140613";
      localStringBuilder.append("&mk-version=");
      localStringBuilder.append(paramString1);
      localStringBuilder.append("&u-id-adt=");
      if (!InternalSDKUtil.isLimitAdTrackingEnabled()) {
        break label276;
      }
      localStringBuilder.append(1);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(0);
      break;
      label276:
      localStringBuilder.append(0);
    }
  }
  
  /* Error */
  private void a(AnalyticsPayload paramAnalyticsPayload, String paramString)
  {
    // Byte code:
    //   0: ldc 41
    //   2: new 56	java/lang/StringBuilder
    //   5: dup
    //   6: ldc -88
    //   8: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: invokestatic 173	com/inmobi/commons/analytics/util/AnalyticsUtils:getEventUrl	()Ljava/lang/String;
    //   14: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokestatic 176	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: aload_1
    //   24: invokevirtual 181	com/inmobi/commons/analytics/net/AnalyticsPayload:getCompletePayload	()Ljava/lang/String;
    //   27: astore_3
    //   28: invokestatic 76	com/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer:getConfigParams	()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;
    //   31: invokevirtual 184	com/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams:getMinEventsToCompress	()I
    //   34: istore 7
    //   36: ldc 41
    //   38: new 56	java/lang/StringBuilder
    //   41: dup
    //   42: ldc -70
    //   44: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload_3
    //   48: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 176	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: aload_1
    //   58: invokevirtual 189	com/inmobi/commons/analytics/net/AnalyticsPayload:getPayloadSize	()I
    //   61: iload 7
    //   63: if_icmplt +388 -> 451
    //   66: getstatic 194	android/os/Build$VERSION:SDK_INT	I
    //   69: bipush 8
    //   71: if_icmplt +380 -> 451
    //   74: ldc 41
    //   76: ldc -60
    //   78: invokestatic 49	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   81: iconst_1
    //   82: istore 8
    //   84: aload_3
    //   85: invokestatic 199	com/inmobi/commons/analytics/util/AnalyticsUtils:compressPayload	(Ljava/lang/String;)Ljava/lang/String;
    //   88: astore_3
    //   89: invokestatic 76	com/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer:getConfigParams	()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;
    //   92: invokevirtual 202	com/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams:getMaxAppIdLength	()I
    //   95: istore 7
    //   97: aload_2
    //   98: astore 4
    //   100: aload_2
    //   101: invokevirtual 207	java/lang/String:length	()I
    //   104: iload 7
    //   106: if_icmple +12 -> 118
    //   109: aload_2
    //   110: iconst_0
    //   111: iload 7
    //   113: invokevirtual 211	java/lang/String:substring	(II)Ljava/lang/String;
    //   116: astore 4
    //   118: aload_0
    //   119: aload_3
    //   120: aload 4
    //   122: iload 8
    //   124: invokespecial 213	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   127: astore_2
    //   128: ldc 41
    //   130: new 56	java/lang/StringBuilder
    //   133: dup
    //   134: ldc -70
    //   136: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload_2
    //   140: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokestatic 49	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   149: new 90	com/inmobi/commons/analytics/net/AnalyticsCommon
    //   152: dup
    //   153: invokespecial 214	com/inmobi/commons/analytics/net/AnalyticsCommon:<init>	()V
    //   156: astore_3
    //   157: aload_3
    //   158: invokestatic 173	com/inmobi/commons/analytics/util/AnalyticsUtils:getEventUrl	()Ljava/lang/String;
    //   161: invokevirtual 218	com/inmobi/commons/analytics/net/AnalyticsCommon:setupConnection	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   164: astore 4
    //   166: aload_3
    //   167: aload 4
    //   169: aload_2
    //   170: invokevirtual 222	com/inmobi/commons/analytics/net/AnalyticsCommon:postData	(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    //   173: aload 4
    //   175: invokevirtual 227	java/net/HttpURLConnection:getResponseCode	()I
    //   178: istore 7
    //   180: ldc 41
    //   182: new 56	java/lang/StringBuilder
    //   185: dup
    //   186: ldc -27
    //   188: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: iload 7
    //   193: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   196: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: invokestatic 49	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   202: iload 7
    //   204: sipush 200
    //   207: if_icmpne +87 -> 294
    //   210: aload_0
    //   211: iconst_0
    //   212: putfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   215: invokestatic 235	com/inmobi/commons/analytics/db/AnalyticsDatabaseManager:getInstance	()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    //   218: aload_1
    //   219: invokevirtual 239	com/inmobi/commons/analytics/net/AnalyticsPayload:getTableIdList	()Ljava/util/List;
    //   222: invokevirtual 243	com/inmobi/commons/analytics/db/AnalyticsDatabaseManager:deleteEvents	(Ljava/util/List;)V
    //   225: new 245	java/io/BufferedReader
    //   228: dup
    //   229: new 247	java/io/InputStreamReader
    //   232: dup
    //   233: aload 4
    //   235: invokevirtual 251	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   238: ldc -3
    //   240: invokespecial 256	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   243: invokespecial 259	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   246: astore_2
    //   247: new 56	java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   254: astore 5
    //   256: aload_2
    //   257: invokevirtual 262	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   260: astore 6
    //   262: aload 6
    //   264: ifnull +146 -> 410
    //   267: aload 5
    //   269: aload 6
    //   271: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: ldc_w 264
    //   277: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: pop
    //   281: goto -25 -> 256
    //   284: astore_2
    //   285: ldc 41
    //   287: ldc_w 266
    //   290: invokestatic 176	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   293: return
    //   294: aload_0
    //   295: aload_0
    //   296: getfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   299: iconst_1
    //   300: iadd
    //   301: putfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   304: aload_0
    //   305: getfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   308: invokestatic 269	com/inmobi/commons/analytics/util/AnalyticsUtils:getMaxRetryBeforeDiscard	()I
    //   311: if_icmplt -86 -> 225
    //   314: aload_0
    //   315: iconst_0
    //   316: putfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   319: invokestatic 235	com/inmobi/commons/analytics/db/AnalyticsDatabaseManager:getInstance	()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    //   322: aload_1
    //   323: invokevirtual 239	com/inmobi/commons/analytics/net/AnalyticsPayload:getTableIdList	()Ljava/util/List;
    //   326: invokevirtual 243	com/inmobi/commons/analytics/db/AnalyticsDatabaseManager:deleteEvents	(Ljava/util/List;)V
    //   329: goto -104 -> 225
    //   332: astore_2
    //   333: ldc 41
    //   335: ldc_w 271
    //   338: aload_2
    //   339: invokestatic 274	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   342: aload_0
    //   343: aload_0
    //   344: getfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   347: iconst_1
    //   348: iadd
    //   349: putfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   352: aload_0
    //   353: getfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   356: invokestatic 269	com/inmobi/commons/analytics/util/AnalyticsUtils:getMaxRetryBeforeDiscard	()I
    //   359: if_icmplt +98 -> 457
    //   362: aload_0
    //   363: iconst_0
    //   364: putfield 31	com/inmobi/commons/analytics/net/AnalyticsNetworkManager:e	I
    //   367: invokestatic 235	com/inmobi/commons/analytics/db/AnalyticsDatabaseManager:getInstance	()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    //   370: aload_1
    //   371: invokevirtual 239	com/inmobi/commons/analytics/net/AnalyticsPayload:getTableIdList	()Ljava/util/List;
    //   374: invokevirtual 243	com/inmobi/commons/analytics/db/AnalyticsDatabaseManager:deleteEvents	(Ljava/util/List;)V
    //   377: return
    //   378: astore_2
    //   379: new 245	java/io/BufferedReader
    //   382: dup
    //   383: new 247	java/io/InputStreamReader
    //   386: dup
    //   387: aload 4
    //   389: invokevirtual 277	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   392: ldc -3
    //   394: invokespecial 256	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   397: invokespecial 259	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   400: astore_2
    //   401: goto -154 -> 247
    //   404: astore_2
    //   405: aconst_null
    //   406: astore_2
    //   407: goto -160 -> 247
    //   410: aload 5
    //   412: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   415: astore 5
    //   417: ldc 41
    //   419: new 56	java/lang/StringBuilder
    //   422: dup
    //   423: ldc_w 279
    //   426: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   429: aload 5
    //   431: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   437: invokestatic 49	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   440: aload 4
    //   442: invokevirtual 282	java/net/HttpURLConnection:disconnect	()V
    //   445: aload_3
    //   446: aload_2
    //   447: invokevirtual 286	com/inmobi/commons/analytics/net/AnalyticsCommon:closeResource	(Ljava/io/Closeable;)V
    //   450: return
    //   451: iconst_0
    //   452: istore 8
    //   454: goto -365 -> 89
    //   457: return
    //   458: astore_2
    //   459: sipush 401
    //   462: istore 7
    //   464: goto -284 -> 180
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	467	0	this	AnalyticsNetworkManager
    //   0	467	1	paramAnalyticsPayload	AnalyticsPayload
    //   0	467	2	paramString	String
    //   27	419	3	localObject1	Object
    //   98	343	4	localObject2	Object
    //   254	176	5	localObject3	Object
    //   260	10	6	str	String
    //   34	429	7	i	int
    //   82	371	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   247	256	284	java/lang/Exception
    //   256	262	284	java/lang/Exception
    //   267	281	284	java/lang/Exception
    //   410	450	284	java/lang/Exception
    //   0	81	332	java/lang/Exception
    //   84	89	332	java/lang/Exception
    //   89	97	332	java/lang/Exception
    //   100	118	332	java/lang/Exception
    //   118	173	332	java/lang/Exception
    //   173	180	332	java/lang/Exception
    //   180	202	332	java/lang/Exception
    //   210	225	332	java/lang/Exception
    //   285	293	332	java/lang/Exception
    //   294	329	332	java/lang/Exception
    //   225	247	378	java/lang/Exception
    //   379	401	404	java/lang/Exception
    //   173	180	458	java/io/IOException
  }
  
  private void b()
  {
    int j = 1;
    int i = j;
    if (d != null)
    {
      i = j;
      if (d.isConnected())
      {
        i = j;
        if (c != null)
        {
          AnalyticsPayload localAnalyticsPayload = c.getPayloadList(AnalyticsDatabaseManager.getInstance().getEvents(), InternalSDKUtil.getContext());
          i = j;
          if (localAnalyticsPayload.getCompletePayload() != null)
          {
            a(localAnalyticsPayload, SessionInfo.getAppId(InternalSDKUtil.getContext()));
            i = 0;
          }
        }
      }
    }
    if (i == 0)
    {
      a.sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
      return;
    }
    AnalyticsUtils.setStartHandle(false);
  }
  
  public static Handler getHandler()
  {
    return a;
  }
  
  public static AnalyticsNetworkManager startInstance()
  {
    try
    {
      if (b == null) {
        b = new AnalyticsNetworkManager();
      }
      if (bc == null) {
        bc = new AnalyticsPayloadBuilder();
      }
      if (bd == null) {
        bd = new AnalyticsConnectivityReceiver(InternalSDKUtil.getContext(), f);
      }
      AnalyticsNetworkManager localAnalyticsNetworkManager = b;
      return localAnalyticsNetworkManager;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.net.AnalyticsNetworkManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */