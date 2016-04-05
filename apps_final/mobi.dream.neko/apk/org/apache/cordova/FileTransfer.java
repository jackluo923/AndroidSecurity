package org.apache.cordova;

import android.net.Uri;
import android.util.Log;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FileTransfer
  extends CordovaPlugin
{
  public static int ABORTED_ERR = 0;
  private static final String BOUNDARY = "+++++";
  public static int CONNECTION_ERR = 0;
  private static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier()
  {
    public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
    {
      return true;
    }
  };
  public static int FILE_NOT_FOUND_ERR = 1;
  public static int INVALID_URL_ERR = 2;
  private static final String LINE_END = "\r\n";
  private static final String LINE_START = "--";
  private static final String LOG_TAG = "FileTransfer";
  private static final int MAX_BUFFER_SIZE = 16384;
  private static HashMap<String, RequestContext> activeRequests;
  private static final TrustManager[] trustAllCerts = { new X509TrustManager()
  {
    public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
      throws CertificateException
    {}
    
    public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
      throws CertificateException
    {}
    
    public X509Certificate[] getAcceptedIssuers()
    {
      return new X509Certificate[0];
    }
  } };
  
  static
  {
    CONNECTION_ERR = 3;
    ABORTED_ERR = 4;
    activeRequests = new HashMap();
  }
  
  private void abort(final String paramString)
  {
    synchronized (activeRequests)
    {
      paramString = (RequestContext)activeRequests.remove(paramString);
      if (paramString != null)
      {
        ??? = targetFile;
        if (??? != null) {
          ((File)???).delete();
        }
        ??? = createFileTransferError(ABORTED_ERR, source, target, null, Integer.valueOf(-1));
      }
    }
  }
  
  private static void addHeadersToRequest(URLConnection paramURLConnection, JSONObject paramJSONObject)
  {
    try
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = localIterator.next().toString();
        JSONArray localJSONArray2 = paramJSONObject.optJSONArray(str);
        JSONArray localJSONArray1 = localJSONArray2;
        if (localJSONArray2 == null)
        {
          localJSONArray1 = new JSONArray();
          localJSONArray1.put(paramJSONObject.getString(str));
        }
        paramURLConnection.setRequestProperty(str, localJSONArray1.getString(0));
        int i = 1;
        while (i < localJSONArray1.length())
        {
          paramURLConnection.addRequestProperty(str, localJSONArray1.getString(i));
          i += 1;
        }
      }
      return;
    }
    catch (JSONException paramURLConnection) {}
  }
  
  private static JSONObject createFileTransferError(int paramInt, String paramString1, String paramString2, String paramString3, Integer paramInteger)
  {
    Object localObject = null;
    try
    {
      localJSONObject = new JSONObject();
      Log.e("FileTransfer", paramString1.getMessage(), paramString1);
    }
    catch (JSONException paramString1)
    {
      try
      {
        localJSONObject.put("code", paramInt);
        localJSONObject.put("source", paramString1);
        localJSONObject.put("target", paramString2);
        if (paramString3 != null) {
          localJSONObject.put("body", paramString3);
        }
        if (paramInteger != null) {
          localJSONObject.put("http_status", paramInteger);
        }
        return localJSONObject;
      }
      catch (JSONException paramString1)
      {
        for (;;)
        {
          JSONObject localJSONObject;
          paramString2 = localJSONObject;
        }
      }
      paramString1 = paramString1;
      paramString2 = (String)localObject;
    }
    return paramString2;
  }
  
  private static JSONObject createFileTransferError(int paramInt, String paramString1, String paramString2, URLConnection paramURLConnection)
  {
    int m = 0;
    int k = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    int j = m;
    int i;
    if (paramURLConnection != null)
    {
      i = k;
      localObject1 = localObject2;
      j = m;
      try
      {
        if ((paramURLConnection instanceof HttpURLConnection))
        {
          i = k;
          k = ((HttpURLConnection)paramURLConnection).getResponseCode();
          i = k;
          paramURLConnection = ((HttpURLConnection)paramURLConnection).getErrorStream();
          localObject1 = localObject2;
          j = k;
          if (paramURLConnection != null)
          {
            i = k;
            BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramURLConnection, "UTF-8"));
            i = k;
            paramURLConnection = localBufferedReader.readLine();
            while (paramURLConnection != null)
            {
              i = k;
              localStringBuilder.append(paramURLConnection);
              i = k;
              localObject1 = localBufferedReader.readLine();
              paramURLConnection = (URLConnection)localObject1;
              if (localObject1 != null)
              {
                i = k;
                localStringBuilder.append('\n');
                paramURLConnection = (URLConnection)localObject1;
              }
            }
          }
        }
        return createFileTransferError(paramInt, paramString1, paramString2, (String)localObject1, Integer.valueOf(j));
      }
      catch (Throwable paramURLConnection)
      {
        Log.w("FileTransfer", "Error getting HTTP status code from connection.", paramURLConnection);
        j = i;
        localObject1 = localObject2;
      }
    }
    for (;;)
    {
      i = k;
      localObject1 = localStringBuilder.toString();
      j = k;
    }
  }
  
  private void download(final String paramString1, final String paramString2, final JSONArray paramJSONArray, CallbackContext arg4)
    throws JSONException
  {
    Log.d("FileTransfer", "download " + paramString1 + " to " + paramString2);
    final CordovaResourceApi localCordovaResourceApi = webView.getResourceApi();
    final boolean bool3 = paramJSONArray.optBoolean(2);
    final String str = paramJSONArray.getString(3);
    final JSONObject localJSONObject = paramJSONArray.optJSONObject(4);
    final Uri localUri = localCordovaResourceApi.remapUri(Uri.parse(paramString1));
    paramJSONArray = Uri.parse(paramString2);
    int i;
    final boolean bool1;
    if (paramJSONArray.getScheme() != null)
    {
      paramJSONArray = localCordovaResourceApi.remapUri(paramJSONArray);
      i = CordovaResourceApi.getUriType(localUri);
      if (i != 6) {
        break label205;
      }
      bool1 = true;
      label113:
      if ((bool1) || (i == 5)) {
        break label211;
      }
    }
    label205:
    label211:
    for (final boolean bool2 = true;; bool2 = false)
    {
      if (i != -1) {
        break label217;
      }
      paramString1 = createFileTransferError(INVALID_URL_ERR, paramString1, paramString2, null, Integer.valueOf(0));
      Log.e("FileTransfer", "Unsupported URI: " + paramJSONArray);
      ???.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, paramString1));
      return;
      paramJSONArray = Uri.fromFile(new File(paramString2));
      break;
      bool1 = false;
      break label113;
    }
    label217:
    if ((!bool2) && (!Config.isUrlWhiteListed(paramString1)))
    {
      Log.w("FileTransfer", "Source URL is not in white list: '" + paramString1 + "'");
      paramString1 = createFileTransferError(CONNECTION_ERR, paramString1, paramString2, null, Integer.valueOf(401));
      ???.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, paramString1));
      return;
    }
    final RequestContext localRequestContext = new RequestContext(paramString1, paramString2, ???);
    synchronized (activeRequests)
    {
      activeRequests.put(str, localRequestContext);
      cordova.getThreadPool().execute(new Runnable()
      {
        /* Error */
        public void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4: getfield 74	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   7: ifeq +4 -> 11
          //   10: return
          //   11: aconst_null
          //   12: astore 45
          //   14: aconst_null
          //   15: astore 46
          //   17: aconst_null
          //   18: astore 47
          //   20: aconst_null
          //   21: astore 48
          //   23: aconst_null
          //   24: astore 49
          //   26: aconst_null
          //   27: astore 6
          //   29: aconst_null
          //   30: astore 43
          //   32: aconst_null
          //   33: astore 31
          //   35: aconst_null
          //   36: astore 34
          //   38: aconst_null
          //   39: astore 35
          //   41: aconst_null
          //   42: astore 36
          //   44: aconst_null
          //   45: astore 37
          //   47: aconst_null
          //   48: astore 4
          //   50: aconst_null
          //   51: astore 44
          //   53: aconst_null
          //   54: astore 38
          //   56: aconst_null
          //   57: astore 39
          //   59: aconst_null
          //   60: astore 40
          //   62: aconst_null
          //   63: astore 41
          //   65: aconst_null
          //   66: astore 42
          //   68: aconst_null
          //   69: astore_3
          //   70: aconst_null
          //   71: astore 50
          //   73: aconst_null
          //   74: astore 51
          //   76: aconst_null
          //   77: astore 52
          //   79: aconst_null
          //   80: astore 53
          //   82: aconst_null
          //   83: astore 9
          //   85: aconst_null
          //   86: astore 32
          //   88: aconst_null
          //   89: astore 33
          //   91: aconst_null
          //   92: astore 28
          //   94: aconst_null
          //   95: astore 29
          //   97: aconst_null
          //   98: astore 30
          //   100: aconst_null
          //   101: astore 8
          //   103: aconst_null
          //   104: astore 27
          //   106: aload 45
          //   108: astore 19
          //   110: aload 9
          //   112: astore 23
          //   114: aload 31
          //   116: astore 10
          //   118: aload 38
          //   120: astore 11
          //   122: aload 46
          //   124: astore 20
          //   126: aload 50
          //   128: astore 24
          //   130: aload 34
          //   132: astore 12
          //   134: aload 39
          //   136: astore 13
          //   138: aload 47
          //   140: astore 21
          //   142: aload 51
          //   144: astore 25
          //   146: aload 35
          //   148: astore 14
          //   150: aload 40
          //   152: astore 15
          //   154: aload 48
          //   156: astore 22
          //   158: aload 52
          //   160: astore 26
          //   162: aload 36
          //   164: astore 16
          //   166: aload 41
          //   168: astore 17
          //   170: aload 49
          //   172: astore 5
          //   174: aload 53
          //   176: astore 7
          //   178: aload 37
          //   180: astore_1
          //   181: aload 42
          //   183: astore_2
          //   184: aload_0
          //   185: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
          //   188: aload_0
          //   189: getfield 40	org/apache/cordova/FileTransfer$4:val$targetUri	Landroid/net/Uri;
          //   192: invokevirtual 80	org/apache/cordova/CordovaResourceApi:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
          //   195: astore 18
          //   197: aload 45
          //   199: astore 19
          //   201: aload 9
          //   203: astore 23
          //   205: aload 31
          //   207: astore 10
          //   209: aload 38
          //   211: astore 11
          //   213: aload 18
          //   215: astore 27
          //   217: aload 46
          //   219: astore 20
          //   221: aload 50
          //   223: astore 24
          //   225: aload 34
          //   227: astore 12
          //   229: aload 39
          //   231: astore 13
          //   233: aload 18
          //   235: astore 28
          //   237: aload 47
          //   239: astore 21
          //   241: aload 51
          //   243: astore 25
          //   245: aload 35
          //   247: astore 14
          //   249: aload 40
          //   251: astore 15
          //   253: aload 18
          //   255: astore 29
          //   257: aload 48
          //   259: astore 22
          //   261: aload 52
          //   263: astore 26
          //   265: aload 36
          //   267: astore 16
          //   269: aload 41
          //   271: astore 17
          //   273: aload 18
          //   275: astore 30
          //   277: aload 49
          //   279: astore 5
          //   281: aload 53
          //   283: astore 7
          //   285: aload 37
          //   287: astore_1
          //   288: aload 42
          //   290: astore_2
          //   291: aload 18
          //   293: astore 8
          //   295: aload_0
          //   296: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
          //   299: aload_0
          //   300: getfield 40	org/apache/cordova/FileTransfer$4:val$targetUri	Landroid/net/Uri;
          //   303: invokevirtual 84	org/apache/cordova/CordovaResourceApi:mapUriToFile	(Landroid/net/Uri;)Ljava/io/File;
          //   306: astore 9
          //   308: aload 45
          //   310: astore 19
          //   312: aload 9
          //   314: astore 23
          //   316: aload 31
          //   318: astore 10
          //   320: aload 38
          //   322: astore 11
          //   324: aload 18
          //   326: astore 27
          //   328: aload 46
          //   330: astore 20
          //   332: aload 9
          //   334: astore 24
          //   336: aload 34
          //   338: astore 12
          //   340: aload 39
          //   342: astore 13
          //   344: aload 18
          //   346: astore 28
          //   348: aload 47
          //   350: astore 21
          //   352: aload 9
          //   354: astore 25
          //   356: aload 35
          //   358: astore 14
          //   360: aload 40
          //   362: astore 15
          //   364: aload 18
          //   366: astore 29
          //   368: aload 48
          //   370: astore 22
          //   372: aload 9
          //   374: astore 26
          //   376: aload 36
          //   378: astore 16
          //   380: aload 41
          //   382: astore 17
          //   384: aload 18
          //   386: astore 30
          //   388: aload 49
          //   390: astore 5
          //   392: aload 9
          //   394: astore 7
          //   396: aload 37
          //   398: astore_1
          //   399: aload 42
          //   401: astore_2
          //   402: aload 18
          //   404: astore 8
          //   406: aload_0
          //   407: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   410: aload 9
          //   412: putfield 88	org/apache/cordova/FileTransfer$RequestContext:targetFile	Ljava/io/File;
          //   415: aload 45
          //   417: astore 19
          //   419: aload 9
          //   421: astore 23
          //   423: aload 31
          //   425: astore 10
          //   427: aload 38
          //   429: astore 11
          //   431: aload 18
          //   433: astore 27
          //   435: aload 46
          //   437: astore 20
          //   439: aload 9
          //   441: astore 24
          //   443: aload 34
          //   445: astore 12
          //   447: aload 39
          //   449: astore 13
          //   451: aload 18
          //   453: astore 28
          //   455: aload 47
          //   457: astore 21
          //   459: aload 9
          //   461: astore 25
          //   463: aload 35
          //   465: astore 14
          //   467: aload 40
          //   469: astore 15
          //   471: aload 18
          //   473: astore 29
          //   475: aload 48
          //   477: astore 22
          //   479: aload 9
          //   481: astore 26
          //   483: aload 36
          //   485: astore 16
          //   487: aload 41
          //   489: astore 17
          //   491: aload 18
          //   493: astore 30
          //   495: aload 49
          //   497: astore 5
          //   499: aload 9
          //   501: astore 7
          //   503: aload 37
          //   505: astore_1
          //   506: aload 42
          //   508: astore_2
          //   509: aload 18
          //   511: astore 8
          //   513: ldc 90
          //   515: new 92	java/lang/StringBuilder
          //   518: dup
          //   519: invokespecial 93	java/lang/StringBuilder:<init>	()V
          //   522: ldc 95
          //   524: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   527: aload_0
          //   528: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
          //   531: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
          //   534: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   537: invokestatic 112	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   540: pop
          //   541: aload 45
          //   543: astore 19
          //   545: aload 9
          //   547: astore 23
          //   549: aload 31
          //   551: astore 10
          //   553: aload 38
          //   555: astore 11
          //   557: aload 18
          //   559: astore 27
          //   561: aload 46
          //   563: astore 20
          //   565: aload 9
          //   567: astore 24
          //   569: aload 34
          //   571: astore 12
          //   573: aload 39
          //   575: astore 13
          //   577: aload 18
          //   579: astore 28
          //   581: aload 47
          //   583: astore 21
          //   585: aload 9
          //   587: astore 25
          //   589: aload 35
          //   591: astore 14
          //   593: aload 40
          //   595: astore 15
          //   597: aload 18
          //   599: astore 29
          //   601: aload 48
          //   603: astore 22
          //   605: aload 9
          //   607: astore 26
          //   609: aload 36
          //   611: astore 16
          //   613: aload 41
          //   615: astore 17
          //   617: aload 18
          //   619: astore 30
          //   621: aload 49
          //   623: astore 5
          //   625: aload 9
          //   627: astore 7
          //   629: aload 37
          //   631: astore_1
          //   632: aload 42
          //   634: astore_2
          //   635: aload 18
          //   637: astore 8
          //   639: new 114	org/apache/cordova/FileProgressResult
          //   642: dup
          //   643: invokespecial 115	org/apache/cordova/FileProgressResult:<init>	()V
          //   646: astore 50
          //   648: aload 45
          //   650: astore 19
          //   652: aload 9
          //   654: astore 23
          //   656: aload 31
          //   658: astore 10
          //   660: aload 38
          //   662: astore 11
          //   664: aload 18
          //   666: astore 27
          //   668: aload 46
          //   670: astore 20
          //   672: aload 9
          //   674: astore 24
          //   676: aload 34
          //   678: astore 12
          //   680: aload 39
          //   682: astore 13
          //   684: aload 18
          //   686: astore 28
          //   688: aload 47
          //   690: astore 21
          //   692: aload 9
          //   694: astore 25
          //   696: aload 35
          //   698: astore 14
          //   700: aload 40
          //   702: astore 15
          //   704: aload 18
          //   706: astore 29
          //   708: aload 48
          //   710: astore 22
          //   712: aload 9
          //   714: astore 26
          //   716: aload 36
          //   718: astore 16
          //   720: aload 41
          //   722: astore 17
          //   724: aload 18
          //   726: astore 30
          //   728: aload 49
          //   730: astore 5
          //   732: aload 9
          //   734: astore 7
          //   736: aload 37
          //   738: astore_1
          //   739: aload 42
          //   741: astore_2
          //   742: aload 18
          //   744: astore 8
          //   746: aload_0
          //   747: getfield 44	org/apache/cordova/FileTransfer$4:val$isLocalTransfer	Z
          //   750: ifeq +993 -> 1743
          //   753: aload 45
          //   755: astore 19
          //   757: aload 9
          //   759: astore 23
          //   761: aload 31
          //   763: astore 10
          //   765: aload 38
          //   767: astore 11
          //   769: aload 18
          //   771: astore 27
          //   773: aload 46
          //   775: astore 20
          //   777: aload 9
          //   779: astore 24
          //   781: aload 34
          //   783: astore 12
          //   785: aload 39
          //   787: astore 13
          //   789: aload 18
          //   791: astore 28
          //   793: aload 47
          //   795: astore 21
          //   797: aload 9
          //   799: astore 25
          //   801: aload 35
          //   803: astore 14
          //   805: aload 40
          //   807: astore 15
          //   809: aload 18
          //   811: astore 29
          //   813: aload 48
          //   815: astore 22
          //   817: aload 9
          //   819: astore 26
          //   821: aload 36
          //   823: astore 16
          //   825: aload 41
          //   827: astore 17
          //   829: aload 18
          //   831: astore 30
          //   833: aload 49
          //   835: astore 5
          //   837: aload 9
          //   839: astore 7
          //   841: aload 37
          //   843: astore_1
          //   844: aload 42
          //   846: astore_2
          //   847: aload 18
          //   849: astore 8
          //   851: aload_0
          //   852: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
          //   855: aload_0
          //   856: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
          //   859: invokevirtual 119	org/apache/cordova/CordovaResourceApi:openForRead	(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
          //   862: astore 43
          //   864: aload 45
          //   866: astore 19
          //   868: aload 9
          //   870: astore 23
          //   872: aload 31
          //   874: astore 10
          //   876: aload 38
          //   878: astore 11
          //   880: aload 18
          //   882: astore 27
          //   884: aload 46
          //   886: astore 20
          //   888: aload 9
          //   890: astore 24
          //   892: aload 34
          //   894: astore 12
          //   896: aload 39
          //   898: astore 13
          //   900: aload 18
          //   902: astore 28
          //   904: aload 47
          //   906: astore 21
          //   908: aload 9
          //   910: astore 25
          //   912: aload 35
          //   914: astore 14
          //   916: aload 40
          //   918: astore 15
          //   920: aload 18
          //   922: astore 29
          //   924: aload 48
          //   926: astore 22
          //   928: aload 9
          //   930: astore 26
          //   932: aload 36
          //   934: astore 16
          //   936: aload 41
          //   938: astore 17
          //   940: aload 18
          //   942: astore 30
          //   944: aload 49
          //   946: astore 5
          //   948: aload 9
          //   950: astore 7
          //   952: aload 37
          //   954: astore_1
          //   955: aload 42
          //   957: astore_2
          //   958: aload 18
          //   960: astore 8
          //   962: aload 43
          //   964: getfield 125	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
          //   967: ldc2_w 126
          //   970: lcmp
          //   971: ifeq +215 -> 1186
          //   974: aload 45
          //   976: astore 19
          //   978: aload 9
          //   980: astore 23
          //   982: aload 31
          //   984: astore 10
          //   986: aload 38
          //   988: astore 11
          //   990: aload 18
          //   992: astore 27
          //   994: aload 46
          //   996: astore 20
          //   998: aload 9
          //   1000: astore 24
          //   1002: aload 34
          //   1004: astore 12
          //   1006: aload 39
          //   1008: astore 13
          //   1010: aload 18
          //   1012: astore 28
          //   1014: aload 47
          //   1016: astore 21
          //   1018: aload 9
          //   1020: astore 25
          //   1022: aload 35
          //   1024: astore 14
          //   1026: aload 40
          //   1028: astore 15
          //   1030: aload 18
          //   1032: astore 29
          //   1034: aload 48
          //   1036: astore 22
          //   1038: aload 9
          //   1040: astore 26
          //   1042: aload 36
          //   1044: astore 16
          //   1046: aload 41
          //   1048: astore 17
          //   1050: aload 18
          //   1052: astore 30
          //   1054: aload 49
          //   1056: astore 5
          //   1058: aload 9
          //   1060: astore 7
          //   1062: aload 37
          //   1064: astore_1
          //   1065: aload 42
          //   1067: astore_2
          //   1068: aload 18
          //   1070: astore 8
          //   1072: aload 50
          //   1074: iconst_1
          //   1075: invokevirtual 131	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
          //   1078: aload 45
          //   1080: astore 19
          //   1082: aload 9
          //   1084: astore 23
          //   1086: aload 31
          //   1088: astore 10
          //   1090: aload 38
          //   1092: astore 11
          //   1094: aload 18
          //   1096: astore 27
          //   1098: aload 46
          //   1100: astore 20
          //   1102: aload 9
          //   1104: astore 24
          //   1106: aload 34
          //   1108: astore 12
          //   1110: aload 39
          //   1112: astore 13
          //   1114: aload 18
          //   1116: astore 28
          //   1118: aload 47
          //   1120: astore 21
          //   1122: aload 9
          //   1124: astore 25
          //   1126: aload 35
          //   1128: astore 14
          //   1130: aload 40
          //   1132: astore 15
          //   1134: aload 18
          //   1136: astore 29
          //   1138: aload 48
          //   1140: astore 22
          //   1142: aload 9
          //   1144: astore 26
          //   1146: aload 36
          //   1148: astore 16
          //   1150: aload 41
          //   1152: astore 17
          //   1154: aload 18
          //   1156: astore 30
          //   1158: aload 49
          //   1160: astore 5
          //   1162: aload 9
          //   1164: astore 7
          //   1166: aload 37
          //   1168: astore_1
          //   1169: aload 42
          //   1171: astore_2
          //   1172: aload 18
          //   1174: astore 8
          //   1176: aload 50
          //   1178: aload 43
          //   1180: getfield 125	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
          //   1183: invokevirtual 135	org/apache/cordova/FileProgressResult:setTotal	(J)V
          //   1186: aload 45
          //   1188: astore 19
          //   1190: aload 9
          //   1192: astore 23
          //   1194: aload 31
          //   1196: astore 10
          //   1198: aload 38
          //   1200: astore 11
          //   1202: aload 18
          //   1204: astore 27
          //   1206: aload 46
          //   1208: astore 20
          //   1210: aload 9
          //   1212: astore 24
          //   1214: aload 34
          //   1216: astore 12
          //   1218: aload 39
          //   1220: astore 13
          //   1222: aload 18
          //   1224: astore 28
          //   1226: aload 47
          //   1228: astore 21
          //   1230: aload 9
          //   1232: astore 25
          //   1234: aload 35
          //   1236: astore 14
          //   1238: aload 40
          //   1240: astore 15
          //   1242: aload 18
          //   1244: astore 29
          //   1246: aload 48
          //   1248: astore 22
          //   1250: aload 9
          //   1252: astore 26
          //   1254: aload 36
          //   1256: astore 16
          //   1258: aload 41
          //   1260: astore 17
          //   1262: aload 18
          //   1264: astore 30
          //   1266: aload 49
          //   1268: astore 5
          //   1270: aload 9
          //   1272: astore 7
          //   1274: aload 37
          //   1276: astore_1
          //   1277: aload 42
          //   1279: astore_2
          //   1280: aload 18
          //   1282: astore 8
          //   1284: new 137	org/apache/cordova/FileTransfer$SimpleTrackingInputStream
          //   1287: dup
          //   1288: aload 43
          //   1290: getfield 141	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   1293: invokespecial 144	org/apache/cordova/FileTransfer$SimpleTrackingInputStream:<init>	(Ljava/io/InputStream;)V
          //   1296: astore 31
          //   1298: aload_0
          //   1299: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1302: astore_1
          //   1303: aload_1
          //   1304: monitorenter
          //   1305: aload_0
          //   1306: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1309: getfield 74	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   1312: ifeq +2408 -> 3720
          //   1315: aload_1
          //   1316: monitorexit
          //   1317: aload 6
          //   1319: astore 19
          //   1321: aload 9
          //   1323: astore 23
          //   1325: aload 4
          //   1327: astore 10
          //   1329: aload_3
          //   1330: astore 11
          //   1332: aload 18
          //   1334: astore 27
          //   1336: aload 6
          //   1338: astore 20
          //   1340: aload 9
          //   1342: astore 24
          //   1344: aload 4
          //   1346: astore 12
          //   1348: aload_3
          //   1349: astore 13
          //   1351: aload 18
          //   1353: astore 28
          //   1355: aload 6
          //   1357: astore 21
          //   1359: aload 9
          //   1361: astore 25
          //   1363: aload 4
          //   1365: astore 14
          //   1367: aload_3
          //   1368: astore 15
          //   1370: aload 18
          //   1372: astore 29
          //   1374: aload 6
          //   1376: astore 22
          //   1378: aload 9
          //   1380: astore 26
          //   1382: aload 4
          //   1384: astore 16
          //   1386: aload_3
          //   1387: astore 17
          //   1389: aload 18
          //   1391: astore 30
          //   1393: aload 6
          //   1395: astore 5
          //   1397: aload 9
          //   1399: astore 7
          //   1401: aload 4
          //   1403: astore_1
          //   1404: aload_3
          //   1405: astore_2
          //   1406: aload 18
          //   1408: astore 8
          //   1410: aload_0
          //   1411: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1414: aconst_null
          //   1415: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   1418: aload 6
          //   1420: astore 19
          //   1422: aload 9
          //   1424: astore 23
          //   1426: aload 4
          //   1428: astore 10
          //   1430: aload_3
          //   1431: astore 11
          //   1433: aload 18
          //   1435: astore 27
          //   1437: aload 6
          //   1439: astore 20
          //   1441: aload 9
          //   1443: astore 24
          //   1445: aload 4
          //   1447: astore 12
          //   1449: aload_3
          //   1450: astore 13
          //   1452: aload 18
          //   1454: astore 28
          //   1456: aload 6
          //   1458: astore 21
          //   1460: aload 9
          //   1462: astore 25
          //   1464: aload 4
          //   1466: astore 14
          //   1468: aload_3
          //   1469: astore 15
          //   1471: aload 18
          //   1473: astore 29
          //   1475: aload 6
          //   1477: astore 22
          //   1479: aload 9
          //   1481: astore 26
          //   1483: aload 4
          //   1485: astore 16
          //   1487: aload_3
          //   1488: astore 17
          //   1490: aload 18
          //   1492: astore 30
          //   1494: aload 6
          //   1496: astore 5
          //   1498: aload 9
          //   1500: astore 7
          //   1502: aload 4
          //   1504: astore_1
          //   1505: aload_3
          //   1506: astore_2
          //   1507: aload 18
          //   1509: astore 8
          //   1511: aload 31
          //   1513: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   1516: aload 6
          //   1518: astore 19
          //   1520: aload 9
          //   1522: astore 23
          //   1524: aload 4
          //   1526: astore 10
          //   1528: aload_3
          //   1529: astore 11
          //   1531: aload 18
          //   1533: astore 27
          //   1535: aload 6
          //   1537: astore 20
          //   1539: aload 9
          //   1541: astore 24
          //   1543: aload 4
          //   1545: astore 12
          //   1547: aload_3
          //   1548: astore 13
          //   1550: aload 18
          //   1552: astore 28
          //   1554: aload 6
          //   1556: astore 21
          //   1558: aload 9
          //   1560: astore 25
          //   1562: aload 4
          //   1564: astore 14
          //   1566: aload_3
          //   1567: astore 15
          //   1569: aload 18
          //   1571: astore 29
          //   1573: aload 6
          //   1575: astore 22
          //   1577: aload 9
          //   1579: astore 26
          //   1581: aload 4
          //   1583: astore 16
          //   1585: aload_3
          //   1586: astore 17
          //   1588: aload 18
          //   1590: astore 30
          //   1592: aload 6
          //   1594: astore 5
          //   1596: aload 9
          //   1598: astore 7
          //   1600: aload 4
          //   1602: astore_1
          //   1603: aload_3
          //   1604: astore_2
          //   1605: aload 18
          //   1607: astore 8
          //   1609: aload 18
          //   1611: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   1614: aload 18
          //   1616: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   1619: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   1622: astore_1
          //   1623: aload_1
          //   1624: monitorenter
          //   1625: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   1628: aload_0
          //   1629: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   1632: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   1635: pop
          //   1636: aload_1
          //   1637: monitorexit
          //   1638: aload 6
          //   1640: ifnull +34 -> 1674
          //   1643: aload_0
          //   1644: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   1647: ifeq +27 -> 1674
          //   1650: aload_0
          //   1651: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   1654: ifeq +20 -> 1674
          //   1657: aload 6
          //   1659: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   1662: astore_1
          //   1663: aload_1
          //   1664: aload 4
          //   1666: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   1669: aload_1
          //   1670: aload_3
          //   1671: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   1674: aload 33
          //   1676: astore_1
          //   1677: iconst_0
          //   1678: ifne +30 -> 1708
          //   1681: new 173	org/apache/cordova/api/PluginResult
          //   1684: dup
          //   1685: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   1688: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   1691: aload_0
          //   1692: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   1695: aload_0
          //   1696: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   1699: aload 6
          //   1701: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   1704: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   1707: astore_1
          //   1708: aload_1
          //   1709: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   1712: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   1715: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   1718: if_icmpeq +14 -> 1732
          //   1721: aload 9
          //   1723: ifnull +9 -> 1732
          //   1726: aload 9
          //   1728: invokevirtual 206	java/io/File:delete	()Z
          //   1731: pop
          //   1732: aload_0
          //   1733: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   1736: astore_2
          //   1737: aload_2
          //   1738: aload_1
          //   1739: invokevirtual 210	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   1742: return
          //   1743: aload 45
          //   1745: astore 19
          //   1747: aload 9
          //   1749: astore 23
          //   1751: aload 31
          //   1753: astore 10
          //   1755: aload 38
          //   1757: astore 11
          //   1759: aload 18
          //   1761: astore 27
          //   1763: aload 46
          //   1765: astore 20
          //   1767: aload 9
          //   1769: astore 24
          //   1771: aload 34
          //   1773: astore 12
          //   1775: aload 39
          //   1777: astore 13
          //   1779: aload 18
          //   1781: astore 28
          //   1783: aload 47
          //   1785: astore 21
          //   1787: aload 9
          //   1789: astore 25
          //   1791: aload 35
          //   1793: astore 14
          //   1795: aload 40
          //   1797: astore 15
          //   1799: aload 18
          //   1801: astore 29
          //   1803: aload 48
          //   1805: astore 22
          //   1807: aload 9
          //   1809: astore 26
          //   1811: aload 36
          //   1813: astore 16
          //   1815: aload 41
          //   1817: astore 17
          //   1819: aload 18
          //   1821: astore 30
          //   1823: aload 49
          //   1825: astore 5
          //   1827: aload 9
          //   1829: astore 7
          //   1831: aload 37
          //   1833: astore_1
          //   1834: aload 42
          //   1836: astore_2
          //   1837: aload 18
          //   1839: astore 8
          //   1841: aload_0
          //   1842: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
          //   1845: aload_0
          //   1846: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
          //   1849: invokevirtual 214	org/apache/cordova/CordovaResourceApi:createHttpConnection	(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
          //   1852: astore 6
          //   1854: aload 43
          //   1856: astore 4
          //   1858: aload 44
          //   1860: astore_3
          //   1861: aload 6
          //   1863: astore 19
          //   1865: aload 9
          //   1867: astore 23
          //   1869: aload 31
          //   1871: astore 10
          //   1873: aload 38
          //   1875: astore 11
          //   1877: aload 18
          //   1879: astore 27
          //   1881: aload 6
          //   1883: astore 20
          //   1885: aload 9
          //   1887: astore 24
          //   1889: aload 34
          //   1891: astore 12
          //   1893: aload 39
          //   1895: astore 13
          //   1897: aload 18
          //   1899: astore 28
          //   1901: aload 6
          //   1903: astore 21
          //   1905: aload 9
          //   1907: astore 25
          //   1909: aload 35
          //   1911: astore 14
          //   1913: aload 40
          //   1915: astore 15
          //   1917: aload 18
          //   1919: astore 29
          //   1921: aload 6
          //   1923: astore 22
          //   1925: aload 9
          //   1927: astore 26
          //   1929: aload 36
          //   1931: astore 16
          //   1933: aload 41
          //   1935: astore 17
          //   1937: aload 18
          //   1939: astore 30
          //   1941: aload 6
          //   1943: astore 5
          //   1945: aload 9
          //   1947: astore 7
          //   1949: aload 37
          //   1951: astore_1
          //   1952: aload 42
          //   1954: astore_2
          //   1955: aload 18
          //   1957: astore 8
          //   1959: aload_0
          //   1960: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   1963: ifeq +525 -> 2488
          //   1966: aload 43
          //   1968: astore 4
          //   1970: aload 44
          //   1972: astore_3
          //   1973: aload 6
          //   1975: astore 19
          //   1977: aload 9
          //   1979: astore 23
          //   1981: aload 31
          //   1983: astore 10
          //   1985: aload 38
          //   1987: astore 11
          //   1989: aload 18
          //   1991: astore 27
          //   1993: aload 6
          //   1995: astore 20
          //   1997: aload 9
          //   1999: astore 24
          //   2001: aload 34
          //   2003: astore 12
          //   2005: aload 39
          //   2007: astore 13
          //   2009: aload 18
          //   2011: astore 28
          //   2013: aload 6
          //   2015: astore 21
          //   2017: aload 9
          //   2019: astore 25
          //   2021: aload 35
          //   2023: astore 14
          //   2025: aload 40
          //   2027: astore 15
          //   2029: aload 18
          //   2031: astore 29
          //   2033: aload 6
          //   2035: astore 22
          //   2037: aload 9
          //   2039: astore 26
          //   2041: aload 36
          //   2043: astore 16
          //   2045: aload 41
          //   2047: astore 17
          //   2049: aload 18
          //   2051: astore 30
          //   2053: aload 6
          //   2055: astore 5
          //   2057: aload 9
          //   2059: astore 7
          //   2061: aload 37
          //   2063: astore_1
          //   2064: aload 42
          //   2066: astore_2
          //   2067: aload 18
          //   2069: astore 8
          //   2071: aload_0
          //   2072: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   2075: ifeq +413 -> 2488
          //   2078: aload 6
          //   2080: astore 19
          //   2082: aload 9
          //   2084: astore 23
          //   2086: aload 31
          //   2088: astore 10
          //   2090: aload 38
          //   2092: astore 11
          //   2094: aload 18
          //   2096: astore 27
          //   2098: aload 6
          //   2100: astore 20
          //   2102: aload 9
          //   2104: astore 24
          //   2106: aload 34
          //   2108: astore 12
          //   2110: aload 39
          //   2112: astore 13
          //   2114: aload 18
          //   2116: astore 28
          //   2118: aload 6
          //   2120: astore 21
          //   2122: aload 9
          //   2124: astore 25
          //   2126: aload 35
          //   2128: astore 14
          //   2130: aload 40
          //   2132: astore 15
          //   2134: aload 18
          //   2136: astore 29
          //   2138: aload 6
          //   2140: astore 22
          //   2142: aload 9
          //   2144: astore 26
          //   2146: aload 36
          //   2148: astore 16
          //   2150: aload 41
          //   2152: astore 17
          //   2154: aload 18
          //   2156: astore 30
          //   2158: aload 6
          //   2160: astore 5
          //   2162: aload 9
          //   2164: astore 7
          //   2166: aload 37
          //   2168: astore_1
          //   2169: aload 42
          //   2171: astore_2
          //   2172: aload 18
          //   2174: astore 8
          //   2176: aload 6
          //   2178: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   2181: astore 43
          //   2183: aload 6
          //   2185: astore 19
          //   2187: aload 9
          //   2189: astore 23
          //   2191: aload 31
          //   2193: astore 10
          //   2195: aload 38
          //   2197: astore 11
          //   2199: aload 18
          //   2201: astore 27
          //   2203: aload 6
          //   2205: astore 20
          //   2207: aload 9
          //   2209: astore 24
          //   2211: aload 34
          //   2213: astore 12
          //   2215: aload 39
          //   2217: astore 13
          //   2219: aload 18
          //   2221: astore 28
          //   2223: aload 6
          //   2225: astore 21
          //   2227: aload 9
          //   2229: astore 25
          //   2231: aload 35
          //   2233: astore 14
          //   2235: aload 40
          //   2237: astore 15
          //   2239: aload 18
          //   2241: astore 29
          //   2243: aload 6
          //   2245: astore 22
          //   2247: aload 9
          //   2249: astore 26
          //   2251: aload 36
          //   2253: astore 16
          //   2255: aload 41
          //   2257: astore 17
          //   2259: aload 18
          //   2261: astore 30
          //   2263: aload 6
          //   2265: astore 5
          //   2267: aload 9
          //   2269: astore 7
          //   2271: aload 37
          //   2273: astore_1
          //   2274: aload 42
          //   2276: astore_2
          //   2277: aload 18
          //   2279: astore 8
          //   2281: aload 43
          //   2283: invokestatic 218	org/apache/cordova/FileTransfer:access$000	(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
          //   2286: astore_3
          //   2287: aload 6
          //   2289: astore 19
          //   2291: aload 9
          //   2293: astore 23
          //   2295: aload 31
          //   2297: astore 10
          //   2299: aload_3
          //   2300: astore 11
          //   2302: aload 18
          //   2304: astore 27
          //   2306: aload 6
          //   2308: astore 20
          //   2310: aload 9
          //   2312: astore 24
          //   2314: aload 34
          //   2316: astore 12
          //   2318: aload_3
          //   2319: astore 13
          //   2321: aload 18
          //   2323: astore 28
          //   2325: aload 6
          //   2327: astore 21
          //   2329: aload 9
          //   2331: astore 25
          //   2333: aload 35
          //   2335: astore 14
          //   2337: aload_3
          //   2338: astore 15
          //   2340: aload 18
          //   2342: astore 29
          //   2344: aload 6
          //   2346: astore 22
          //   2348: aload 9
          //   2350: astore 26
          //   2352: aload 36
          //   2354: astore 16
          //   2356: aload_3
          //   2357: astore 17
          //   2359: aload 18
          //   2361: astore 30
          //   2363: aload 6
          //   2365: astore 5
          //   2367: aload 9
          //   2369: astore 7
          //   2371: aload 37
          //   2373: astore_1
          //   2374: aload_3
          //   2375: astore_2
          //   2376: aload 18
          //   2378: astore 8
          //   2380: aload 43
          //   2382: invokevirtual 222	javax/net/ssl/HttpsURLConnection:getHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
          //   2385: astore 4
          //   2387: aload 6
          //   2389: astore 19
          //   2391: aload 9
          //   2393: astore 23
          //   2395: aload 4
          //   2397: astore 10
          //   2399: aload_3
          //   2400: astore 11
          //   2402: aload 18
          //   2404: astore 27
          //   2406: aload 6
          //   2408: astore 20
          //   2410: aload 9
          //   2412: astore 24
          //   2414: aload 4
          //   2416: astore 12
          //   2418: aload_3
          //   2419: astore 13
          //   2421: aload 18
          //   2423: astore 28
          //   2425: aload 6
          //   2427: astore 21
          //   2429: aload 9
          //   2431: astore 25
          //   2433: aload 4
          //   2435: astore 14
          //   2437: aload_3
          //   2438: astore 15
          //   2440: aload 18
          //   2442: astore 29
          //   2444: aload 6
          //   2446: astore 22
          //   2448: aload 9
          //   2450: astore 26
          //   2452: aload 4
          //   2454: astore 16
          //   2456: aload_3
          //   2457: astore 17
          //   2459: aload 18
          //   2461: astore 30
          //   2463: aload 6
          //   2465: astore 5
          //   2467: aload 9
          //   2469: astore 7
          //   2471: aload 4
          //   2473: astore_1
          //   2474: aload_3
          //   2475: astore_2
          //   2476: aload 18
          //   2478: astore 8
          //   2480: aload 43
          //   2482: invokestatic 225	org/apache/cordova/FileTransfer:access$100	()Ljavax/net/ssl/HostnameVerifier;
          //   2485: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   2488: aload 6
          //   2490: astore 19
          //   2492: aload 9
          //   2494: astore 23
          //   2496: aload 4
          //   2498: astore 10
          //   2500: aload_3
          //   2501: astore 11
          //   2503: aload 18
          //   2505: astore 27
          //   2507: aload 6
          //   2509: astore 20
          //   2511: aload 9
          //   2513: astore 24
          //   2515: aload 4
          //   2517: astore 12
          //   2519: aload_3
          //   2520: astore 13
          //   2522: aload 18
          //   2524: astore 28
          //   2526: aload 6
          //   2528: astore 21
          //   2530: aload 9
          //   2532: astore 25
          //   2534: aload 4
          //   2536: astore 14
          //   2538: aload_3
          //   2539: astore 15
          //   2541: aload 18
          //   2543: astore 29
          //   2545: aload 6
          //   2547: astore 22
          //   2549: aload 9
          //   2551: astore 26
          //   2553: aload 4
          //   2555: astore 16
          //   2557: aload_3
          //   2558: astore 17
          //   2560: aload 18
          //   2562: astore 30
          //   2564: aload 6
          //   2566: astore 5
          //   2568: aload 9
          //   2570: astore 7
          //   2572: aload 4
          //   2574: astore_1
          //   2575: aload_3
          //   2576: astore_2
          //   2577: aload 18
          //   2579: astore 8
          //   2581: aload 6
          //   2583: ldc -29
          //   2585: invokevirtual 233	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
          //   2588: aload 6
          //   2590: astore 19
          //   2592: aload 9
          //   2594: astore 23
          //   2596: aload 4
          //   2598: astore 10
          //   2600: aload_3
          //   2601: astore 11
          //   2603: aload 18
          //   2605: astore 27
          //   2607: aload 6
          //   2609: astore 20
          //   2611: aload 9
          //   2613: astore 24
          //   2615: aload 4
          //   2617: astore 12
          //   2619: aload_3
          //   2620: astore 13
          //   2622: aload 18
          //   2624: astore 28
          //   2626: aload 6
          //   2628: astore 21
          //   2630: aload 9
          //   2632: astore 25
          //   2634: aload 4
          //   2636: astore 14
          //   2638: aload_3
          //   2639: astore 15
          //   2641: aload 18
          //   2643: astore 29
          //   2645: aload 6
          //   2647: astore 22
          //   2649: aload 9
          //   2651: astore 26
          //   2653: aload 4
          //   2655: astore 16
          //   2657: aload_3
          //   2658: astore 17
          //   2660: aload 18
          //   2662: astore 30
          //   2664: aload 6
          //   2666: astore 5
          //   2668: aload 9
          //   2670: astore 7
          //   2672: aload 4
          //   2674: astore_1
          //   2675: aload_3
          //   2676: astore_2
          //   2677: aload 18
          //   2679: astore 8
          //   2681: invokestatic 239	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
          //   2684: aload_0
          //   2685: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
          //   2688: invokevirtual 242	android/net/Uri:toString	()Ljava/lang/String;
          //   2691: invokevirtual 246	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
          //   2694: astore 31
          //   2696: aload 31
          //   2698: ifnull +105 -> 2803
          //   2701: aload 6
          //   2703: astore 19
          //   2705: aload 9
          //   2707: astore 23
          //   2709: aload 4
          //   2711: astore 10
          //   2713: aload_3
          //   2714: astore 11
          //   2716: aload 18
          //   2718: astore 27
          //   2720: aload 6
          //   2722: astore 20
          //   2724: aload 9
          //   2726: astore 24
          //   2728: aload 4
          //   2730: astore 12
          //   2732: aload_3
          //   2733: astore 13
          //   2735: aload 18
          //   2737: astore 28
          //   2739: aload 6
          //   2741: astore 21
          //   2743: aload 9
          //   2745: astore 25
          //   2747: aload 4
          //   2749: astore 14
          //   2751: aload_3
          //   2752: astore 15
          //   2754: aload 18
          //   2756: astore 29
          //   2758: aload 6
          //   2760: astore 22
          //   2762: aload 9
          //   2764: astore 26
          //   2766: aload 4
          //   2768: astore 16
          //   2770: aload_3
          //   2771: astore 17
          //   2773: aload 18
          //   2775: astore 30
          //   2777: aload 6
          //   2779: astore 5
          //   2781: aload 9
          //   2783: astore 7
          //   2785: aload 4
          //   2787: astore_1
          //   2788: aload_3
          //   2789: astore_2
          //   2790: aload 18
          //   2792: astore 8
          //   2794: aload 6
          //   2796: ldc -8
          //   2798: aload 31
          //   2800: invokevirtual 252	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
          //   2803: aload 6
          //   2805: astore 19
          //   2807: aload 9
          //   2809: astore 23
          //   2811: aload 4
          //   2813: astore 10
          //   2815: aload_3
          //   2816: astore 11
          //   2818: aload 18
          //   2820: astore 27
          //   2822: aload 6
          //   2824: astore 20
          //   2826: aload 9
          //   2828: astore 24
          //   2830: aload 4
          //   2832: astore 12
          //   2834: aload_3
          //   2835: astore 13
          //   2837: aload 18
          //   2839: astore 28
          //   2841: aload 6
          //   2843: astore 21
          //   2845: aload 9
          //   2847: astore 25
          //   2849: aload 4
          //   2851: astore 14
          //   2853: aload_3
          //   2854: astore 15
          //   2856: aload 18
          //   2858: astore 29
          //   2860: aload 6
          //   2862: astore 22
          //   2864: aload 9
          //   2866: astore 26
          //   2868: aload 4
          //   2870: astore 16
          //   2872: aload_3
          //   2873: astore 17
          //   2875: aload 18
          //   2877: astore 30
          //   2879: aload 6
          //   2881: astore 5
          //   2883: aload 9
          //   2885: astore 7
          //   2887: aload 4
          //   2889: astore_1
          //   2890: aload_3
          //   2891: astore_2
          //   2892: aload 18
          //   2894: astore 8
          //   2896: aload 6
          //   2898: ldc -2
          //   2900: ldc_w 256
          //   2903: invokevirtual 252	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
          //   2906: aload 6
          //   2908: astore 19
          //   2910: aload 9
          //   2912: astore 23
          //   2914: aload 4
          //   2916: astore 10
          //   2918: aload_3
          //   2919: astore 11
          //   2921: aload 18
          //   2923: astore 27
          //   2925: aload 6
          //   2927: astore 20
          //   2929: aload 9
          //   2931: astore 24
          //   2933: aload 4
          //   2935: astore 12
          //   2937: aload_3
          //   2938: astore 13
          //   2940: aload 18
          //   2942: astore 28
          //   2944: aload 6
          //   2946: astore 21
          //   2948: aload 9
          //   2950: astore 25
          //   2952: aload 4
          //   2954: astore 14
          //   2956: aload_3
          //   2957: astore 15
          //   2959: aload 18
          //   2961: astore 29
          //   2963: aload 6
          //   2965: astore 22
          //   2967: aload 9
          //   2969: astore 26
          //   2971: aload 4
          //   2973: astore 16
          //   2975: aload_3
          //   2976: astore 17
          //   2978: aload 18
          //   2980: astore 30
          //   2982: aload 6
          //   2984: astore 5
          //   2986: aload 9
          //   2988: astore 7
          //   2990: aload 4
          //   2992: astore_1
          //   2993: aload_3
          //   2994: astore_2
          //   2995: aload 18
          //   2997: astore 8
          //   2999: aload_0
          //   3000: getfield 50	org/apache/cordova/FileTransfer$4:val$headers	Lorg/json/JSONObject;
          //   3003: ifnull +105 -> 3108
          //   3006: aload 6
          //   3008: astore 19
          //   3010: aload 9
          //   3012: astore 23
          //   3014: aload 4
          //   3016: astore 10
          //   3018: aload_3
          //   3019: astore 11
          //   3021: aload 18
          //   3023: astore 27
          //   3025: aload 6
          //   3027: astore 20
          //   3029: aload 9
          //   3031: astore 24
          //   3033: aload 4
          //   3035: astore 12
          //   3037: aload_3
          //   3038: astore 13
          //   3040: aload 18
          //   3042: astore 28
          //   3044: aload 6
          //   3046: astore 21
          //   3048: aload 9
          //   3050: astore 25
          //   3052: aload 4
          //   3054: astore 14
          //   3056: aload_3
          //   3057: astore 15
          //   3059: aload 18
          //   3061: astore 29
          //   3063: aload 6
          //   3065: astore 22
          //   3067: aload 9
          //   3069: astore 26
          //   3071: aload 4
          //   3073: astore 16
          //   3075: aload_3
          //   3076: astore 17
          //   3078: aload 18
          //   3080: astore 30
          //   3082: aload 6
          //   3084: astore 5
          //   3086: aload 9
          //   3088: astore 7
          //   3090: aload 4
          //   3092: astore_1
          //   3093: aload_3
          //   3094: astore_2
          //   3095: aload 18
          //   3097: astore 8
          //   3099: aload 6
          //   3101: aload_0
          //   3102: getfield 50	org/apache/cordova/FileTransfer$4:val$headers	Lorg/json/JSONObject;
          //   3105: invokestatic 260	org/apache/cordova/FileTransfer:access$200	(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
          //   3108: aload 6
          //   3110: astore 19
          //   3112: aload 9
          //   3114: astore 23
          //   3116: aload 4
          //   3118: astore 10
          //   3120: aload_3
          //   3121: astore 11
          //   3123: aload 18
          //   3125: astore 27
          //   3127: aload 6
          //   3129: astore 20
          //   3131: aload 9
          //   3133: astore 24
          //   3135: aload 4
          //   3137: astore 12
          //   3139: aload_3
          //   3140: astore 13
          //   3142: aload 18
          //   3144: astore 28
          //   3146: aload 6
          //   3148: astore 21
          //   3150: aload 9
          //   3152: astore 25
          //   3154: aload 4
          //   3156: astore 14
          //   3158: aload_3
          //   3159: astore 15
          //   3161: aload 18
          //   3163: astore 29
          //   3165: aload 6
          //   3167: astore 22
          //   3169: aload 9
          //   3171: astore 26
          //   3173: aload 4
          //   3175: astore 16
          //   3177: aload_3
          //   3178: astore 17
          //   3180: aload 18
          //   3182: astore 30
          //   3184: aload 6
          //   3186: astore 5
          //   3188: aload 9
          //   3190: astore 7
          //   3192: aload 4
          //   3194: astore_1
          //   3195: aload_3
          //   3196: astore_2
          //   3197: aload 18
          //   3199: astore 8
          //   3201: aload 6
          //   3203: invokevirtual 263	java/net/HttpURLConnection:connect	()V
          //   3206: aload 6
          //   3208: astore 19
          //   3210: aload 9
          //   3212: astore 23
          //   3214: aload 4
          //   3216: astore 10
          //   3218: aload_3
          //   3219: astore 11
          //   3221: aload 18
          //   3223: astore 27
          //   3225: aload 6
          //   3227: astore 20
          //   3229: aload 9
          //   3231: astore 24
          //   3233: aload 4
          //   3235: astore 12
          //   3237: aload_3
          //   3238: astore 13
          //   3240: aload 18
          //   3242: astore 28
          //   3244: aload 6
          //   3246: astore 21
          //   3248: aload 9
          //   3250: astore 25
          //   3252: aload 4
          //   3254: astore 14
          //   3256: aload_3
          //   3257: astore 15
          //   3259: aload 18
          //   3261: astore 29
          //   3263: aload 6
          //   3265: astore 22
          //   3267: aload 9
          //   3269: astore 26
          //   3271: aload 4
          //   3273: astore 16
          //   3275: aload_3
          //   3276: astore 17
          //   3278: aload 18
          //   3280: astore 30
          //   3282: aload 6
          //   3284: astore 5
          //   3286: aload 9
          //   3288: astore 7
          //   3290: aload 4
          //   3292: astore_1
          //   3293: aload_3
          //   3294: astore_2
          //   3295: aload 18
          //   3297: astore 8
          //   3299: aload 6
          //   3301: invokevirtual 266	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
          //   3304: ifnull +110 -> 3414
          //   3307: aload 6
          //   3309: astore 19
          //   3311: aload 9
          //   3313: astore 23
          //   3315: aload 4
          //   3317: astore 10
          //   3319: aload_3
          //   3320: astore 11
          //   3322: aload 18
          //   3324: astore 27
          //   3326: aload 6
          //   3328: astore 20
          //   3330: aload 9
          //   3332: astore 24
          //   3334: aload 4
          //   3336: astore 12
          //   3338: aload_3
          //   3339: astore 13
          //   3341: aload 18
          //   3343: astore 28
          //   3345: aload 6
          //   3347: astore 21
          //   3349: aload 9
          //   3351: astore 25
          //   3353: aload 4
          //   3355: astore 14
          //   3357: aload_3
          //   3358: astore 15
          //   3360: aload 18
          //   3362: astore 29
          //   3364: aload 6
          //   3366: astore 22
          //   3368: aload 9
          //   3370: astore 26
          //   3372: aload 4
          //   3374: astore 16
          //   3376: aload_3
          //   3377: astore 17
          //   3379: aload 18
          //   3381: astore 30
          //   3383: aload 6
          //   3385: astore 5
          //   3387: aload 9
          //   3389: astore 7
          //   3391: aload 4
          //   3393: astore_1
          //   3394: aload_3
          //   3395: astore_2
          //   3396: aload 18
          //   3398: astore 8
          //   3400: aload 6
          //   3402: invokevirtual 266	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
          //   3405: ldc_w 256
          //   3408: invokevirtual 272	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
          //   3411: ifeq +206 -> 3617
          //   3414: aload 6
          //   3416: astore 19
          //   3418: aload 9
          //   3420: astore 23
          //   3422: aload 4
          //   3424: astore 10
          //   3426: aload_3
          //   3427: astore 11
          //   3429: aload 18
          //   3431: astore 27
          //   3433: aload 6
          //   3435: astore 20
          //   3437: aload 9
          //   3439: astore 24
          //   3441: aload 4
          //   3443: astore 12
          //   3445: aload_3
          //   3446: astore 13
          //   3448: aload 18
          //   3450: astore 28
          //   3452: aload 6
          //   3454: astore 21
          //   3456: aload 9
          //   3458: astore 25
          //   3460: aload 4
          //   3462: astore 14
          //   3464: aload_3
          //   3465: astore 15
          //   3467: aload 18
          //   3469: astore 29
          //   3471: aload 6
          //   3473: astore 22
          //   3475: aload 9
          //   3477: astore 26
          //   3479: aload 4
          //   3481: astore 16
          //   3483: aload_3
          //   3484: astore 17
          //   3486: aload 18
          //   3488: astore 30
          //   3490: aload 6
          //   3492: astore 5
          //   3494: aload 9
          //   3496: astore 7
          //   3498: aload 4
          //   3500: astore_1
          //   3501: aload_3
          //   3502: astore_2
          //   3503: aload 18
          //   3505: astore 8
          //   3507: aload 50
          //   3509: iconst_1
          //   3510: invokevirtual 131	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
          //   3513: aload 6
          //   3515: astore 19
          //   3517: aload 9
          //   3519: astore 23
          //   3521: aload 4
          //   3523: astore 10
          //   3525: aload_3
          //   3526: astore 11
          //   3528: aload 18
          //   3530: astore 27
          //   3532: aload 6
          //   3534: astore 20
          //   3536: aload 9
          //   3538: astore 24
          //   3540: aload 4
          //   3542: astore 12
          //   3544: aload_3
          //   3545: astore 13
          //   3547: aload 18
          //   3549: astore 28
          //   3551: aload 6
          //   3553: astore 21
          //   3555: aload 9
          //   3557: astore 25
          //   3559: aload 4
          //   3561: astore 14
          //   3563: aload_3
          //   3564: astore 15
          //   3566: aload 18
          //   3568: astore 29
          //   3570: aload 6
          //   3572: astore 22
          //   3574: aload 9
          //   3576: astore 26
          //   3578: aload 4
          //   3580: astore 16
          //   3582: aload_3
          //   3583: astore 17
          //   3585: aload 18
          //   3587: astore 30
          //   3589: aload 6
          //   3591: astore 5
          //   3593: aload 9
          //   3595: astore 7
          //   3597: aload 4
          //   3599: astore_1
          //   3600: aload_3
          //   3601: astore_2
          //   3602: aload 18
          //   3604: astore 8
          //   3606: aload 50
          //   3608: aload 6
          //   3610: invokevirtual 275	java/net/HttpURLConnection:getContentLength	()I
          //   3613: i2l
          //   3614: invokevirtual 135	org/apache/cordova/FileProgressResult:setTotal	(J)V
          //   3617: aload 6
          //   3619: astore 19
          //   3621: aload 9
          //   3623: astore 23
          //   3625: aload 4
          //   3627: astore 10
          //   3629: aload_3
          //   3630: astore 11
          //   3632: aload 18
          //   3634: astore 27
          //   3636: aload 6
          //   3638: astore 20
          //   3640: aload 9
          //   3642: astore 24
          //   3644: aload 4
          //   3646: astore 12
          //   3648: aload_3
          //   3649: astore 13
          //   3651: aload 18
          //   3653: astore 28
          //   3655: aload 6
          //   3657: astore 21
          //   3659: aload 9
          //   3661: astore 25
          //   3663: aload 4
          //   3665: astore 14
          //   3667: aload_3
          //   3668: astore 15
          //   3670: aload 18
          //   3672: astore 29
          //   3674: aload 6
          //   3676: astore 22
          //   3678: aload 9
          //   3680: astore 26
          //   3682: aload 4
          //   3684: astore 16
          //   3686: aload_3
          //   3687: astore 17
          //   3689: aload 18
          //   3691: astore 30
          //   3693: aload 6
          //   3695: astore 5
          //   3697: aload 9
          //   3699: astore 7
          //   3701: aload 4
          //   3703: astore_1
          //   3704: aload_3
          //   3705: astore_2
          //   3706: aload 18
          //   3708: astore 8
          //   3710: aload 6
          //   3712: invokestatic 279	org/apache/cordova/FileTransfer:access$400	(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
          //   3715: astore 31
          //   3717: goto -2419 -> 1298
          //   3720: aload_0
          //   3721: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3724: aload 31
          //   3726: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   3729: aload_1
          //   3730: monitorexit
          //   3731: sipush 16384
          //   3734: newarray <illegal type>
          //   3736: astore_1
          //   3737: aload 31
          //   3739: aload_1
          //   3740: invokevirtual 285	org/apache/cordova/FileTransfer$TrackingInputStream:read	([B)I
          //   3743: istore 54
          //   3745: iload 54
          //   3747: ifle +676 -> 4423
          //   3750: aload 18
          //   3752: aload_1
          //   3753: iconst_0
          //   3754: iload 54
          //   3756: invokevirtual 291	java/io/OutputStream:write	([BII)V
          //   3759: aload 50
          //   3761: aload 31
          //   3763: invokevirtual 295	org/apache/cordova/FileTransfer$TrackingInputStream:getTotalRawBytesRead	()J
          //   3766: invokevirtual 298	org/apache/cordova/FileProgressResult:setLoaded	(J)V
          //   3769: new 173	org/apache/cordova/api/PluginResult
          //   3772: dup
          //   3773: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   3776: aload 50
          //   3778: invokevirtual 302	org/apache/cordova/FileProgressResult:toJSONObject	()Lorg/json/JSONObject;
          //   3781: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   3784: astore_2
          //   3785: aload_2
          //   3786: iconst_1
          //   3787: invokevirtual 305	org/apache/cordova/api/PluginResult:setKeepCallback	(Z)V
          //   3790: aload_0
          //   3791: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3794: aload_2
          //   3795: invokevirtual 210	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   3798: goto -61 -> 3737
          //   3801: astore 33
          //   3803: aload 6
          //   3805: astore 19
          //   3807: aload 9
          //   3809: astore 23
          //   3811: aload 4
          //   3813: astore 10
          //   3815: aload_3
          //   3816: astore 11
          //   3818: aload 18
          //   3820: astore 27
          //   3822: aload 6
          //   3824: astore 20
          //   3826: aload 9
          //   3828: astore 24
          //   3830: aload 4
          //   3832: astore 12
          //   3834: aload_3
          //   3835: astore 13
          //   3837: aload 18
          //   3839: astore 28
          //   3841: aload 6
          //   3843: astore 21
          //   3845: aload 9
          //   3847: astore 25
          //   3849: aload 4
          //   3851: astore 14
          //   3853: aload_3
          //   3854: astore 15
          //   3856: aload 18
          //   3858: astore 29
          //   3860: aload 6
          //   3862: astore 22
          //   3864: aload 9
          //   3866: astore 26
          //   3868: aload 4
          //   3870: astore 16
          //   3872: aload_3
          //   3873: astore 17
          //   3875: aload 18
          //   3877: astore 30
          //   3879: aload 6
          //   3881: astore 5
          //   3883: aload 9
          //   3885: astore 7
          //   3887: aload 4
          //   3889: astore_1
          //   3890: aload_3
          //   3891: astore_2
          //   3892: aload 18
          //   3894: astore 8
          //   3896: aload_0
          //   3897: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3900: aconst_null
          //   3901: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   3904: aload 6
          //   3906: astore 19
          //   3908: aload 9
          //   3910: astore 23
          //   3912: aload 4
          //   3914: astore 10
          //   3916: aload_3
          //   3917: astore 11
          //   3919: aload 18
          //   3921: astore 27
          //   3923: aload 6
          //   3925: astore 20
          //   3927: aload 9
          //   3929: astore 24
          //   3931: aload 4
          //   3933: astore 12
          //   3935: aload_3
          //   3936: astore 13
          //   3938: aload 18
          //   3940: astore 28
          //   3942: aload 6
          //   3944: astore 21
          //   3946: aload 9
          //   3948: astore 25
          //   3950: aload 4
          //   3952: astore 14
          //   3954: aload_3
          //   3955: astore 15
          //   3957: aload 18
          //   3959: astore 29
          //   3961: aload 6
          //   3963: astore 22
          //   3965: aload 9
          //   3967: astore 26
          //   3969: aload 4
          //   3971: astore 16
          //   3973: aload_3
          //   3974: astore 17
          //   3976: aload 18
          //   3978: astore 30
          //   3980: aload 6
          //   3982: astore 5
          //   3984: aload 9
          //   3986: astore 7
          //   3988: aload 4
          //   3990: astore_1
          //   3991: aload_3
          //   3992: astore_2
          //   3993: aload 18
          //   3995: astore 8
          //   3997: aload 31
          //   3999: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4002: aload 6
          //   4004: astore 19
          //   4006: aload 9
          //   4008: astore 23
          //   4010: aload 4
          //   4012: astore 10
          //   4014: aload_3
          //   4015: astore 11
          //   4017: aload 18
          //   4019: astore 27
          //   4021: aload 6
          //   4023: astore 20
          //   4025: aload 9
          //   4027: astore 24
          //   4029: aload 4
          //   4031: astore 12
          //   4033: aload_3
          //   4034: astore 13
          //   4036: aload 18
          //   4038: astore 28
          //   4040: aload 6
          //   4042: astore 21
          //   4044: aload 9
          //   4046: astore 25
          //   4048: aload 4
          //   4050: astore 14
          //   4052: aload_3
          //   4053: astore 15
          //   4055: aload 18
          //   4057: astore 29
          //   4059: aload 6
          //   4061: astore 22
          //   4063: aload 9
          //   4065: astore 26
          //   4067: aload 4
          //   4069: astore 16
          //   4071: aload_3
          //   4072: astore 17
          //   4074: aload 18
          //   4076: astore 30
          //   4078: aload 6
          //   4080: astore 5
          //   4082: aload 9
          //   4084: astore 7
          //   4086: aload 4
          //   4088: astore_1
          //   4089: aload_3
          //   4090: astore_2
          //   4091: aload 18
          //   4093: astore 8
          //   4095: aload 18
          //   4097: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4100: aload 6
          //   4102: astore 19
          //   4104: aload 9
          //   4106: astore 23
          //   4108: aload 4
          //   4110: astore 10
          //   4112: aload_3
          //   4113: astore 11
          //   4115: aload 18
          //   4117: astore 27
          //   4119: aload 6
          //   4121: astore 20
          //   4123: aload 9
          //   4125: astore 24
          //   4127: aload 4
          //   4129: astore 12
          //   4131: aload_3
          //   4132: astore 13
          //   4134: aload 18
          //   4136: astore 28
          //   4138: aload 6
          //   4140: astore 21
          //   4142: aload 9
          //   4144: astore 25
          //   4146: aload 4
          //   4148: astore 14
          //   4150: aload_3
          //   4151: astore 15
          //   4153: aload 18
          //   4155: astore 29
          //   4157: aload 6
          //   4159: astore 22
          //   4161: aload 9
          //   4163: astore 26
          //   4165: aload 4
          //   4167: astore 16
          //   4169: aload_3
          //   4170: astore 17
          //   4172: aload 18
          //   4174: astore 30
          //   4176: aload 6
          //   4178: astore 5
          //   4180: aload 9
          //   4182: astore 7
          //   4184: aload 4
          //   4186: astore_1
          //   4187: aload_3
          //   4188: astore_2
          //   4189: aload 18
          //   4191: astore 8
          //   4193: aload 33
          //   4195: athrow
          //   4196: astore_3
          //   4197: aload 19
          //   4199: astore 5
          //   4201: aload 23
          //   4203: astore 7
          //   4205: aload 10
          //   4207: astore_1
          //   4208: aload 11
          //   4210: astore_2
          //   4211: aload 27
          //   4213: astore 8
          //   4215: getstatic 308	org/apache/cordova/FileTransfer:FILE_NOT_FOUND_ERR	I
          //   4218: aload_0
          //   4219: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4222: aload_0
          //   4223: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4226: aload 19
          //   4228: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4231: astore 4
          //   4233: aload 19
          //   4235: astore 5
          //   4237: aload 23
          //   4239: astore 7
          //   4241: aload 10
          //   4243: astore_1
          //   4244: aload 11
          //   4246: astore_2
          //   4247: aload 27
          //   4249: astore 8
          //   4251: ldc 90
          //   4253: aload 4
          //   4255: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
          //   4258: aload_3
          //   4259: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   4262: pop
          //   4263: aload 19
          //   4265: astore 5
          //   4267: aload 23
          //   4269: astore 7
          //   4271: aload 10
          //   4273: astore_1
          //   4274: aload 11
          //   4276: astore_2
          //   4277: aload 27
          //   4279: astore 8
          //   4281: new 173	org/apache/cordova/api/PluginResult
          //   4284: dup
          //   4285: getstatic 318	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   4288: aload 4
          //   4290: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4293: astore_3
          //   4294: aload 27
          //   4296: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4299: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   4302: astore_1
          //   4303: aload_1
          //   4304: monitorenter
          //   4305: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   4308: aload_0
          //   4309: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   4312: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   4315: pop
          //   4316: aload_1
          //   4317: monitorexit
          //   4318: aload 19
          //   4320: ifnull +35 -> 4355
          //   4323: aload_0
          //   4324: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   4327: ifeq +28 -> 4355
          //   4330: aload_0
          //   4331: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   4334: ifeq +21 -> 4355
          //   4337: aload 19
          //   4339: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   4342: astore_1
          //   4343: aload_1
          //   4344: aload 10
          //   4346: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4349: aload_1
          //   4350: aload 11
          //   4352: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4355: aload_3
          //   4356: ifnonnull +1635 -> 5991
          //   4359: new 173	org/apache/cordova/api/PluginResult
          //   4362: dup
          //   4363: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   4366: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4369: aload_0
          //   4370: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   4373: aload_0
          //   4374: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4377: aload 19
          //   4379: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4382: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4385: astore_1
          //   4386: aload_1
          //   4387: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   4390: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   4393: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   4396: if_icmpeq +14 -> 4410
          //   4399: aload 23
          //   4401: ifnull +9 -> 4410
          //   4404: aload 23
          //   4406: invokevirtual 206	java/io/File:delete	()Z
          //   4409: pop
          //   4410: aload_0
          //   4411: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4414: astore_2
          //   4415: goto -2678 -> 1737
          //   4418: astore_2
          //   4419: aload_1
          //   4420: monitorexit
          //   4421: aload_2
          //   4422: athrow
          //   4423: aload 6
          //   4425: astore 19
          //   4427: aload 9
          //   4429: astore 23
          //   4431: aload 4
          //   4433: astore 10
          //   4435: aload_3
          //   4436: astore 11
          //   4438: aload 18
          //   4440: astore 27
          //   4442: aload 6
          //   4444: astore 20
          //   4446: aload 9
          //   4448: astore 24
          //   4450: aload 4
          //   4452: astore 12
          //   4454: aload_3
          //   4455: astore 13
          //   4457: aload 18
          //   4459: astore 28
          //   4461: aload 6
          //   4463: astore 21
          //   4465: aload 9
          //   4467: astore 25
          //   4469: aload 4
          //   4471: astore 14
          //   4473: aload_3
          //   4474: astore 15
          //   4476: aload 18
          //   4478: astore 29
          //   4480: aload 6
          //   4482: astore 22
          //   4484: aload 9
          //   4486: astore 26
          //   4488: aload 4
          //   4490: astore 16
          //   4492: aload_3
          //   4493: astore 17
          //   4495: aload 18
          //   4497: astore 30
          //   4499: aload 6
          //   4501: astore 5
          //   4503: aload 9
          //   4505: astore 7
          //   4507: aload 4
          //   4509: astore_1
          //   4510: aload_3
          //   4511: astore_2
          //   4512: aload 18
          //   4514: astore 8
          //   4516: aload_0
          //   4517: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4520: aconst_null
          //   4521: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   4524: aload 6
          //   4526: astore 19
          //   4528: aload 9
          //   4530: astore 23
          //   4532: aload 4
          //   4534: astore 10
          //   4536: aload_3
          //   4537: astore 11
          //   4539: aload 18
          //   4541: astore 27
          //   4543: aload 6
          //   4545: astore 20
          //   4547: aload 9
          //   4549: astore 24
          //   4551: aload 4
          //   4553: astore 12
          //   4555: aload_3
          //   4556: astore 13
          //   4558: aload 18
          //   4560: astore 28
          //   4562: aload 6
          //   4564: astore 21
          //   4566: aload 9
          //   4568: astore 25
          //   4570: aload 4
          //   4572: astore 14
          //   4574: aload_3
          //   4575: astore 15
          //   4577: aload 18
          //   4579: astore 29
          //   4581: aload 6
          //   4583: astore 22
          //   4585: aload 9
          //   4587: astore 26
          //   4589: aload 4
          //   4591: astore 16
          //   4593: aload_3
          //   4594: astore 17
          //   4596: aload 18
          //   4598: astore 30
          //   4600: aload 6
          //   4602: astore 5
          //   4604: aload 9
          //   4606: astore 7
          //   4608: aload 4
          //   4610: astore_1
          //   4611: aload_3
          //   4612: astore_2
          //   4613: aload 18
          //   4615: astore 8
          //   4617: aload 31
          //   4619: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4622: aload 6
          //   4624: astore 19
          //   4626: aload 9
          //   4628: astore 23
          //   4630: aload 4
          //   4632: astore 10
          //   4634: aload_3
          //   4635: astore 11
          //   4637: aload 18
          //   4639: astore 27
          //   4641: aload 6
          //   4643: astore 20
          //   4645: aload 9
          //   4647: astore 24
          //   4649: aload 4
          //   4651: astore 12
          //   4653: aload_3
          //   4654: astore 13
          //   4656: aload 18
          //   4658: astore 28
          //   4660: aload 6
          //   4662: astore 21
          //   4664: aload 9
          //   4666: astore 25
          //   4668: aload 4
          //   4670: astore 14
          //   4672: aload_3
          //   4673: astore 15
          //   4675: aload 18
          //   4677: astore 29
          //   4679: aload 6
          //   4681: astore 22
          //   4683: aload 9
          //   4685: astore 26
          //   4687: aload 4
          //   4689: astore 16
          //   4691: aload_3
          //   4692: astore 17
          //   4694: aload 18
          //   4696: astore 30
          //   4698: aload 6
          //   4700: astore 5
          //   4702: aload 9
          //   4704: astore 7
          //   4706: aload 4
          //   4708: astore_1
          //   4709: aload_3
          //   4710: astore_2
          //   4711: aload 18
          //   4713: astore 8
          //   4715: aload 18
          //   4717: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4720: aload 6
          //   4722: astore 19
          //   4724: aload 9
          //   4726: astore 23
          //   4728: aload 4
          //   4730: astore 10
          //   4732: aload_3
          //   4733: astore 11
          //   4735: aload 18
          //   4737: astore 27
          //   4739: aload 6
          //   4741: astore 20
          //   4743: aload 9
          //   4745: astore 24
          //   4747: aload 4
          //   4749: astore 12
          //   4751: aload_3
          //   4752: astore 13
          //   4754: aload 18
          //   4756: astore 28
          //   4758: aload 6
          //   4760: astore 21
          //   4762: aload 9
          //   4764: astore 25
          //   4766: aload 4
          //   4768: astore 14
          //   4770: aload_3
          //   4771: astore 15
          //   4773: aload 18
          //   4775: astore 29
          //   4777: aload 6
          //   4779: astore 22
          //   4781: aload 9
          //   4783: astore 26
          //   4785: aload 4
          //   4787: astore 16
          //   4789: aload_3
          //   4790: astore 17
          //   4792: aload 18
          //   4794: astore 30
          //   4796: aload 6
          //   4798: astore 5
          //   4800: aload 9
          //   4802: astore 7
          //   4804: aload 4
          //   4806: astore_1
          //   4807: aload_3
          //   4808: astore_2
          //   4809: aload 18
          //   4811: astore 8
          //   4813: ldc 90
          //   4815: new 92	java/lang/StringBuilder
          //   4818: dup
          //   4819: invokespecial 93	java/lang/StringBuilder:<init>	()V
          //   4822: ldc_w 320
          //   4825: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4828: aload_0
          //   4829: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   4832: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4835: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   4838: invokestatic 112	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   4841: pop
          //   4842: aload 6
          //   4844: astore 19
          //   4846: aload 9
          //   4848: astore 23
          //   4850: aload 4
          //   4852: astore 10
          //   4854: aload_3
          //   4855: astore 11
          //   4857: aload 18
          //   4859: astore 27
          //   4861: aload 6
          //   4863: astore 20
          //   4865: aload 9
          //   4867: astore 24
          //   4869: aload 4
          //   4871: astore 12
          //   4873: aload_3
          //   4874: astore 13
          //   4876: aload 18
          //   4878: astore 28
          //   4880: aload 6
          //   4882: astore 21
          //   4884: aload 9
          //   4886: astore 25
          //   4888: aload 4
          //   4890: astore 14
          //   4892: aload_3
          //   4893: astore 15
          //   4895: aload 18
          //   4897: astore 29
          //   4899: aload 6
          //   4901: astore 22
          //   4903: aload 9
          //   4905: astore 26
          //   4907: aload 4
          //   4909: astore 16
          //   4911: aload_3
          //   4912: astore 17
          //   4914: aload 18
          //   4916: astore 30
          //   4918: aload 6
          //   4920: astore 5
          //   4922: aload 9
          //   4924: astore 7
          //   4926: aload 4
          //   4928: astore_1
          //   4929: aload_3
          //   4930: astore_2
          //   4931: aload 18
          //   4933: astore 8
          //   4935: aload 9
          //   4937: invokestatic 326	org/apache/cordova/FileUtils:getEntry	(Ljava/io/File;)Lorg/json/JSONObject;
          //   4940: astore 31
          //   4942: aload 6
          //   4944: astore 19
          //   4946: aload 9
          //   4948: astore 23
          //   4950: aload 4
          //   4952: astore 10
          //   4954: aload_3
          //   4955: astore 11
          //   4957: aload 18
          //   4959: astore 27
          //   4961: aload 6
          //   4963: astore 20
          //   4965: aload 9
          //   4967: astore 24
          //   4969: aload 4
          //   4971: astore 12
          //   4973: aload_3
          //   4974: astore 13
          //   4976: aload 18
          //   4978: astore 28
          //   4980: aload 6
          //   4982: astore 21
          //   4984: aload 9
          //   4986: astore 25
          //   4988: aload 4
          //   4990: astore 14
          //   4992: aload_3
          //   4993: astore 15
          //   4995: aload 18
          //   4997: astore 29
          //   4999: aload 6
          //   5001: astore 22
          //   5003: aload 9
          //   5005: astore 26
          //   5007: aload 4
          //   5009: astore 16
          //   5011: aload_3
          //   5012: astore 17
          //   5014: aload 18
          //   5016: astore 30
          //   5018: aload 6
          //   5020: astore 5
          //   5022: aload 9
          //   5024: astore 7
          //   5026: aload 4
          //   5028: astore_1
          //   5029: aload_3
          //   5030: astore_2
          //   5031: aload 18
          //   5033: astore 8
          //   5035: new 173	org/apache/cordova/api/PluginResult
          //   5038: dup
          //   5039: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   5042: aload 31
          //   5044: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5047: astore 31
          //   5049: aload 18
          //   5051: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5054: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5057: astore_1
          //   5058: aload_1
          //   5059: monitorenter
          //   5060: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5063: aload_0
          //   5064: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   5067: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5070: pop
          //   5071: aload_1
          //   5072: monitorexit
          //   5073: aload 6
          //   5075: ifnull +34 -> 5109
          //   5078: aload_0
          //   5079: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   5082: ifeq +27 -> 5109
          //   5085: aload_0
          //   5086: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   5089: ifeq +20 -> 5109
          //   5092: aload 6
          //   5094: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   5097: astore_1
          //   5098: aload_1
          //   5099: aload 4
          //   5101: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5104: aload_1
          //   5105: aload_3
          //   5106: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5109: aload 31
          //   5111: ifnonnull +859 -> 5970
          //   5114: new 173	org/apache/cordova/api/PluginResult
          //   5117: dup
          //   5118: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   5121: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5124: aload_0
          //   5125: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5128: aload_0
          //   5129: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5132: aload 6
          //   5134: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5137: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5140: astore_1
          //   5141: aload_1
          //   5142: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   5145: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   5148: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   5151: if_icmpeq +14 -> 5165
          //   5154: aload 9
          //   5156: ifnull +9 -> 5165
          //   5159: aload 9
          //   5161: invokevirtual 206	java/io/File:delete	()Z
          //   5164: pop
          //   5165: aload_0
          //   5166: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5169: astore_2
          //   5170: goto -3433 -> 1737
          //   5173: astore_3
          //   5174: aload 20
          //   5176: astore 5
          //   5178: aload 24
          //   5180: astore 7
          //   5182: aload 12
          //   5184: astore_1
          //   5185: aload 13
          //   5187: astore_2
          //   5188: aload 28
          //   5190: astore 8
          //   5192: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5195: aload_0
          //   5196: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5199: aload_0
          //   5200: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5203: aload 20
          //   5205: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5208: astore 4
          //   5210: aload 20
          //   5212: astore 5
          //   5214: aload 24
          //   5216: astore 7
          //   5218: aload 12
          //   5220: astore_1
          //   5221: aload 13
          //   5223: astore_2
          //   5224: aload 28
          //   5226: astore 8
          //   5228: ldc 90
          //   5230: aload 4
          //   5232: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
          //   5235: aload_3
          //   5236: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   5239: pop
          //   5240: aload 20
          //   5242: astore 5
          //   5244: aload 24
          //   5246: astore 7
          //   5248: aload 12
          //   5250: astore_1
          //   5251: aload 13
          //   5253: astore_2
          //   5254: aload 28
          //   5256: astore 8
          //   5258: new 173	org/apache/cordova/api/PluginResult
          //   5261: dup
          //   5262: getstatic 318	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   5265: aload 4
          //   5267: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5270: astore_3
          //   5271: aload 28
          //   5273: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5276: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5279: astore_1
          //   5280: aload_1
          //   5281: monitorenter
          //   5282: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5285: aload_0
          //   5286: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   5289: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5292: pop
          //   5293: aload_1
          //   5294: monitorexit
          //   5295: aload 20
          //   5297: ifnull +35 -> 5332
          //   5300: aload_0
          //   5301: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   5304: ifeq +28 -> 5332
          //   5307: aload_0
          //   5308: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   5311: ifeq +21 -> 5332
          //   5314: aload 20
          //   5316: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   5319: astore_1
          //   5320: aload_1
          //   5321: aload 12
          //   5323: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5326: aload_1
          //   5327: aload 13
          //   5329: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5332: aload_3
          //   5333: ifnonnull +653 -> 5986
          //   5336: new 173	org/apache/cordova/api/PluginResult
          //   5339: dup
          //   5340: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   5343: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5346: aload_0
          //   5347: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5350: aload_0
          //   5351: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5354: aload 20
          //   5356: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5359: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5362: astore_1
          //   5363: aload_1
          //   5364: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   5367: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   5370: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   5373: if_icmpeq +14 -> 5387
          //   5376: aload 24
          //   5378: ifnull +9 -> 5387
          //   5381: aload 24
          //   5383: invokevirtual 206	java/io/File:delete	()Z
          //   5386: pop
          //   5387: aload_0
          //   5388: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5391: astore_2
          //   5392: goto -3655 -> 1737
          //   5395: astore_3
          //   5396: aload 21
          //   5398: astore 5
          //   5400: aload 25
          //   5402: astore 7
          //   5404: aload 14
          //   5406: astore_1
          //   5407: aload 15
          //   5409: astore_2
          //   5410: aload 29
          //   5412: astore 8
          //   5414: ldc 90
          //   5416: aload_3
          //   5417: invokevirtual 329	org/json/JSONException:getMessage	()Ljava/lang/String;
          //   5420: aload_3
          //   5421: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   5424: pop
          //   5425: aload 21
          //   5427: astore 5
          //   5429: aload 25
          //   5431: astore 7
          //   5433: aload 14
          //   5435: astore_1
          //   5436: aload 15
          //   5438: astore_2
          //   5439: aload 29
          //   5441: astore 8
          //   5443: new 173	org/apache/cordova/api/PluginResult
          //   5446: dup
          //   5447: getstatic 332	org/apache/cordova/api/PluginResult$Status:JSON_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   5450: invokespecial 335	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;)V
          //   5453: astore_3
          //   5454: aload 29
          //   5456: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5459: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5462: astore_1
          //   5463: aload_1
          //   5464: monitorenter
          //   5465: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5468: aload_0
          //   5469: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   5472: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5475: pop
          //   5476: aload_1
          //   5477: monitorexit
          //   5478: aload 21
          //   5480: ifnull +35 -> 5515
          //   5483: aload_0
          //   5484: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   5487: ifeq +28 -> 5515
          //   5490: aload_0
          //   5491: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   5494: ifeq +21 -> 5515
          //   5497: aload 21
          //   5499: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   5502: astore_1
          //   5503: aload_1
          //   5504: aload 14
          //   5506: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5509: aload_1
          //   5510: aload 15
          //   5512: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5515: aload_3
          //   5516: ifnonnull +465 -> 5981
          //   5519: new 173	org/apache/cordova/api/PluginResult
          //   5522: dup
          //   5523: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   5526: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5529: aload_0
          //   5530: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5533: aload_0
          //   5534: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5537: aload 21
          //   5539: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5542: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5545: astore_1
          //   5546: aload_1
          //   5547: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   5550: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   5553: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   5556: if_icmpeq +14 -> 5570
          //   5559: aload 25
          //   5561: ifnull +9 -> 5570
          //   5564: aload 25
          //   5566: invokevirtual 206	java/io/File:delete	()Z
          //   5569: pop
          //   5570: aload_0
          //   5571: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5574: astore_2
          //   5575: goto -3838 -> 1737
          //   5578: astore_3
          //   5579: aload 22
          //   5581: astore 5
          //   5583: aload 26
          //   5585: astore 7
          //   5587: aload 16
          //   5589: astore_1
          //   5590: aload 17
          //   5592: astore_2
          //   5593: aload 30
          //   5595: astore 8
          //   5597: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5600: aload_0
          //   5601: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5604: aload_0
          //   5605: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5608: aload 22
          //   5610: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5613: astore 4
          //   5615: aload 22
          //   5617: astore 5
          //   5619: aload 26
          //   5621: astore 7
          //   5623: aload 16
          //   5625: astore_1
          //   5626: aload 17
          //   5628: astore_2
          //   5629: aload 30
          //   5631: astore 8
          //   5633: ldc 90
          //   5635: aload 4
          //   5637: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
          //   5640: aload_3
          //   5641: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   5644: pop
          //   5645: aload 22
          //   5647: astore 5
          //   5649: aload 26
          //   5651: astore 7
          //   5653: aload 16
          //   5655: astore_1
          //   5656: aload 17
          //   5658: astore_2
          //   5659: aload 30
          //   5661: astore 8
          //   5663: new 173	org/apache/cordova/api/PluginResult
          //   5666: dup
          //   5667: getstatic 318	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   5670: aload 4
          //   5672: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5675: astore_3
          //   5676: aload 30
          //   5678: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5681: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5684: astore_1
          //   5685: aload_1
          //   5686: monitorenter
          //   5687: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5690: aload_0
          //   5691: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   5694: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5697: pop
          //   5698: aload_1
          //   5699: monitorexit
          //   5700: aload 22
          //   5702: ifnull +35 -> 5737
          //   5705: aload_0
          //   5706: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   5709: ifeq +28 -> 5737
          //   5712: aload_0
          //   5713: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   5716: ifeq +21 -> 5737
          //   5719: aload 22
          //   5721: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   5724: astore_1
          //   5725: aload_1
          //   5726: aload 16
          //   5728: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5731: aload_1
          //   5732: aload 17
          //   5734: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5737: aload_3
          //   5738: ifnonnull +238 -> 5976
          //   5741: new 173	org/apache/cordova/api/PluginResult
          //   5744: dup
          //   5745: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   5748: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5751: aload_0
          //   5752: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5755: aload_0
          //   5756: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5759: aload 22
          //   5761: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5764: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5767: astore_1
          //   5768: aload_1
          //   5769: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   5772: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   5775: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   5778: if_icmpeq +14 -> 5792
          //   5781: aload 26
          //   5783: ifnull +9 -> 5792
          //   5786: aload 26
          //   5788: invokevirtual 206	java/io/File:delete	()Z
          //   5791: pop
          //   5792: aload_0
          //   5793: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5796: astore_2
          //   5797: goto -4060 -> 1737
          //   5800: astore_3
          //   5801: aload 8
          //   5803: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5806: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5809: astore 4
          //   5811: aload 4
          //   5813: monitorenter
          //   5814: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5817: aload_0
          //   5818: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
          //   5821: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5824: pop
          //   5825: aload 4
          //   5827: monitorexit
          //   5828: aload 5
          //   5830: ifnull +36 -> 5866
          //   5833: aload_0
          //   5834: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
          //   5837: ifeq +29 -> 5866
          //   5840: aload_0
          //   5841: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
          //   5844: ifeq +22 -> 5866
          //   5847: aload 5
          //   5849: checkcast 163	javax/net/ssl/HttpsURLConnection
          //   5852: astore 4
          //   5854: aload 4
          //   5856: aload_1
          //   5857: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5860: aload 4
          //   5862: aload_2
          //   5863: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5866: aload 32
          //   5868: astore_1
          //   5869: iconst_0
          //   5870: ifne +30 -> 5900
          //   5873: new 173	org/apache/cordova/api/PluginResult
          //   5876: dup
          //   5877: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
          //   5880: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   5883: aload_0
          //   5884: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
          //   5887: aload_0
          //   5888: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
          //   5891: aload 5
          //   5893: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   5896: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   5899: astore_1
          //   5900: aload_1
          //   5901: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
          //   5904: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   5907: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
          //   5910: if_icmpeq +14 -> 5924
          //   5913: aload 7
          //   5915: ifnull +9 -> 5924
          //   5918: aload 7
          //   5920: invokevirtual 206	java/io/File:delete	()Z
          //   5923: pop
          //   5924: aload_0
          //   5925: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5928: aload_1
          //   5929: invokevirtual 210	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   5932: aload_3
          //   5933: athrow
          //   5934: astore_1
          //   5935: aload 4
          //   5937: monitorexit
          //   5938: aload_1
          //   5939: athrow
          //   5940: astore_2
          //   5941: aload_1
          //   5942: monitorexit
          //   5943: aload_2
          //   5944: athrow
          //   5945: astore_2
          //   5946: aload_1
          //   5947: monitorexit
          //   5948: aload_2
          //   5949: athrow
          //   5950: astore_2
          //   5951: aload_1
          //   5952: monitorexit
          //   5953: aload_2
          //   5954: athrow
          //   5955: astore_2
          //   5956: aload_1
          //   5957: monitorexit
          //   5958: aload_2
          //   5959: athrow
          //   5960: astore_2
          //   5961: aload_1
          //   5962: monitorexit
          //   5963: aload_2
          //   5964: athrow
          //   5965: astore_2
          //   5966: aload_1
          //   5967: monitorexit
          //   5968: aload_2
          //   5969: athrow
          //   5970: aload 31
          //   5972: astore_1
          //   5973: goto -832 -> 5141
          //   5976: aload_3
          //   5977: astore_1
          //   5978: goto -210 -> 5768
          //   5981: aload_3
          //   5982: astore_1
          //   5983: goto -437 -> 5546
          //   5986: aload_3
          //   5987: astore_1
          //   5988: goto -625 -> 5363
          //   5991: aload_3
          //   5992: astore_1
          //   5993: goto -1607 -> 4386
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	5996	0	this	4
          //   5934	33	1	localObject2	Object
          //   5972	21	1	localObject3	Object
          //   183	4232	2	localObject4	Object
          //   4418	4	2	localObject5	Object
          //   4511	1352	2	localObject6	Object
          //   5940	4	2	localObject7	Object
          //   5945	4	2	localObject8	Object
          //   5950	4	2	localObject9	Object
          //   5955	4	2	localObject10	Object
          //   5960	4	2	localObject11	Object
          //   5965	4	2	localObject12	Object
          //   69	4119	3	localObject13	Object
          //   4196	63	3	localFileNotFoundException	java.io.FileNotFoundException
          //   4293	813	3	localPluginResult1	PluginResult
          //   5173	63	3	localIOException	IOException
          //   5270	63	3	localPluginResult2	PluginResult
          //   5395	26	3	localJSONException	JSONException
          //   5453	63	3	localPluginResult3	PluginResult
          //   5578	63	3	localThrowable	Throwable
          //   5675	63	3	localPluginResult4	PluginResult
          //   5800	192	3	localObject14	Object
          //   172	5720	5	localObject16	Object
          //   27	5106	6	localObject17	Object
          //   176	5743	7	localObject18	Object
          //   101	5701	8	localObject19	Object
          //   83	5077	9	localFile1	File
          //   116	4837	10	localObject20	Object
          //   120	4836	11	localObject21	Object
          //   132	5190	12	localObject22	Object
          //   136	5192	13	localObject23	Object
          //   148	5357	14	localObject24	Object
          //   152	5359	15	localObject25	Object
          //   164	5563	16	localObject26	Object
          //   168	5565	17	localObject27	Object
          //   195	4855	18	localOutputStream	OutputStream
          //   108	4837	19	localObject28	Object
          //   124	5231	20	localObject29	Object
          //   140	5398	21	localObject30	Object
          //   156	5604	22	localObject31	Object
          //   112	4837	23	localFile2	File
          //   128	5254	24	localObject32	Object
          //   144	5421	25	localObject33	Object
          //   160	5627	26	localObject34	Object
          //   104	4856	27	localObject35	Object
          //   92	5180	28	localObject36	Object
          //   95	5360	29	localObject37	Object
          //   98	5579	30	localObject38	Object
          //   33	5938	31	localObject39	Object
          //   86	5781	32	localObject40	Object
          //   89	1586	33	localObject41	Object
          //   3801	393	33	localObject42	Object
          //   36	2279	34	localObject43	Object
          //   39	2295	35	localObject44	Object
          //   42	2311	36	localObject45	Object
          //   45	2327	37	localObject46	Object
          //   54	2142	38	localObject47	Object
          //   57	2159	39	localObject48	Object
          //   60	2176	40	localObject49	Object
          //   63	2193	41	localObject50	Object
          //   66	2209	42	localObject51	Object
          //   30	2451	43	localObject52	Object
          //   51	1920	44	localObject53	Object
          //   12	1732	45	localObject54	Object
          //   15	1749	46	localObject55	Object
          //   18	1766	47	localObject56	Object
          //   21	1783	48	localObject57	Object
          //   24	1800	49	localObject58	Object
          //   71	3706	50	localFileProgressResult	FileProgressResult
          //   74	168	51	localObject59	Object
          //   77	185	52	localObject60	Object
          //   80	202	53	localObject61	Object
          //   3743	12	54	i	int
          // Exception table:
          //   from	to	target	type
          //   1298	1305	3801	finally
          //   3731	3737	3801	finally
          //   3737	3745	3801	finally
          //   3750	3798	3801	finally
          //   4421	4423	3801	finally
          //   184	197	4196	java/io/FileNotFoundException
          //   295	308	4196	java/io/FileNotFoundException
          //   406	415	4196	java/io/FileNotFoundException
          //   513	541	4196	java/io/FileNotFoundException
          //   639	648	4196	java/io/FileNotFoundException
          //   746	753	4196	java/io/FileNotFoundException
          //   851	864	4196	java/io/FileNotFoundException
          //   962	974	4196	java/io/FileNotFoundException
          //   1072	1078	4196	java/io/FileNotFoundException
          //   1176	1186	4196	java/io/FileNotFoundException
          //   1284	1298	4196	java/io/FileNotFoundException
          //   1410	1418	4196	java/io/FileNotFoundException
          //   1511	1516	4196	java/io/FileNotFoundException
          //   1609	1614	4196	java/io/FileNotFoundException
          //   1841	1854	4196	java/io/FileNotFoundException
          //   1959	1966	4196	java/io/FileNotFoundException
          //   2071	2078	4196	java/io/FileNotFoundException
          //   2176	2183	4196	java/io/FileNotFoundException
          //   2281	2287	4196	java/io/FileNotFoundException
          //   2380	2387	4196	java/io/FileNotFoundException
          //   2480	2488	4196	java/io/FileNotFoundException
          //   2581	2588	4196	java/io/FileNotFoundException
          //   2681	2696	4196	java/io/FileNotFoundException
          //   2794	2803	4196	java/io/FileNotFoundException
          //   2896	2906	4196	java/io/FileNotFoundException
          //   2999	3006	4196	java/io/FileNotFoundException
          //   3099	3108	4196	java/io/FileNotFoundException
          //   3201	3206	4196	java/io/FileNotFoundException
          //   3299	3307	4196	java/io/FileNotFoundException
          //   3400	3414	4196	java/io/FileNotFoundException
          //   3507	3513	4196	java/io/FileNotFoundException
          //   3606	3617	4196	java/io/FileNotFoundException
          //   3710	3717	4196	java/io/FileNotFoundException
          //   3896	3904	4196	java/io/FileNotFoundException
          //   3997	4002	4196	java/io/FileNotFoundException
          //   4095	4100	4196	java/io/FileNotFoundException
          //   4193	4196	4196	java/io/FileNotFoundException
          //   4516	4524	4196	java/io/FileNotFoundException
          //   4617	4622	4196	java/io/FileNotFoundException
          //   4715	4720	4196	java/io/FileNotFoundException
          //   4813	4842	4196	java/io/FileNotFoundException
          //   4935	4942	4196	java/io/FileNotFoundException
          //   5035	5049	4196	java/io/FileNotFoundException
          //   1305	1317	4418	finally
          //   3720	3731	4418	finally
          //   4419	4421	4418	finally
          //   184	197	5173	java/io/IOException
          //   295	308	5173	java/io/IOException
          //   406	415	5173	java/io/IOException
          //   513	541	5173	java/io/IOException
          //   639	648	5173	java/io/IOException
          //   746	753	5173	java/io/IOException
          //   851	864	5173	java/io/IOException
          //   962	974	5173	java/io/IOException
          //   1072	1078	5173	java/io/IOException
          //   1176	1186	5173	java/io/IOException
          //   1284	1298	5173	java/io/IOException
          //   1410	1418	5173	java/io/IOException
          //   1511	1516	5173	java/io/IOException
          //   1609	1614	5173	java/io/IOException
          //   1841	1854	5173	java/io/IOException
          //   1959	1966	5173	java/io/IOException
          //   2071	2078	5173	java/io/IOException
          //   2176	2183	5173	java/io/IOException
          //   2281	2287	5173	java/io/IOException
          //   2380	2387	5173	java/io/IOException
          //   2480	2488	5173	java/io/IOException
          //   2581	2588	5173	java/io/IOException
          //   2681	2696	5173	java/io/IOException
          //   2794	2803	5173	java/io/IOException
          //   2896	2906	5173	java/io/IOException
          //   2999	3006	5173	java/io/IOException
          //   3099	3108	5173	java/io/IOException
          //   3201	3206	5173	java/io/IOException
          //   3299	3307	5173	java/io/IOException
          //   3400	3414	5173	java/io/IOException
          //   3507	3513	5173	java/io/IOException
          //   3606	3617	5173	java/io/IOException
          //   3710	3717	5173	java/io/IOException
          //   3896	3904	5173	java/io/IOException
          //   3997	4002	5173	java/io/IOException
          //   4095	4100	5173	java/io/IOException
          //   4193	4196	5173	java/io/IOException
          //   4516	4524	5173	java/io/IOException
          //   4617	4622	5173	java/io/IOException
          //   4715	4720	5173	java/io/IOException
          //   4813	4842	5173	java/io/IOException
          //   4935	4942	5173	java/io/IOException
          //   5035	5049	5173	java/io/IOException
          //   184	197	5395	org/json/JSONException
          //   295	308	5395	org/json/JSONException
          //   406	415	5395	org/json/JSONException
          //   513	541	5395	org/json/JSONException
          //   639	648	5395	org/json/JSONException
          //   746	753	5395	org/json/JSONException
          //   851	864	5395	org/json/JSONException
          //   962	974	5395	org/json/JSONException
          //   1072	1078	5395	org/json/JSONException
          //   1176	1186	5395	org/json/JSONException
          //   1284	1298	5395	org/json/JSONException
          //   1410	1418	5395	org/json/JSONException
          //   1511	1516	5395	org/json/JSONException
          //   1609	1614	5395	org/json/JSONException
          //   1841	1854	5395	org/json/JSONException
          //   1959	1966	5395	org/json/JSONException
          //   2071	2078	5395	org/json/JSONException
          //   2176	2183	5395	org/json/JSONException
          //   2281	2287	5395	org/json/JSONException
          //   2380	2387	5395	org/json/JSONException
          //   2480	2488	5395	org/json/JSONException
          //   2581	2588	5395	org/json/JSONException
          //   2681	2696	5395	org/json/JSONException
          //   2794	2803	5395	org/json/JSONException
          //   2896	2906	5395	org/json/JSONException
          //   2999	3006	5395	org/json/JSONException
          //   3099	3108	5395	org/json/JSONException
          //   3201	3206	5395	org/json/JSONException
          //   3299	3307	5395	org/json/JSONException
          //   3400	3414	5395	org/json/JSONException
          //   3507	3513	5395	org/json/JSONException
          //   3606	3617	5395	org/json/JSONException
          //   3710	3717	5395	org/json/JSONException
          //   3896	3904	5395	org/json/JSONException
          //   3997	4002	5395	org/json/JSONException
          //   4095	4100	5395	org/json/JSONException
          //   4193	4196	5395	org/json/JSONException
          //   4516	4524	5395	org/json/JSONException
          //   4617	4622	5395	org/json/JSONException
          //   4715	4720	5395	org/json/JSONException
          //   4813	4842	5395	org/json/JSONException
          //   4935	4942	5395	org/json/JSONException
          //   5035	5049	5395	org/json/JSONException
          //   184	197	5578	java/lang/Throwable
          //   295	308	5578	java/lang/Throwable
          //   406	415	5578	java/lang/Throwable
          //   513	541	5578	java/lang/Throwable
          //   639	648	5578	java/lang/Throwable
          //   746	753	5578	java/lang/Throwable
          //   851	864	5578	java/lang/Throwable
          //   962	974	5578	java/lang/Throwable
          //   1072	1078	5578	java/lang/Throwable
          //   1176	1186	5578	java/lang/Throwable
          //   1284	1298	5578	java/lang/Throwable
          //   1410	1418	5578	java/lang/Throwable
          //   1511	1516	5578	java/lang/Throwable
          //   1609	1614	5578	java/lang/Throwable
          //   1841	1854	5578	java/lang/Throwable
          //   1959	1966	5578	java/lang/Throwable
          //   2071	2078	5578	java/lang/Throwable
          //   2176	2183	5578	java/lang/Throwable
          //   2281	2287	5578	java/lang/Throwable
          //   2380	2387	5578	java/lang/Throwable
          //   2480	2488	5578	java/lang/Throwable
          //   2581	2588	5578	java/lang/Throwable
          //   2681	2696	5578	java/lang/Throwable
          //   2794	2803	5578	java/lang/Throwable
          //   2896	2906	5578	java/lang/Throwable
          //   2999	3006	5578	java/lang/Throwable
          //   3099	3108	5578	java/lang/Throwable
          //   3201	3206	5578	java/lang/Throwable
          //   3299	3307	5578	java/lang/Throwable
          //   3400	3414	5578	java/lang/Throwable
          //   3507	3513	5578	java/lang/Throwable
          //   3606	3617	5578	java/lang/Throwable
          //   3710	3717	5578	java/lang/Throwable
          //   3896	3904	5578	java/lang/Throwable
          //   3997	4002	5578	java/lang/Throwable
          //   4095	4100	5578	java/lang/Throwable
          //   4193	4196	5578	java/lang/Throwable
          //   4516	4524	5578	java/lang/Throwable
          //   4617	4622	5578	java/lang/Throwable
          //   4715	4720	5578	java/lang/Throwable
          //   4813	4842	5578	java/lang/Throwable
          //   4935	4942	5578	java/lang/Throwable
          //   5035	5049	5578	java/lang/Throwable
          //   184	197	5800	finally
          //   295	308	5800	finally
          //   406	415	5800	finally
          //   513	541	5800	finally
          //   639	648	5800	finally
          //   746	753	5800	finally
          //   851	864	5800	finally
          //   962	974	5800	finally
          //   1072	1078	5800	finally
          //   1176	1186	5800	finally
          //   1284	1298	5800	finally
          //   1410	1418	5800	finally
          //   1511	1516	5800	finally
          //   1609	1614	5800	finally
          //   1841	1854	5800	finally
          //   1959	1966	5800	finally
          //   2071	2078	5800	finally
          //   2176	2183	5800	finally
          //   2281	2287	5800	finally
          //   2380	2387	5800	finally
          //   2480	2488	5800	finally
          //   2581	2588	5800	finally
          //   2681	2696	5800	finally
          //   2794	2803	5800	finally
          //   2896	2906	5800	finally
          //   2999	3006	5800	finally
          //   3099	3108	5800	finally
          //   3201	3206	5800	finally
          //   3299	3307	5800	finally
          //   3400	3414	5800	finally
          //   3507	3513	5800	finally
          //   3606	3617	5800	finally
          //   3710	3717	5800	finally
          //   3896	3904	5800	finally
          //   3997	4002	5800	finally
          //   4095	4100	5800	finally
          //   4193	4196	5800	finally
          //   4215	4233	5800	finally
          //   4251	4263	5800	finally
          //   4281	4294	5800	finally
          //   4516	4524	5800	finally
          //   4617	4622	5800	finally
          //   4715	4720	5800	finally
          //   4813	4842	5800	finally
          //   4935	4942	5800	finally
          //   5035	5049	5800	finally
          //   5192	5210	5800	finally
          //   5228	5240	5800	finally
          //   5258	5271	5800	finally
          //   5414	5425	5800	finally
          //   5443	5454	5800	finally
          //   5597	5615	5800	finally
          //   5633	5645	5800	finally
          //   5663	5676	5800	finally
          //   5814	5828	5934	finally
          //   5935	5938	5934	finally
          //   4305	4318	5940	finally
          //   5941	5943	5940	finally
          //   5282	5295	5945	finally
          //   5946	5948	5945	finally
          //   5465	5478	5950	finally
          //   5951	5953	5950	finally
          //   5687	5700	5955	finally
          //   5956	5958	5955	finally
          //   1625	1638	5960	finally
          //   5961	5963	5960	finally
          //   5060	5073	5965	finally
          //   5966	5968	5965	finally
        }
      });
      return;
    }
  }
  
  private static String getArgument(JSONArray paramJSONArray, int paramInt, String paramString)
  {
    Object localObject = paramString;
    if (paramJSONArray.length() > paramInt)
    {
      paramJSONArray = paramJSONArray.optString(paramInt);
      if (paramJSONArray != null)
      {
        localObject = paramJSONArray;
        if (!"null".equals(paramJSONArray)) {}
      }
      else
      {
        localObject = paramString;
      }
    }
    return (String)localObject;
  }
  
  private static TrackingInputStream getInputStream(URLConnection paramURLConnection)
    throws IOException
  {
    String str = paramURLConnection.getContentEncoding();
    if ((str != null) && (str.equalsIgnoreCase("gzip"))) {
      return new TrackingGZIPInputStream(new ExposedGZIPInputStream(paramURLConnection.getInputStream()));
    }
    return new SimpleTrackingInputStream(paramURLConnection.getInputStream());
  }
  
  private static void safeClose(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  private static SSLSocketFactory trustAllHosts(HttpsURLConnection paramHttpsURLConnection)
  {
    SSLSocketFactory localSSLSocketFactory = paramHttpsURLConnection.getSSLSocketFactory();
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      localSSLContext.init(null, trustAllCerts, new SecureRandom());
      paramHttpsURLConnection.setSSLSocketFactory(localSSLContext.getSocketFactory());
      return localSSLSocketFactory;
    }
    catch (Exception paramHttpsURLConnection)
    {
      Log.e("FileTransfer", paramHttpsURLConnection.getMessage(), paramHttpsURLConnection);
    }
    return localSSLSocketFactory;
  }
  
  private void upload(final String paramString1, final String paramString2, final JSONArray paramJSONArray, CallbackContext arg4)
    throws JSONException
  {
    Log.d("FileTransfer", "upload " + paramString1 + " to " + paramString2);
    final String str1 = getArgument(paramJSONArray, 2, "file");
    final String str2 = getArgument(paramJSONArray, 3, "image.jpg");
    final String str3 = getArgument(paramJSONArray, 4, "image/jpeg");
    final JSONObject localJSONObject1;
    final boolean bool3;
    final boolean bool1;
    label112:
    final JSONObject localJSONObject2;
    label131:
    final String str4;
    final String str5;
    final CordovaResourceApi localCordovaResourceApi;
    final Uri localUri;
    label425:
    int i;
    if (paramJSONArray.optJSONObject(5) == null)
    {
      localJSONObject1 = new JSONObject();
      bool3 = paramJSONArray.optBoolean(6);
      if ((!paramJSONArray.optBoolean(7)) && (!paramJSONArray.isNull(7))) {
        break label528;
      }
      bool1 = true;
      if (paramJSONArray.optJSONObject(8) != null) {
        break label534;
      }
      localJSONObject2 = localJSONObject1.optJSONObject("headers");
      str4 = paramJSONArray.getString(9);
      str5 = getArgument(paramJSONArray, 10, "POST");
      localCordovaResourceApi = webView.getResourceApi();
      Log.d("FileTransfer", "fileKey: " + str1);
      Log.d("FileTransfer", "fileName: " + str2);
      Log.d("FileTransfer", "mimeType: " + str3);
      Log.d("FileTransfer", "params: " + localJSONObject1);
      Log.d("FileTransfer", "trustEveryone: " + bool3);
      Log.d("FileTransfer", "chunkedMode: " + bool1);
      Log.d("FileTransfer", "headers: " + localJSONObject2);
      Log.d("FileTransfer", "objectId: " + str4);
      Log.d("FileTransfer", "httpMethod: " + str5);
      localUri = localCordovaResourceApi.remapUri(Uri.parse(paramString2));
      paramJSONArray = Uri.parse(paramString1);
      if (paramJSONArray.getScheme() == null) {
        break label545;
      }
      paramJSONArray = localCordovaResourceApi.remapUri(paramJSONArray);
      i = CordovaResourceApi.getUriType(localUri);
      if (i != 6) {
        break label560;
      }
    }
    label528:
    label534:
    label545:
    label560:
    for (final boolean bool2 = true;; bool2 = false)
    {
      if ((i == 5) || (bool2)) {
        break label566;
      }
      paramString1 = createFileTransferError(INVALID_URL_ERR, paramString1, paramString2, null, Integer.valueOf(0));
      Log.e("FileTransfer", "Unsupported URI: " + localUri);
      ???.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, paramString1));
      return;
      localJSONObject1 = paramJSONArray.optJSONObject(5);
      break;
      bool1 = false;
      break label112;
      localJSONObject2 = paramJSONArray.optJSONObject(8);
      break label131;
      paramJSONArray = Uri.fromFile(new File(paramString1));
      break label425;
    }
    label566:
    final RequestContext localRequestContext = new RequestContext(paramString1, paramString2, ???);
    synchronized (activeRequests)
    {
      activeRequests.put(str4, localRequestContext);
      cordova.getThreadPool().execute(new Runnable()
      {
        /* Error */
        public void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4: getfield 89	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   7: ifeq +4 -> 11
          //   10: return
          //   11: aconst_null
          //   12: astore 4
          //   14: aconst_null
          //   15: astore 6
          //   17: aconst_null
          //   18: astore 31
          //   20: aconst_null
          //   21: astore 32
          //   23: aconst_null
          //   24: astore_3
          //   25: aconst_null
          //   26: astore 19
          //   28: aconst_null
          //   29: astore 20
          //   31: aconst_null
          //   32: astore 21
          //   34: aconst_null
          //   35: astore 22
          //   37: aconst_null
          //   38: astore 23
          //   40: aconst_null
          //   41: astore 29
          //   43: aconst_null
          //   44: astore 24
          //   46: aconst_null
          //   47: astore 25
          //   49: aconst_null
          //   50: astore 26
          //   52: aconst_null
          //   53: astore 27
          //   55: aconst_null
          //   56: astore 28
          //   58: aconst_null
          //   59: astore 30
          //   61: iconst_0
          //   62: istore 40
          //   64: iconst_0
          //   65: istore 39
          //   67: iconst_m1
          //   68: istore 35
          //   70: aload_3
          //   71: astore 15
          //   73: aload 19
          //   75: astore 7
          //   77: aload 24
          //   79: astore 8
          //   81: aload 4
          //   83: astore 16
          //   85: iload 35
          //   87: istore 37
          //   89: aload 20
          //   91: astore 9
          //   93: aload 25
          //   95: astore 10
          //   97: iload 40
          //   99: istore 38
          //   101: aload 6
          //   103: astore 18
          //   105: aload 21
          //   107: astore 13
          //   109: aload 26
          //   111: astore 14
          //   113: aload 31
          //   115: astore 17
          //   117: aload 22
          //   119: astore 11
          //   121: aload 27
          //   123: astore 12
          //   125: aload 32
          //   127: astore 5
          //   129: aload 23
          //   131: astore_1
          //   132: aload 28
          //   134: astore_2
          //   135: new 91	org/apache/cordova/FileUploadResult
          //   138: dup
          //   139: invokespecial 92	org/apache/cordova/FileUploadResult:<init>	()V
          //   142: astore 33
          //   144: aload_3
          //   145: astore 15
          //   147: aload 19
          //   149: astore 7
          //   151: aload 24
          //   153: astore 8
          //   155: aload 4
          //   157: astore 16
          //   159: iload 35
          //   161: istore 37
          //   163: aload 20
          //   165: astore 9
          //   167: aload 25
          //   169: astore 10
          //   171: iload 40
          //   173: istore 38
          //   175: aload 6
          //   177: astore 18
          //   179: aload 21
          //   181: astore 13
          //   183: aload 26
          //   185: astore 14
          //   187: aload 31
          //   189: astore 17
          //   191: aload 22
          //   193: astore 11
          //   195: aload 27
          //   197: astore 12
          //   199: aload 32
          //   201: astore 5
          //   203: aload 23
          //   205: astore_1
          //   206: aload 28
          //   208: astore_2
          //   209: new 94	org/apache/cordova/FileProgressResult
          //   212: dup
          //   213: invokespecial 95	org/apache/cordova/FileProgressResult:<init>	()V
          //   216: astore 34
          //   218: aload_3
          //   219: astore 15
          //   221: aload 19
          //   223: astore 7
          //   225: aload 24
          //   227: astore 8
          //   229: aload 4
          //   231: astore 16
          //   233: iload 35
          //   235: istore 37
          //   237: aload 20
          //   239: astore 9
          //   241: aload 25
          //   243: astore 10
          //   245: iload 40
          //   247: istore 38
          //   249: aload 6
          //   251: astore 18
          //   253: aload 21
          //   255: astore 13
          //   257: aload 26
          //   259: astore 14
          //   261: aload 31
          //   263: astore 17
          //   265: aload 22
          //   267: astore 11
          //   269: aload 27
          //   271: astore 12
          //   273: aload 32
          //   275: astore 5
          //   277: aload 23
          //   279: astore_1
          //   280: aload 28
          //   282: astore_2
          //   283: aload_0
          //   284: getfield 43	org/apache/cordova/FileTransfer$1:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
          //   287: aload_0
          //   288: getfield 45	org/apache/cordova/FileTransfer$1:val$targetUri	Landroid/net/Uri;
          //   291: invokevirtual 101	org/apache/cordova/CordovaResourceApi:createHttpConnection	(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
          //   294: astore 6
          //   296: aload 29
          //   298: astore 4
          //   300: aload 30
          //   302: astore_3
          //   303: aload 6
          //   305: astore 15
          //   307: aload 19
          //   309: astore 7
          //   311: aload 24
          //   313: astore 8
          //   315: aload 6
          //   317: astore 16
          //   319: iload 35
          //   321: istore 37
          //   323: aload 20
          //   325: astore 9
          //   327: aload 25
          //   329: astore 10
          //   331: iload 40
          //   333: istore 38
          //   335: aload 6
          //   337: astore 18
          //   339: aload 21
          //   341: astore 13
          //   343: aload 26
          //   345: astore 14
          //   347: aload 6
          //   349: astore 17
          //   351: aload 22
          //   353: astore 11
          //   355: aload 27
          //   357: astore 12
          //   359: aload 6
          //   361: astore 5
          //   363: aload 23
          //   365: astore_1
          //   366: aload 28
          //   368: astore_2
          //   369: aload_0
          //   370: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   373: ifeq +365 -> 738
          //   376: aload 29
          //   378: astore 4
          //   380: aload 30
          //   382: astore_3
          //   383: aload 6
          //   385: astore 15
          //   387: aload 19
          //   389: astore 7
          //   391: aload 24
          //   393: astore 8
          //   395: aload 6
          //   397: astore 16
          //   399: iload 35
          //   401: istore 37
          //   403: aload 20
          //   405: astore 9
          //   407: aload 25
          //   409: astore 10
          //   411: iload 40
          //   413: istore 38
          //   415: aload 6
          //   417: astore 18
          //   419: aload 21
          //   421: astore 13
          //   423: aload 26
          //   425: astore 14
          //   427: aload 6
          //   429: astore 17
          //   431: aload 22
          //   433: astore 11
          //   435: aload 27
          //   437: astore 12
          //   439: aload 6
          //   441: astore 5
          //   443: aload 23
          //   445: astore_1
          //   446: aload 28
          //   448: astore_2
          //   449: aload_0
          //   450: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   453: ifeq +285 -> 738
          //   456: aload 6
          //   458: astore 15
          //   460: aload 19
          //   462: astore 7
          //   464: aload 24
          //   466: astore 8
          //   468: aload 6
          //   470: astore 16
          //   472: iload 35
          //   474: istore 37
          //   476: aload 20
          //   478: astore 9
          //   480: aload 25
          //   482: astore 10
          //   484: iload 40
          //   486: istore 38
          //   488: aload 6
          //   490: astore 18
          //   492: aload 21
          //   494: astore 13
          //   496: aload 26
          //   498: astore 14
          //   500: aload 6
          //   502: astore 17
          //   504: aload 22
          //   506: astore 11
          //   508: aload 27
          //   510: astore 12
          //   512: aload 6
          //   514: astore 5
          //   516: aload 23
          //   518: astore_1
          //   519: aload 28
          //   521: astore_2
          //   522: aload 6
          //   524: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   527: astore 29
          //   529: aload 6
          //   531: astore 15
          //   533: aload 19
          //   535: astore 7
          //   537: aload 24
          //   539: astore 8
          //   541: aload 6
          //   543: astore 16
          //   545: iload 35
          //   547: istore 37
          //   549: aload 20
          //   551: astore 9
          //   553: aload 25
          //   555: astore 10
          //   557: iload 40
          //   559: istore 38
          //   561: aload 6
          //   563: astore 18
          //   565: aload 21
          //   567: astore 13
          //   569: aload 26
          //   571: astore 14
          //   573: aload 6
          //   575: astore 17
          //   577: aload 22
          //   579: astore 11
          //   581: aload 27
          //   583: astore 12
          //   585: aload 6
          //   587: astore 5
          //   589: aload 23
          //   591: astore_1
          //   592: aload 28
          //   594: astore_2
          //   595: aload 29
          //   597: invokestatic 107	org/apache/cordova/FileTransfer:access$000	(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
          //   600: astore_3
          //   601: aload 6
          //   603: astore 15
          //   605: aload 19
          //   607: astore 7
          //   609: aload_3
          //   610: astore 8
          //   612: aload 6
          //   614: astore 16
          //   616: iload 35
          //   618: istore 37
          //   620: aload 20
          //   622: astore 9
          //   624: aload_3
          //   625: astore 10
          //   627: iload 40
          //   629: istore 38
          //   631: aload 6
          //   633: astore 18
          //   635: aload 21
          //   637: astore 13
          //   639: aload_3
          //   640: astore 14
          //   642: aload 6
          //   644: astore 17
          //   646: aload 22
          //   648: astore 11
          //   650: aload_3
          //   651: astore 12
          //   653: aload 6
          //   655: astore 5
          //   657: aload 23
          //   659: astore_1
          //   660: aload_3
          //   661: astore_2
          //   662: aload 29
          //   664: invokevirtual 111	javax/net/ssl/HttpsURLConnection:getHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
          //   667: astore 4
          //   669: aload 6
          //   671: astore 15
          //   673: aload 4
          //   675: astore 7
          //   677: aload_3
          //   678: astore 8
          //   680: aload 6
          //   682: astore 16
          //   684: iload 35
          //   686: istore 37
          //   688: aload 4
          //   690: astore 9
          //   692: aload_3
          //   693: astore 10
          //   695: iload 40
          //   697: istore 38
          //   699: aload 6
          //   701: astore 18
          //   703: aload 4
          //   705: astore 13
          //   707: aload_3
          //   708: astore 14
          //   710: aload 6
          //   712: astore 17
          //   714: aload 4
          //   716: astore 11
          //   718: aload_3
          //   719: astore 12
          //   721: aload 6
          //   723: astore 5
          //   725: aload 4
          //   727: astore_1
          //   728: aload_3
          //   729: astore_2
          //   730: aload 29
          //   732: invokestatic 114	org/apache/cordova/FileTransfer:access$100	()Ljavax/net/ssl/HostnameVerifier;
          //   735: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   738: aload 6
          //   740: astore 15
          //   742: aload 4
          //   744: astore 7
          //   746: aload_3
          //   747: astore 8
          //   749: aload 6
          //   751: astore 16
          //   753: iload 35
          //   755: istore 37
          //   757: aload 4
          //   759: astore 9
          //   761: aload_3
          //   762: astore 10
          //   764: iload 40
          //   766: istore 38
          //   768: aload 6
          //   770: astore 18
          //   772: aload 4
          //   774: astore 13
          //   776: aload_3
          //   777: astore 14
          //   779: aload 6
          //   781: astore 17
          //   783: aload 4
          //   785: astore 11
          //   787: aload_3
          //   788: astore 12
          //   790: aload 6
          //   792: astore 5
          //   794: aload 4
          //   796: astore_1
          //   797: aload_3
          //   798: astore_2
          //   799: aload 6
          //   801: iconst_1
          //   802: invokevirtual 124	java/net/HttpURLConnection:setDoInput	(Z)V
          //   805: aload 6
          //   807: astore 15
          //   809: aload 4
          //   811: astore 7
          //   813: aload_3
          //   814: astore 8
          //   816: aload 6
          //   818: astore 16
          //   820: iload 35
          //   822: istore 37
          //   824: aload 4
          //   826: astore 9
          //   828: aload_3
          //   829: astore 10
          //   831: iload 40
          //   833: istore 38
          //   835: aload 6
          //   837: astore 18
          //   839: aload 4
          //   841: astore 13
          //   843: aload_3
          //   844: astore 14
          //   846: aload 6
          //   848: astore 17
          //   850: aload 4
          //   852: astore 11
          //   854: aload_3
          //   855: astore 12
          //   857: aload 6
          //   859: astore 5
          //   861: aload 4
          //   863: astore_1
          //   864: aload_3
          //   865: astore_2
          //   866: aload 6
          //   868: iconst_1
          //   869: invokevirtual 127	java/net/HttpURLConnection:setDoOutput	(Z)V
          //   872: aload 6
          //   874: astore 15
          //   876: aload 4
          //   878: astore 7
          //   880: aload_3
          //   881: astore 8
          //   883: aload 6
          //   885: astore 16
          //   887: iload 35
          //   889: istore 37
          //   891: aload 4
          //   893: astore 9
          //   895: aload_3
          //   896: astore 10
          //   898: iload 40
          //   900: istore 38
          //   902: aload 6
          //   904: astore 18
          //   906: aload 4
          //   908: astore 13
          //   910: aload_3
          //   911: astore 14
          //   913: aload 6
          //   915: astore 17
          //   917: aload 4
          //   919: astore 11
          //   921: aload_3
          //   922: astore 12
          //   924: aload 6
          //   926: astore 5
          //   928: aload 4
          //   930: astore_1
          //   931: aload_3
          //   932: astore_2
          //   933: aload 6
          //   935: iconst_0
          //   936: invokevirtual 130	java/net/HttpURLConnection:setUseCaches	(Z)V
          //   939: aload 6
          //   941: astore 15
          //   943: aload 4
          //   945: astore 7
          //   947: aload_3
          //   948: astore 8
          //   950: aload 6
          //   952: astore 16
          //   954: iload 35
          //   956: istore 37
          //   958: aload 4
          //   960: astore 9
          //   962: aload_3
          //   963: astore 10
          //   965: iload 40
          //   967: istore 38
          //   969: aload 6
          //   971: astore 18
          //   973: aload 4
          //   975: astore 13
          //   977: aload_3
          //   978: astore 14
          //   980: aload 6
          //   982: astore 17
          //   984: aload 4
          //   986: astore 11
          //   988: aload_3
          //   989: astore 12
          //   991: aload 6
          //   993: astore 5
          //   995: aload 4
          //   997: astore_1
          //   998: aload_3
          //   999: astore_2
          //   1000: aload 6
          //   1002: aload_0
          //   1003: getfield 51	org/apache/cordova/FileTransfer$1:val$httpMethod	Ljava/lang/String;
          //   1006: invokevirtual 134	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
          //   1009: aload 6
          //   1011: astore 15
          //   1013: aload 4
          //   1015: astore 7
          //   1017: aload_3
          //   1018: astore 8
          //   1020: aload 6
          //   1022: astore 16
          //   1024: iload 35
          //   1026: istore 37
          //   1028: aload 4
          //   1030: astore 9
          //   1032: aload_3
          //   1033: astore 10
          //   1035: iload 40
          //   1037: istore 38
          //   1039: aload 6
          //   1041: astore 18
          //   1043: aload 4
          //   1045: astore 13
          //   1047: aload_3
          //   1048: astore 14
          //   1050: aload 6
          //   1052: astore 17
          //   1054: aload 4
          //   1056: astore 11
          //   1058: aload_3
          //   1059: astore 12
          //   1061: aload 6
          //   1063: astore 5
          //   1065: aload 4
          //   1067: astore_1
          //   1068: aload_3
          //   1069: astore_2
          //   1070: aload 6
          //   1072: ldc -120
          //   1074: ldc -118
          //   1076: invokevirtual 142	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
          //   1079: aload 6
          //   1081: astore 15
          //   1083: aload 4
          //   1085: astore 7
          //   1087: aload_3
          //   1088: astore 8
          //   1090: aload 6
          //   1092: astore 16
          //   1094: iload 35
          //   1096: istore 37
          //   1098: aload 4
          //   1100: astore 9
          //   1102: aload_3
          //   1103: astore 10
          //   1105: iload 40
          //   1107: istore 38
          //   1109: aload 6
          //   1111: astore 18
          //   1113: aload 4
          //   1115: astore 13
          //   1117: aload_3
          //   1118: astore 14
          //   1120: aload 6
          //   1122: astore 17
          //   1124: aload 4
          //   1126: astore 11
          //   1128: aload_3
          //   1129: astore 12
          //   1131: aload 6
          //   1133: astore 5
          //   1135: aload 4
          //   1137: astore_1
          //   1138: aload_3
          //   1139: astore_2
          //   1140: invokestatic 148	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
          //   1143: aload_0
          //   1144: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
          //   1147: invokevirtual 152	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
          //   1150: astore 19
          //   1152: aload 19
          //   1154: ifnull +73 -> 1227
          //   1157: aload 6
          //   1159: astore 15
          //   1161: aload 4
          //   1163: astore 7
          //   1165: aload_3
          //   1166: astore 8
          //   1168: aload 6
          //   1170: astore 16
          //   1172: iload 35
          //   1174: istore 37
          //   1176: aload 4
          //   1178: astore 9
          //   1180: aload_3
          //   1181: astore 10
          //   1183: iload 40
          //   1185: istore 38
          //   1187: aload 6
          //   1189: astore 18
          //   1191: aload 4
          //   1193: astore 13
          //   1195: aload_3
          //   1196: astore 14
          //   1198: aload 6
          //   1200: astore 17
          //   1202: aload 4
          //   1204: astore 11
          //   1206: aload_3
          //   1207: astore 12
          //   1209: aload 6
          //   1211: astore 5
          //   1213: aload 4
          //   1215: astore_1
          //   1216: aload_3
          //   1217: astore_2
          //   1218: aload 6
          //   1220: ldc -102
          //   1222: aload 19
          //   1224: invokevirtual 142	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
          //   1227: aload 6
          //   1229: astore 15
          //   1231: aload 4
          //   1233: astore 7
          //   1235: aload_3
          //   1236: astore 8
          //   1238: aload 6
          //   1240: astore 16
          //   1242: iload 35
          //   1244: istore 37
          //   1246: aload 4
          //   1248: astore 9
          //   1250: aload_3
          //   1251: astore 10
          //   1253: iload 40
          //   1255: istore 38
          //   1257: aload 6
          //   1259: astore 18
          //   1261: aload 4
          //   1263: astore 13
          //   1265: aload_3
          //   1266: astore 14
          //   1268: aload 6
          //   1270: astore 17
          //   1272: aload 4
          //   1274: astore 11
          //   1276: aload_3
          //   1277: astore 12
          //   1279: aload 6
          //   1281: astore 5
          //   1283: aload 4
          //   1285: astore_1
          //   1286: aload_3
          //   1287: astore_2
          //   1288: aload_0
          //   1289: getfield 55	org/apache/cordova/FileTransfer$1:val$headers	Lorg/json/JSONObject;
          //   1292: ifnull +73 -> 1365
          //   1295: aload 6
          //   1297: astore 15
          //   1299: aload 4
          //   1301: astore 7
          //   1303: aload_3
          //   1304: astore 8
          //   1306: aload 6
          //   1308: astore 16
          //   1310: iload 35
          //   1312: istore 37
          //   1314: aload 4
          //   1316: astore 9
          //   1318: aload_3
          //   1319: astore 10
          //   1321: iload 40
          //   1323: istore 38
          //   1325: aload 6
          //   1327: astore 18
          //   1329: aload 4
          //   1331: astore 13
          //   1333: aload_3
          //   1334: astore 14
          //   1336: aload 6
          //   1338: astore 17
          //   1340: aload 4
          //   1342: astore 11
          //   1344: aload_3
          //   1345: astore 12
          //   1347: aload 6
          //   1349: astore 5
          //   1351: aload 4
          //   1353: astore_1
          //   1354: aload_3
          //   1355: astore_2
          //   1356: aload 6
          //   1358: aload_0
          //   1359: getfield 55	org/apache/cordova/FileTransfer$1:val$headers	Lorg/json/JSONObject;
          //   1362: invokestatic 158	org/apache/cordova/FileTransfer:access$200	(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
          //   1365: aload 6
          //   1367: astore 15
          //   1369: aload 4
          //   1371: astore 7
          //   1373: aload_3
          //   1374: astore 8
          //   1376: aload 6
          //   1378: astore 16
          //   1380: iload 35
          //   1382: istore 37
          //   1384: aload 4
          //   1386: astore 9
          //   1388: aload_3
          //   1389: astore 10
          //   1391: iload 40
          //   1393: istore 38
          //   1395: aload 6
          //   1397: astore 18
          //   1399: aload 4
          //   1401: astore 13
          //   1403: aload_3
          //   1404: astore 14
          //   1406: aload 6
          //   1408: astore 17
          //   1410: aload 4
          //   1412: astore 11
          //   1414: aload_3
          //   1415: astore 12
          //   1417: aload 6
          //   1419: astore 5
          //   1421: aload 4
          //   1423: astore_1
          //   1424: aload_3
          //   1425: astore_2
          //   1426: new 160	java/lang/StringBuilder
          //   1429: dup
          //   1430: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   1433: astore 19
          //   1435: aload 6
          //   1437: astore 15
          //   1439: aload 4
          //   1441: astore 7
          //   1443: aload_3
          //   1444: astore 8
          //   1446: aload 6
          //   1448: astore 16
          //   1450: iload 35
          //   1452: istore 37
          //   1454: aload 4
          //   1456: astore 9
          //   1458: aload_3
          //   1459: astore 10
          //   1461: iload 40
          //   1463: istore 38
          //   1465: aload 6
          //   1467: astore 17
          //   1469: aload 4
          //   1471: astore 11
          //   1473: aload_3
          //   1474: astore 12
          //   1476: aload 6
          //   1478: astore 5
          //   1480: aload 4
          //   1482: astore_1
          //   1483: aload_3
          //   1484: astore_2
          //   1485: aload_0
          //   1486: getfield 57	org/apache/cordova/FileTransfer$1:val$params	Lorg/json/JSONObject;
          //   1489: invokevirtual 167	org/json/JSONObject:keys	()Ljava/util/Iterator;
          //   1492: astore 13
          //   1494: aload 6
          //   1496: astore 15
          //   1498: aload 4
          //   1500: astore 7
          //   1502: aload_3
          //   1503: astore 8
          //   1505: aload 6
          //   1507: astore 16
          //   1509: iload 35
          //   1511: istore 37
          //   1513: aload 4
          //   1515: astore 9
          //   1517: aload_3
          //   1518: astore 10
          //   1520: iload 40
          //   1522: istore 38
          //   1524: aload 6
          //   1526: astore 17
          //   1528: aload 4
          //   1530: astore 11
          //   1532: aload_3
          //   1533: astore 12
          //   1535: aload 6
          //   1537: astore 5
          //   1539: aload 4
          //   1541: astore_1
          //   1542: aload_3
          //   1543: astore_2
          //   1544: aload 13
          //   1546: invokeinterface 173 1 0
          //   1551: ifeq +532 -> 2083
          //   1554: aload 6
          //   1556: astore 15
          //   1558: aload 4
          //   1560: astore 7
          //   1562: aload_3
          //   1563: astore 8
          //   1565: aload 6
          //   1567: astore 16
          //   1569: iload 35
          //   1571: istore 37
          //   1573: aload 4
          //   1575: astore 9
          //   1577: aload_3
          //   1578: astore 10
          //   1580: iload 40
          //   1582: istore 38
          //   1584: aload 6
          //   1586: astore 17
          //   1588: aload 4
          //   1590: astore 11
          //   1592: aload_3
          //   1593: astore 12
          //   1595: aload 6
          //   1597: astore 5
          //   1599: aload 4
          //   1601: astore_1
          //   1602: aload_3
          //   1603: astore_2
          //   1604: aload 13
          //   1606: invokeinterface 177 1 0
          //   1611: astore 14
          //   1613: aload 6
          //   1615: astore 15
          //   1617: aload 4
          //   1619: astore 7
          //   1621: aload_3
          //   1622: astore 8
          //   1624: aload 6
          //   1626: astore 16
          //   1628: iload 35
          //   1630: istore 37
          //   1632: aload 4
          //   1634: astore 9
          //   1636: aload_3
          //   1637: astore 10
          //   1639: iload 40
          //   1641: istore 38
          //   1643: aload 6
          //   1645: astore 17
          //   1647: aload 4
          //   1649: astore 11
          //   1651: aload_3
          //   1652: astore 12
          //   1654: aload 6
          //   1656: astore 5
          //   1658: aload 4
          //   1660: astore_1
          //   1661: aload_3
          //   1662: astore_2
          //   1663: aload 14
          //   1665: invokestatic 183	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
          //   1668: ldc -71
          //   1670: invokevirtual 189	java/lang/String:equals	(Ljava/lang/Object;)Z
          //   1673: ifne -179 -> 1494
          //   1676: aload 6
          //   1678: astore 15
          //   1680: aload 4
          //   1682: astore 7
          //   1684: aload_3
          //   1685: astore 8
          //   1687: aload 6
          //   1689: astore 16
          //   1691: iload 35
          //   1693: istore 37
          //   1695: aload 4
          //   1697: astore 9
          //   1699: aload_3
          //   1700: astore 10
          //   1702: iload 40
          //   1704: istore 38
          //   1706: aload 6
          //   1708: astore 17
          //   1710: aload 4
          //   1712: astore 11
          //   1714: aload_3
          //   1715: astore 12
          //   1717: aload 6
          //   1719: astore 5
          //   1721: aload 4
          //   1723: astore_1
          //   1724: aload_3
          //   1725: astore_2
          //   1726: aload 19
          //   1728: ldc -65
          //   1730: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1733: ldc -59
          //   1735: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1738: ldc -57
          //   1740: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1743: pop
          //   1744: aload 6
          //   1746: astore 15
          //   1748: aload 4
          //   1750: astore 7
          //   1752: aload_3
          //   1753: astore 8
          //   1755: aload 6
          //   1757: astore 16
          //   1759: iload 35
          //   1761: istore 37
          //   1763: aload 4
          //   1765: astore 9
          //   1767: aload_3
          //   1768: astore 10
          //   1770: iload 40
          //   1772: istore 38
          //   1774: aload 6
          //   1776: astore 17
          //   1778: aload 4
          //   1780: astore 11
          //   1782: aload_3
          //   1783: astore 12
          //   1785: aload 6
          //   1787: astore 5
          //   1789: aload 4
          //   1791: astore_1
          //   1792: aload_3
          //   1793: astore_2
          //   1794: aload 19
          //   1796: ldc -55
          //   1798: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1801: aload 14
          //   1803: invokevirtual 205	java/lang/Object:toString	()Ljava/lang/String;
          //   1806: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1809: bipush 34
          //   1811: invokevirtual 208	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
          //   1814: pop
          //   1815: aload 6
          //   1817: astore 15
          //   1819: aload 4
          //   1821: astore 7
          //   1823: aload_3
          //   1824: astore 8
          //   1826: aload 6
          //   1828: astore 16
          //   1830: iload 35
          //   1832: istore 37
          //   1834: aload 4
          //   1836: astore 9
          //   1838: aload_3
          //   1839: astore 10
          //   1841: iload 40
          //   1843: istore 38
          //   1845: aload 6
          //   1847: astore 17
          //   1849: aload 4
          //   1851: astore 11
          //   1853: aload_3
          //   1854: astore 12
          //   1856: aload 6
          //   1858: astore 5
          //   1860: aload 4
          //   1862: astore_1
          //   1863: aload_3
          //   1864: astore_2
          //   1865: aload 19
          //   1867: ldc -57
          //   1869: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1872: ldc -57
          //   1874: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1877: pop
          //   1878: aload 6
          //   1880: astore 15
          //   1882: aload 4
          //   1884: astore 7
          //   1886: aload_3
          //   1887: astore 8
          //   1889: aload 6
          //   1891: astore 16
          //   1893: iload 35
          //   1895: istore 37
          //   1897: aload 4
          //   1899: astore 9
          //   1901: aload_3
          //   1902: astore 10
          //   1904: iload 40
          //   1906: istore 38
          //   1908: aload 6
          //   1910: astore 17
          //   1912: aload 4
          //   1914: astore 11
          //   1916: aload_3
          //   1917: astore 12
          //   1919: aload 6
          //   1921: astore 5
          //   1923: aload 4
          //   1925: astore_1
          //   1926: aload_3
          //   1927: astore_2
          //   1928: aload 19
          //   1930: aload_0
          //   1931: getfield 57	org/apache/cordova/FileTransfer$1:val$params	Lorg/json/JSONObject;
          //   1934: aload 14
          //   1936: invokevirtual 205	java/lang/Object:toString	()Ljava/lang/String;
          //   1939: invokevirtual 211	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
          //   1942: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   1945: pop
          //   1946: aload 6
          //   1948: astore 15
          //   1950: aload 4
          //   1952: astore 7
          //   1954: aload_3
          //   1955: astore 8
          //   1957: aload 6
          //   1959: astore 16
          //   1961: iload 35
          //   1963: istore 37
          //   1965: aload 4
          //   1967: astore 9
          //   1969: aload_3
          //   1970: astore 10
          //   1972: iload 40
          //   1974: istore 38
          //   1976: aload 6
          //   1978: astore 17
          //   1980: aload 4
          //   1982: astore 11
          //   1984: aload_3
          //   1985: astore 12
          //   1987: aload 6
          //   1989: astore 5
          //   1991: aload 4
          //   1993: astore_1
          //   1994: aload_3
          //   1995: astore_2
          //   1996: aload 19
          //   1998: ldc -57
          //   2000: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2003: pop
          //   2004: goto -510 -> 1494
          //   2007: astore 20
          //   2009: aload 6
          //   2011: astore 15
          //   2013: aload 4
          //   2015: astore 7
          //   2017: aload_3
          //   2018: astore 8
          //   2020: aload 6
          //   2022: astore 16
          //   2024: iload 35
          //   2026: istore 37
          //   2028: aload 4
          //   2030: astore 9
          //   2032: aload_3
          //   2033: astore 10
          //   2035: iload 40
          //   2037: istore 38
          //   2039: aload 6
          //   2041: astore 18
          //   2043: aload 4
          //   2045: astore 13
          //   2047: aload_3
          //   2048: astore 14
          //   2050: aload 6
          //   2052: astore 17
          //   2054: aload 4
          //   2056: astore 11
          //   2058: aload_3
          //   2059: astore 12
          //   2061: aload 6
          //   2063: astore 5
          //   2065: aload 4
          //   2067: astore_1
          //   2068: aload_3
          //   2069: astore_2
          //   2070: ldc -43
          //   2072: aload 20
          //   2074: invokevirtual 216	org/json/JSONException:getMessage	()Ljava/lang/String;
          //   2077: aload 20
          //   2079: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   2082: pop
          //   2083: aload 6
          //   2085: astore 15
          //   2087: aload 4
          //   2089: astore 7
          //   2091: aload_3
          //   2092: astore 8
          //   2094: aload 6
          //   2096: astore 16
          //   2098: iload 35
          //   2100: istore 37
          //   2102: aload 4
          //   2104: astore 9
          //   2106: aload_3
          //   2107: astore 10
          //   2109: iload 40
          //   2111: istore 38
          //   2113: aload 6
          //   2115: astore 18
          //   2117: aload 4
          //   2119: astore 13
          //   2121: aload_3
          //   2122: astore 14
          //   2124: aload 6
          //   2126: astore 17
          //   2128: aload 4
          //   2130: astore 11
          //   2132: aload_3
          //   2133: astore 12
          //   2135: aload 6
          //   2137: astore 5
          //   2139: aload 4
          //   2141: astore_1
          //   2142: aload_3
          //   2143: astore_2
          //   2144: aload 19
          //   2146: ldc -65
          //   2148: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2151: ldc -59
          //   2153: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2156: ldc -57
          //   2158: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2161: pop
          //   2162: aload 6
          //   2164: astore 15
          //   2166: aload 4
          //   2168: astore 7
          //   2170: aload_3
          //   2171: astore 8
          //   2173: aload 6
          //   2175: astore 16
          //   2177: iload 35
          //   2179: istore 37
          //   2181: aload 4
          //   2183: astore 9
          //   2185: aload_3
          //   2186: astore 10
          //   2188: iload 40
          //   2190: istore 38
          //   2192: aload 6
          //   2194: astore 18
          //   2196: aload 4
          //   2198: astore 13
          //   2200: aload_3
          //   2201: astore 14
          //   2203: aload 6
          //   2205: astore 17
          //   2207: aload 4
          //   2209: astore 11
          //   2211: aload_3
          //   2212: astore 12
          //   2214: aload 6
          //   2216: astore 5
          //   2218: aload 4
          //   2220: astore_1
          //   2221: aload_3
          //   2222: astore_2
          //   2223: aload 19
          //   2225: ldc -55
          //   2227: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2230: aload_0
          //   2231: getfield 59	org/apache/cordova/FileTransfer$1:val$fileKey	Ljava/lang/String;
          //   2234: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2237: ldc -32
          //   2239: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2242: pop
          //   2243: aload 6
          //   2245: astore 15
          //   2247: aload 4
          //   2249: astore 7
          //   2251: aload_3
          //   2252: astore 8
          //   2254: aload 6
          //   2256: astore 16
          //   2258: iload 35
          //   2260: istore 37
          //   2262: aload 4
          //   2264: astore 9
          //   2266: aload_3
          //   2267: astore 10
          //   2269: iload 40
          //   2271: istore 38
          //   2273: aload 6
          //   2275: astore 18
          //   2277: aload 4
          //   2279: astore 13
          //   2281: aload_3
          //   2282: astore 14
          //   2284: aload 6
          //   2286: astore 17
          //   2288: aload 4
          //   2290: astore 11
          //   2292: aload_3
          //   2293: astore 12
          //   2295: aload 6
          //   2297: astore 5
          //   2299: aload 4
          //   2301: astore_1
          //   2302: aload_3
          //   2303: astore_2
          //   2304: aload 19
          //   2306: ldc -30
          //   2308: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2311: aload_0
          //   2312: getfield 61	org/apache/cordova/FileTransfer$1:val$fileName	Ljava/lang/String;
          //   2315: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2318: bipush 34
          //   2320: invokevirtual 208	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
          //   2323: ldc -57
          //   2325: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2328: pop
          //   2329: aload 6
          //   2331: astore 15
          //   2333: aload 4
          //   2335: astore 7
          //   2337: aload_3
          //   2338: astore 8
          //   2340: aload 6
          //   2342: astore 16
          //   2344: iload 35
          //   2346: istore 37
          //   2348: aload 4
          //   2350: astore 9
          //   2352: aload_3
          //   2353: astore 10
          //   2355: iload 40
          //   2357: istore 38
          //   2359: aload 6
          //   2361: astore 18
          //   2363: aload 4
          //   2365: astore 13
          //   2367: aload_3
          //   2368: astore 14
          //   2370: aload 6
          //   2372: astore 17
          //   2374: aload 4
          //   2376: astore 11
          //   2378: aload_3
          //   2379: astore 12
          //   2381: aload 6
          //   2383: astore 5
          //   2385: aload 4
          //   2387: astore_1
          //   2388: aload_3
          //   2389: astore_2
          //   2390: aload 19
          //   2392: ldc -28
          //   2394: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2397: aload_0
          //   2398: getfield 63	org/apache/cordova/FileTransfer$1:val$mimeType	Ljava/lang/String;
          //   2401: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2404: ldc -57
          //   2406: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2409: ldc -57
          //   2411: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   2414: pop
          //   2415: aload 6
          //   2417: astore 15
          //   2419: aload 4
          //   2421: astore 7
          //   2423: aload_3
          //   2424: astore 8
          //   2426: aload 6
          //   2428: astore 16
          //   2430: iload 35
          //   2432: istore 37
          //   2434: aload 4
          //   2436: astore 9
          //   2438: aload_3
          //   2439: astore 10
          //   2441: iload 40
          //   2443: istore 38
          //   2445: aload 6
          //   2447: astore 18
          //   2449: aload 4
          //   2451: astore 13
          //   2453: aload_3
          //   2454: astore 14
          //   2456: aload 6
          //   2458: astore 17
          //   2460: aload 4
          //   2462: astore 11
          //   2464: aload_3
          //   2465: astore 12
          //   2467: aload 6
          //   2469: astore 5
          //   2471: aload 4
          //   2473: astore_1
          //   2474: aload_3
          //   2475: astore_2
          //   2476: aload 19
          //   2478: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   2481: ldc -25
          //   2483: invokevirtual 235	java/lang/String:getBytes	(Ljava/lang/String;)[B
          //   2486: astore 23
          //   2488: aload 6
          //   2490: astore 15
          //   2492: aload 4
          //   2494: astore 7
          //   2496: aload_3
          //   2497: astore 8
          //   2499: aload 6
          //   2501: astore 16
          //   2503: iload 35
          //   2505: istore 37
          //   2507: aload 4
          //   2509: astore 9
          //   2511: aload_3
          //   2512: astore 10
          //   2514: iload 40
          //   2516: istore 38
          //   2518: aload 6
          //   2520: astore 18
          //   2522: aload 4
          //   2524: astore 13
          //   2526: aload_3
          //   2527: astore 14
          //   2529: aload 6
          //   2531: astore 17
          //   2533: aload 4
          //   2535: astore 11
          //   2537: aload_3
          //   2538: astore 12
          //   2540: aload 6
          //   2542: astore 5
          //   2544: aload 4
          //   2546: astore_1
          //   2547: aload_3
          //   2548: astore_2
          //   2549: ldc -19
          //   2551: ldc -25
          //   2553: invokevirtual 235	java/lang/String:getBytes	(Ljava/lang/String;)[B
          //   2556: astore 22
          //   2558: aload 6
          //   2560: astore 15
          //   2562: aload 4
          //   2564: astore 7
          //   2566: aload_3
          //   2567: astore 8
          //   2569: aload 6
          //   2571: astore 16
          //   2573: iload 35
          //   2575: istore 37
          //   2577: aload 4
          //   2579: astore 9
          //   2581: aload_3
          //   2582: astore 10
          //   2584: iload 40
          //   2586: istore 38
          //   2588: aload 6
          //   2590: astore 18
          //   2592: aload 4
          //   2594: astore 13
          //   2596: aload_3
          //   2597: astore 14
          //   2599: aload 6
          //   2601: astore 17
          //   2603: aload 4
          //   2605: astore 11
          //   2607: aload_3
          //   2608: astore 12
          //   2610: aload 6
          //   2612: astore 5
          //   2614: aload 4
          //   2616: astore_1
          //   2617: aload_3
          //   2618: astore_2
          //   2619: aload_0
          //   2620: getfield 43	org/apache/cordova/FileTransfer$1:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
          //   2623: aload_0
          //   2624: getfield 65	org/apache/cordova/FileTransfer$1:val$sourceUri	Landroid/net/Uri;
          //   2627: invokevirtual 241	org/apache/cordova/CordovaResourceApi:openForRead	(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
          //   2630: astore 21
          //   2632: aload 6
          //   2634: astore 15
          //   2636: aload 4
          //   2638: astore 7
          //   2640: aload_3
          //   2641: astore 8
          //   2643: aload 6
          //   2645: astore 16
          //   2647: iload 35
          //   2649: istore 37
          //   2651: aload 4
          //   2653: astore 9
          //   2655: aload_3
          //   2656: astore 10
          //   2658: iload 40
          //   2660: istore 38
          //   2662: aload 6
          //   2664: astore 18
          //   2666: aload 4
          //   2668: astore 13
          //   2670: aload_3
          //   2671: astore 14
          //   2673: aload 6
          //   2675: astore 17
          //   2677: aload 4
          //   2679: astore 11
          //   2681: aload_3
          //   2682: astore 12
          //   2684: aload 6
          //   2686: astore 5
          //   2688: aload 4
          //   2690: astore_1
          //   2691: aload_3
          //   2692: astore_2
          //   2693: aload 23
          //   2695: arraylength
          //   2696: istore 41
          //   2698: aload 6
          //   2700: astore 15
          //   2702: aload 4
          //   2704: astore 7
          //   2706: aload_3
          //   2707: astore 8
          //   2709: aload 6
          //   2711: astore 16
          //   2713: iload 35
          //   2715: istore 37
          //   2717: aload 4
          //   2719: astore 9
          //   2721: aload_3
          //   2722: astore 10
          //   2724: iload 40
          //   2726: istore 38
          //   2728: aload 6
          //   2730: astore 18
          //   2732: aload 4
          //   2734: astore 13
          //   2736: aload_3
          //   2737: astore 14
          //   2739: aload 6
          //   2741: astore 17
          //   2743: aload 4
          //   2745: astore 11
          //   2747: aload_3
          //   2748: astore 12
          //   2750: aload 6
          //   2752: astore 5
          //   2754: aload 4
          //   2756: astore_1
          //   2757: aload_3
          //   2758: astore_2
          //   2759: aload 22
          //   2761: arraylength
          //   2762: istore 42
          //   2764: iload 35
          //   2766: istore 36
          //   2768: aload 6
          //   2770: astore 15
          //   2772: aload 4
          //   2774: astore 7
          //   2776: aload_3
          //   2777: astore 8
          //   2779: aload 6
          //   2781: astore 16
          //   2783: iload 35
          //   2785: istore 37
          //   2787: aload 4
          //   2789: astore 9
          //   2791: aload_3
          //   2792: astore 10
          //   2794: iload 40
          //   2796: istore 38
          //   2798: aload 6
          //   2800: astore 18
          //   2802: aload 4
          //   2804: astore 13
          //   2806: aload_3
          //   2807: astore 14
          //   2809: aload 6
          //   2811: astore 17
          //   2813: aload 4
          //   2815: astore 11
          //   2817: aload_3
          //   2818: astore 12
          //   2820: aload 6
          //   2822: astore 5
          //   2824: aload 4
          //   2826: astore_1
          //   2827: aload_3
          //   2828: astore_2
          //   2829: aload 21
          //   2831: getfield 247	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
          //   2834: lconst_0
          //   2835: lcmp
          //   2836: iflt +214 -> 3050
          //   2839: aload 6
          //   2841: astore 15
          //   2843: aload 4
          //   2845: astore 7
          //   2847: aload_3
          //   2848: astore 8
          //   2850: aload 6
          //   2852: astore 16
          //   2854: iload 35
          //   2856: istore 37
          //   2858: aload 4
          //   2860: astore 9
          //   2862: aload_3
          //   2863: astore 10
          //   2865: iload 40
          //   2867: istore 38
          //   2869: aload 6
          //   2871: astore 18
          //   2873: aload 4
          //   2875: astore 13
          //   2877: aload_3
          //   2878: astore 14
          //   2880: aload 6
          //   2882: astore 17
          //   2884: aload 4
          //   2886: astore 11
          //   2888: aload_3
          //   2889: astore 12
          //   2891: aload 6
          //   2893: astore 5
          //   2895: aload 4
          //   2897: astore_1
          //   2898: aload_3
          //   2899: astore_2
          //   2900: aload 21
          //   2902: getfield 247	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
          //   2905: l2i
          //   2906: iload 41
          //   2908: iload 42
          //   2910: iadd
          //   2911: iadd
          //   2912: istore 36
          //   2914: aload 6
          //   2916: astore 15
          //   2918: aload 4
          //   2920: astore 7
          //   2922: aload_3
          //   2923: astore 8
          //   2925: aload 6
          //   2927: astore 16
          //   2929: iload 36
          //   2931: istore 37
          //   2933: aload 4
          //   2935: astore 9
          //   2937: aload_3
          //   2938: astore 10
          //   2940: iload 40
          //   2942: istore 38
          //   2944: aload 6
          //   2946: astore 18
          //   2948: aload 4
          //   2950: astore 13
          //   2952: aload_3
          //   2953: astore 14
          //   2955: aload 6
          //   2957: astore 17
          //   2959: aload 4
          //   2961: astore 11
          //   2963: aload_3
          //   2964: astore 12
          //   2966: aload 6
          //   2968: astore 5
          //   2970: aload 4
          //   2972: astore_1
          //   2973: aload_3
          //   2974: astore_2
          //   2975: aload 34
          //   2977: iconst_1
          //   2978: invokevirtual 250	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
          //   2981: aload 6
          //   2983: astore 15
          //   2985: aload 4
          //   2987: astore 7
          //   2989: aload_3
          //   2990: astore 8
          //   2992: aload 6
          //   2994: astore 16
          //   2996: iload 36
          //   2998: istore 37
          //   3000: aload 4
          //   3002: astore 9
          //   3004: aload_3
          //   3005: astore 10
          //   3007: iload 40
          //   3009: istore 38
          //   3011: aload 6
          //   3013: astore 18
          //   3015: aload 4
          //   3017: astore 13
          //   3019: aload_3
          //   3020: astore 14
          //   3022: aload 6
          //   3024: astore 17
          //   3026: aload 4
          //   3028: astore 11
          //   3030: aload_3
          //   3031: astore 12
          //   3033: aload 6
          //   3035: astore 5
          //   3037: aload 4
          //   3039: astore_1
          //   3040: aload_3
          //   3041: astore_2
          //   3042: aload 34
          //   3044: iload 36
          //   3046: i2l
          //   3047: invokevirtual 254	org/apache/cordova/FileProgressResult:setTotal	(J)V
          //   3050: aload 6
          //   3052: astore 15
          //   3054: aload 4
          //   3056: astore 7
          //   3058: aload_3
          //   3059: astore 8
          //   3061: aload 6
          //   3063: astore 16
          //   3065: iload 36
          //   3067: istore 37
          //   3069: aload 4
          //   3071: astore 9
          //   3073: aload_3
          //   3074: astore 10
          //   3076: iload 40
          //   3078: istore 38
          //   3080: aload 6
          //   3082: astore 18
          //   3084: aload 4
          //   3086: astore 13
          //   3088: aload_3
          //   3089: astore 14
          //   3091: aload 6
          //   3093: astore 17
          //   3095: aload 4
          //   3097: astore 11
          //   3099: aload_3
          //   3100: astore 12
          //   3102: aload 6
          //   3104: astore 5
          //   3106: aload 4
          //   3108: astore_1
          //   3109: aload_3
          //   3110: astore_2
          //   3111: ldc -43
          //   3113: new 160	java/lang/StringBuilder
          //   3116: dup
          //   3117: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   3120: ldc_w 256
          //   3123: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   3126: iload 36
          //   3128: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   3131: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   3134: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   3137: pop
          //   3138: aload 6
          //   3140: astore 15
          //   3142: aload 4
          //   3144: astore 7
          //   3146: aload_3
          //   3147: astore 8
          //   3149: aload 6
          //   3151: astore 16
          //   3153: iload 36
          //   3155: istore 37
          //   3157: aload 4
          //   3159: astore 9
          //   3161: aload_3
          //   3162: astore 10
          //   3164: iload 40
          //   3166: istore 38
          //   3168: aload 6
          //   3170: astore 18
          //   3172: aload 4
          //   3174: astore 13
          //   3176: aload_3
          //   3177: astore 14
          //   3179: aload 6
          //   3181: astore 17
          //   3183: aload 4
          //   3185: astore 11
          //   3187: aload_3
          //   3188: astore 12
          //   3190: aload 6
          //   3192: astore 5
          //   3194: aload 4
          //   3196: astore_1
          //   3197: aload_3
          //   3198: astore_2
          //   3199: aload_0
          //   3200: getfield 67	org/apache/cordova/FileTransfer$1:val$chunkedMode	Z
          //   3203: ifeq +595 -> 3798
          //   3206: aload 6
          //   3208: astore 15
          //   3210: aload 4
          //   3212: astore 7
          //   3214: aload_3
          //   3215: astore 8
          //   3217: aload 6
          //   3219: astore 16
          //   3221: iload 36
          //   3223: istore 37
          //   3225: aload 4
          //   3227: astore 9
          //   3229: aload_3
          //   3230: astore 10
          //   3232: iload 40
          //   3234: istore 38
          //   3236: aload 6
          //   3238: astore 18
          //   3240: aload 4
          //   3242: astore 13
          //   3244: aload_3
          //   3245: astore 14
          //   3247: aload 6
          //   3249: astore 17
          //   3251: aload 4
          //   3253: astore 11
          //   3255: aload_3
          //   3256: astore 12
          //   3258: aload 6
          //   3260: astore 5
          //   3262: aload 4
          //   3264: astore_1
          //   3265: aload_3
          //   3266: astore_2
          //   3267: getstatic 269	android/os/Build$VERSION:SDK_INT	I
          //   3270: bipush 8
          //   3272: if_icmplt +3526 -> 6798
          //   3275: aload 6
          //   3277: astore 15
          //   3279: aload 4
          //   3281: astore 7
          //   3283: aload_3
          //   3284: astore 8
          //   3286: aload 6
          //   3288: astore 16
          //   3290: iload 36
          //   3292: istore 37
          //   3294: aload 4
          //   3296: astore 9
          //   3298: aload_3
          //   3299: astore 10
          //   3301: iload 40
          //   3303: istore 38
          //   3305: aload 6
          //   3307: astore 18
          //   3309: aload 4
          //   3311: astore 13
          //   3313: aload_3
          //   3314: astore 14
          //   3316: aload 6
          //   3318: astore 17
          //   3320: aload 4
          //   3322: astore 11
          //   3324: aload_3
          //   3325: astore 12
          //   3327: aload 6
          //   3329: astore 5
          //   3331: aload 4
          //   3333: astore_1
          //   3334: aload_3
          //   3335: astore_2
          //   3336: aload_0
          //   3337: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   3340: ifeq +458 -> 3798
          //   3343: goto +3455 -> 6798
          //   3346: iload 35
          //   3348: ifeq +462 -> 3810
          //   3351: aload 6
          //   3353: astore 15
          //   3355: aload 4
          //   3357: astore 7
          //   3359: aload_3
          //   3360: astore 8
          //   3362: aload 6
          //   3364: astore 16
          //   3366: iload 36
          //   3368: istore 37
          //   3370: aload 4
          //   3372: astore 9
          //   3374: aload_3
          //   3375: astore 10
          //   3377: iload 40
          //   3379: istore 38
          //   3381: aload 6
          //   3383: astore 18
          //   3385: aload 4
          //   3387: astore 13
          //   3389: aload_3
          //   3390: astore 14
          //   3392: aload 6
          //   3394: astore 17
          //   3396: aload 4
          //   3398: astore 11
          //   3400: aload_3
          //   3401: astore 12
          //   3403: aload 6
          //   3405: astore 5
          //   3407: aload 4
          //   3409: astore_1
          //   3410: aload_3
          //   3411: astore_2
          //   3412: aload 6
          //   3414: sipush 16384
          //   3417: invokevirtual 273	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
          //   3420: aload 6
          //   3422: astore 15
          //   3424: aload 4
          //   3426: astore 7
          //   3428: aload_3
          //   3429: astore 8
          //   3431: aload 6
          //   3433: astore 16
          //   3435: iload 36
          //   3437: istore 37
          //   3439: aload 4
          //   3441: astore 9
          //   3443: aload_3
          //   3444: astore 10
          //   3446: iload 40
          //   3448: istore 38
          //   3450: aload 6
          //   3452: astore 18
          //   3454: aload 4
          //   3456: astore 13
          //   3458: aload_3
          //   3459: astore 14
          //   3461: aload 6
          //   3463: astore 17
          //   3465: aload 4
          //   3467: astore 11
          //   3469: aload_3
          //   3470: astore 12
          //   3472: aload 6
          //   3474: astore 5
          //   3476: aload 4
          //   3478: astore_1
          //   3479: aload_3
          //   3480: astore_2
          //   3481: aload 6
          //   3483: ldc_w 275
          //   3486: ldc_w 277
          //   3489: invokevirtual 142	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
          //   3492: aload 6
          //   3494: astore 15
          //   3496: aload 4
          //   3498: astore 7
          //   3500: aload_3
          //   3501: astore 8
          //   3503: aload 6
          //   3505: astore 16
          //   3507: iload 36
          //   3509: istore 37
          //   3511: aload 4
          //   3513: astore 9
          //   3515: aload_3
          //   3516: astore 10
          //   3518: iload 40
          //   3520: istore 38
          //   3522: aload 6
          //   3524: astore 18
          //   3526: aload 4
          //   3528: astore 13
          //   3530: aload_3
          //   3531: astore 14
          //   3533: aload 6
          //   3535: astore 17
          //   3537: aload 4
          //   3539: astore 11
          //   3541: aload_3
          //   3542: astore 12
          //   3544: aload 6
          //   3546: astore 5
          //   3548: aload 4
          //   3550: astore_1
          //   3551: aload_3
          //   3552: astore_2
          //   3553: aload 6
          //   3555: invokevirtual 280	java/net/HttpURLConnection:connect	()V
          //   3558: aconst_null
          //   3559: astore 19
          //   3561: iload 39
          //   3563: istore 35
          //   3565: aload 6
          //   3567: invokevirtual 284	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
          //   3570: astore 20
          //   3572: aload 20
          //   3574: astore 19
          //   3576: iload 39
          //   3578: istore 35
          //   3580: aload_0
          //   3581: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3584: astore_1
          //   3585: aload 20
          //   3587: astore 19
          //   3589: iload 39
          //   3591: istore 35
          //   3593: aload_1
          //   3594: monitorenter
          //   3595: aload_0
          //   3596: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3599: getfield 89	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   3602: ifeq +421 -> 4023
          //   3605: aload_1
          //   3606: monitorexit
          //   3607: aload 6
          //   3609: astore 15
          //   3611: aload 4
          //   3613: astore 7
          //   3615: aload_3
          //   3616: astore 8
          //   3618: aload 6
          //   3620: astore 16
          //   3622: iload 36
          //   3624: istore 37
          //   3626: aload 4
          //   3628: astore 9
          //   3630: aload_3
          //   3631: astore 10
          //   3633: iload 40
          //   3635: istore 38
          //   3637: aload 6
          //   3639: astore 18
          //   3641: aload 4
          //   3643: astore 13
          //   3645: aload_3
          //   3646: astore 14
          //   3648: aload 6
          //   3650: astore 17
          //   3652: aload 4
          //   3654: astore 11
          //   3656: aload_3
          //   3657: astore 12
          //   3659: aload 6
          //   3661: astore 5
          //   3663: aload 4
          //   3665: astore_1
          //   3666: aload_3
          //   3667: astore_2
          //   3668: aload 21
          //   3670: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   3673: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   3676: aload 6
          //   3678: astore 15
          //   3680: aload 4
          //   3682: astore 7
          //   3684: aload_3
          //   3685: astore 8
          //   3687: aload 6
          //   3689: astore 16
          //   3691: iload 36
          //   3693: istore 37
          //   3695: aload 4
          //   3697: astore 9
          //   3699: aload_3
          //   3700: astore 10
          //   3702: iload 40
          //   3704: istore 38
          //   3706: aload 6
          //   3708: astore 18
          //   3710: aload 4
          //   3712: astore 13
          //   3714: aload_3
          //   3715: astore 14
          //   3717: aload 6
          //   3719: astore 17
          //   3721: aload 4
          //   3723: astore 11
          //   3725: aload_3
          //   3726: astore 12
          //   3728: aload 6
          //   3730: astore 5
          //   3732: aload 4
          //   3734: astore_1
          //   3735: aload_3
          //   3736: astore_2
          //   3737: aload 20
          //   3739: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   3742: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   3745: astore_1
          //   3746: aload_1
          //   3747: monitorenter
          //   3748: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   3751: aload_0
          //   3752: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   3755: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   3758: pop
          //   3759: aload_1
          //   3760: monitorexit
          //   3761: aload 6
          //   3763: ifnull -3753 -> 10
          //   3766: aload_0
          //   3767: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   3770: ifeq -3760 -> 10
          //   3773: aload_0
          //   3774: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   3777: ifeq -3767 -> 10
          //   3780: aload 6
          //   3782: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   3785: astore_1
          //   3786: aload_1
          //   3787: aload 4
          //   3789: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   3792: aload_1
          //   3793: aload_3
          //   3794: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   3797: return
          //   3798: iconst_0
          //   3799: istore 35
          //   3801: goto +3000 -> 6801
          //   3804: iconst_0
          //   3805: istore 35
          //   3807: goto -461 -> 3346
          //   3810: aload 6
          //   3812: astore 15
          //   3814: aload 4
          //   3816: astore 7
          //   3818: aload_3
          //   3819: astore 8
          //   3821: aload 6
          //   3823: astore 16
          //   3825: iload 36
          //   3827: istore 37
          //   3829: aload 4
          //   3831: astore 9
          //   3833: aload_3
          //   3834: astore 10
          //   3836: iload 40
          //   3838: istore 38
          //   3840: aload 6
          //   3842: astore 18
          //   3844: aload 4
          //   3846: astore 13
          //   3848: aload_3
          //   3849: astore 14
          //   3851: aload 6
          //   3853: astore 17
          //   3855: aload 4
          //   3857: astore 11
          //   3859: aload_3
          //   3860: astore 12
          //   3862: aload 6
          //   3864: astore 5
          //   3866: aload 4
          //   3868: astore_1
          //   3869: aload_3
          //   3870: astore_2
          //   3871: aload 6
          //   3873: iload 36
          //   3875: invokevirtual 309	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
          //   3878: goto -386 -> 3492
          //   3881: astore_3
          //   3882: aload 15
          //   3884: astore 5
          //   3886: aload 7
          //   3888: astore_1
          //   3889: aload 8
          //   3891: astore_2
          //   3892: getstatic 312	org/apache/cordova/FileTransfer:FILE_NOT_FOUND_ERR	I
          //   3895: aload_0
          //   3896: getfield 69	org/apache/cordova/FileTransfer$1:val$source	Ljava/lang/String;
          //   3899: aload_0
          //   3900: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
          //   3903: aload 15
          //   3905: invokestatic 316	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   3908: astore 4
          //   3910: aload 15
          //   3912: astore 5
          //   3914: aload 7
          //   3916: astore_1
          //   3917: aload 8
          //   3919: astore_2
          //   3920: ldc -43
          //   3922: aload 4
          //   3924: invokevirtual 317	org/json/JSONObject:toString	()Ljava/lang/String;
          //   3927: aload_3
          //   3928: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   3931: pop
          //   3932: aload 15
          //   3934: astore 5
          //   3936: aload 7
          //   3938: astore_1
          //   3939: aload 8
          //   3941: astore_2
          //   3942: aload_0
          //   3943: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   3946: new 319	org/apache/cordova/api/PluginResult
          //   3949: dup
          //   3950: getstatic 325	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   3953: aload 4
          //   3955: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   3958: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   3961: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   3964: astore_1
          //   3965: aload_1
          //   3966: monitorenter
          //   3967: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   3970: aload_0
          //   3971: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   3974: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   3977: pop
          //   3978: aload_1
          //   3979: monitorexit
          //   3980: aload 15
          //   3982: ifnull -3972 -> 10
          //   3985: aload_0
          //   3986: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   3989: ifeq -3979 -> 10
          //   3992: aload_0
          //   3993: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   3996: ifeq -3986 -> 10
          //   3999: aload 15
          //   4001: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   4004: astore_1
          //   4005: aload_1
          //   4006: aload 7
          //   4008: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4011: aload_1
          //   4012: aload 8
          //   4014: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4017: return
          //   4018: astore_2
          //   4019: aload_1
          //   4020: monitorexit
          //   4021: aload_2
          //   4022: athrow
          //   4023: aload_0
          //   4024: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4027: aload 20
          //   4029: putfield 336	org/apache/cordova/FileTransfer$RequestContext:currentOutputStream	Ljava/io/OutputStream;
          //   4032: aload_1
          //   4033: monitorexit
          //   4034: aload 20
          //   4036: astore 19
          //   4038: iload 39
          //   4040: istore 35
          //   4042: aload 20
          //   4044: aload 23
          //   4046: invokevirtual 342	java/io/OutputStream:write	([B)V
          //   4049: aload 20
          //   4051: astore 19
          //   4053: iload 39
          //   4055: istore 35
          //   4057: iconst_0
          //   4058: aload 23
          //   4060: arraylength
          //   4061: iadd
          //   4062: istore 37
          //   4064: aload 20
          //   4066: astore 19
          //   4068: iload 37
          //   4070: istore 35
          //   4072: aload 21
          //   4074: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   4077: invokevirtual 348	java/io/InputStream:available	()I
          //   4080: sipush 16384
          //   4083: invokestatic 354	java/lang/Math:min	(II)I
          //   4086: istore 38
          //   4088: aload 20
          //   4090: astore 19
          //   4092: iload 37
          //   4094: istore 35
          //   4096: iload 38
          //   4098: newarray <illegal type>
          //   4100: astore_1
          //   4101: aload 20
          //   4103: astore 19
          //   4105: iload 37
          //   4107: istore 35
          //   4109: aload 21
          //   4111: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   4114: aload_1
          //   4115: iconst_0
          //   4116: iload 38
          //   4118: invokevirtual 358	java/io/InputStream:read	([BII)I
          //   4121: istore 38
          //   4123: lconst_0
          //   4124: lstore 43
          //   4126: iload 38
          //   4128: ifle +644 -> 4772
          //   4131: aload 20
          //   4133: astore 19
          //   4135: iload 37
          //   4137: istore 35
          //   4139: aload 33
          //   4141: iload 37
          //   4143: i2l
          //   4144: invokevirtual 361	org/apache/cordova/FileUploadResult:setBytesSent	(J)V
          //   4147: aload 20
          //   4149: astore 19
          //   4151: iload 37
          //   4153: istore 35
          //   4155: aload 20
          //   4157: aload_1
          //   4158: iconst_0
          //   4159: iload 38
          //   4161: invokevirtual 364	java/io/OutputStream:write	([BII)V
          //   4164: iload 37
          //   4166: iload 38
          //   4168: iadd
          //   4169: istore 37
          //   4171: lload 43
          //   4173: lstore 45
          //   4175: iload 37
          //   4177: i2l
          //   4178: ldc2_w 365
          //   4181: lload 43
          //   4183: ladd
          //   4184: lcmp
          //   4185: ifle +60 -> 4245
          //   4188: iload 37
          //   4190: i2l
          //   4191: lstore 45
          //   4193: aload 20
          //   4195: astore 19
          //   4197: iload 37
          //   4199: istore 35
          //   4201: ldc -43
          //   4203: new 160	java/lang/StringBuilder
          //   4206: dup
          //   4207: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   4210: ldc_w 368
          //   4213: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4216: iload 37
          //   4218: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   4221: ldc_w 370
          //   4224: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4227: iload 36
          //   4229: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   4232: ldc_w 372
          //   4235: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4238: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   4241: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   4244: pop
          //   4245: aload 20
          //   4247: astore 19
          //   4249: iload 37
          //   4251: istore 35
          //   4253: aload 21
          //   4255: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   4258: invokevirtual 348	java/io/InputStream:available	()I
          //   4261: sipush 16384
          //   4264: invokestatic 354	java/lang/Math:min	(II)I
          //   4267: istore 38
          //   4269: aload 20
          //   4271: astore 19
          //   4273: iload 37
          //   4275: istore 35
          //   4277: aload 21
          //   4279: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   4282: aload_1
          //   4283: iconst_0
          //   4284: iload 38
          //   4286: invokevirtual 358	java/io/InputStream:read	([BII)I
          //   4289: istore 38
          //   4291: aload 20
          //   4293: astore 19
          //   4295: iload 37
          //   4297: istore 35
          //   4299: aload 34
          //   4301: iload 37
          //   4303: i2l
          //   4304: invokevirtual 375	org/apache/cordova/FileProgressResult:setLoaded	(J)V
          //   4307: aload 20
          //   4309: astore 19
          //   4311: iload 37
          //   4313: istore 35
          //   4315: new 319	org/apache/cordova/api/PluginResult
          //   4318: dup
          //   4319: getstatic 378	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   4322: aload 34
          //   4324: invokevirtual 382	org/apache/cordova/FileProgressResult:toJSONObject	()Lorg/json/JSONObject;
          //   4327: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4330: astore_2
          //   4331: aload 20
          //   4333: astore 19
          //   4335: iload 37
          //   4337: istore 35
          //   4339: aload_2
          //   4340: iconst_1
          //   4341: invokevirtual 385	org/apache/cordova/api/PluginResult:setKeepCallback	(Z)V
          //   4344: aload 20
          //   4346: astore 19
          //   4348: iload 37
          //   4350: istore 35
          //   4352: aload_0
          //   4353: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4356: aload_2
          //   4357: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   4360: lload 45
          //   4362: lstore 43
          //   4364: goto -238 -> 4126
          //   4367: astore 20
          //   4369: aload 6
          //   4371: astore 15
          //   4373: aload 4
          //   4375: astore 7
          //   4377: aload_3
          //   4378: astore 8
          //   4380: aload 6
          //   4382: astore 16
          //   4384: iload 36
          //   4386: istore 37
          //   4388: aload 4
          //   4390: astore 9
          //   4392: aload_3
          //   4393: astore 10
          //   4395: iload 35
          //   4397: istore 38
          //   4399: aload 6
          //   4401: astore 18
          //   4403: aload 4
          //   4405: astore 13
          //   4407: aload_3
          //   4408: astore 14
          //   4410: aload 6
          //   4412: astore 17
          //   4414: aload 4
          //   4416: astore 11
          //   4418: aload_3
          //   4419: astore 12
          //   4421: aload 6
          //   4423: astore 5
          //   4425: aload 4
          //   4427: astore_1
          //   4428: aload_3
          //   4429: astore_2
          //   4430: aload 21
          //   4432: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   4435: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4438: aload 6
          //   4440: astore 15
          //   4442: aload 4
          //   4444: astore 7
          //   4446: aload_3
          //   4447: astore 8
          //   4449: aload 6
          //   4451: astore 16
          //   4453: iload 36
          //   4455: istore 37
          //   4457: aload 4
          //   4459: astore 9
          //   4461: aload_3
          //   4462: astore 10
          //   4464: iload 35
          //   4466: istore 38
          //   4468: aload 6
          //   4470: astore 18
          //   4472: aload 4
          //   4474: astore 13
          //   4476: aload_3
          //   4477: astore 14
          //   4479: aload 6
          //   4481: astore 17
          //   4483: aload 4
          //   4485: astore 11
          //   4487: aload_3
          //   4488: astore 12
          //   4490: aload 6
          //   4492: astore 5
          //   4494: aload 4
          //   4496: astore_1
          //   4497: aload_3
          //   4498: astore_2
          //   4499: aload 19
          //   4501: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4504: aload 6
          //   4506: astore 15
          //   4508: aload 4
          //   4510: astore 7
          //   4512: aload_3
          //   4513: astore 8
          //   4515: aload 6
          //   4517: astore 16
          //   4519: iload 36
          //   4521: istore 37
          //   4523: aload 4
          //   4525: astore 9
          //   4527: aload_3
          //   4528: astore 10
          //   4530: iload 35
          //   4532: istore 38
          //   4534: aload 6
          //   4536: astore 18
          //   4538: aload 4
          //   4540: astore 13
          //   4542: aload_3
          //   4543: astore 14
          //   4545: aload 6
          //   4547: astore 17
          //   4549: aload 4
          //   4551: astore 11
          //   4553: aload_3
          //   4554: astore 12
          //   4556: aload 6
          //   4558: astore 5
          //   4560: aload 4
          //   4562: astore_1
          //   4563: aload_3
          //   4564: astore_2
          //   4565: aload 20
          //   4567: athrow
          //   4568: astore_3
          //   4569: aload 16
          //   4571: astore 5
          //   4573: aload 9
          //   4575: astore_1
          //   4576: aload 10
          //   4578: astore_2
          //   4579: getstatic 388	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   4582: aload_0
          //   4583: getfield 69	org/apache/cordova/FileTransfer$1:val$source	Ljava/lang/String;
          //   4586: aload_0
          //   4587: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
          //   4590: aload 16
          //   4592: invokestatic 316	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   4595: astore 4
          //   4597: aload 16
          //   4599: astore 5
          //   4601: aload 9
          //   4603: astore_1
          //   4604: aload 10
          //   4606: astore_2
          //   4607: ldc -43
          //   4609: aload 4
          //   4611: invokevirtual 317	org/json/JSONObject:toString	()Ljava/lang/String;
          //   4614: aload_3
          //   4615: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   4618: pop
          //   4619: aload 16
          //   4621: astore 5
          //   4623: aload 9
          //   4625: astore_1
          //   4626: aload 10
          //   4628: astore_2
          //   4629: ldc -43
          //   4631: new 160	java/lang/StringBuilder
          //   4634: dup
          //   4635: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   4638: ldc_w 390
          //   4641: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4644: iload 38
          //   4646: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   4649: ldc_w 370
          //   4652: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4655: iload 37
          //   4657: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   4660: ldc_w 392
          //   4663: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   4666: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   4669: invokestatic 394	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
          //   4672: pop
          //   4673: aload 16
          //   4675: astore 5
          //   4677: aload 9
          //   4679: astore_1
          //   4680: aload 10
          //   4682: astore_2
          //   4683: aload_0
          //   4684: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   4687: new 319	org/apache/cordova/api/PluginResult
          //   4690: dup
          //   4691: getstatic 325	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   4694: aload 4
          //   4696: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   4699: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   4702: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   4705: astore_1
          //   4706: aload_1
          //   4707: monitorenter
          //   4708: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   4711: aload_0
          //   4712: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   4715: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   4718: pop
          //   4719: aload_1
          //   4720: monitorexit
          //   4721: aload 16
          //   4723: ifnull -4713 -> 10
          //   4726: aload_0
          //   4727: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   4730: ifeq -4720 -> 10
          //   4733: aload_0
          //   4734: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   4737: ifeq -4727 -> 10
          //   4740: aload 16
          //   4742: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   4745: astore_1
          //   4746: aload_1
          //   4747: aload 9
          //   4749: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   4752: aload_1
          //   4753: aload 10
          //   4755: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   4758: return
          //   4759: astore_2
          //   4760: aload_1
          //   4761: monitorexit
          //   4762: aload 20
          //   4764: astore 19
          //   4766: iload 39
          //   4768: istore 35
          //   4770: aload_2
          //   4771: athrow
          //   4772: aload 20
          //   4774: astore 19
          //   4776: iload 37
          //   4778: istore 35
          //   4780: aload 20
          //   4782: aload 22
          //   4784: invokevirtual 342	java/io/OutputStream:write	([B)V
          //   4787: aload 20
          //   4789: astore 19
          //   4791: iload 37
          //   4793: istore 35
          //   4795: iload 37
          //   4797: aload 22
          //   4799: arraylength
          //   4800: iadd
          //   4801: istore 39
          //   4803: aload 20
          //   4805: astore 19
          //   4807: iload 39
          //   4809: istore 35
          //   4811: aload 20
          //   4813: invokevirtual 397	java/io/OutputStream:flush	()V
          //   4816: aload 6
          //   4818: astore 15
          //   4820: aload 4
          //   4822: astore 7
          //   4824: aload_3
          //   4825: astore 8
          //   4827: aload 6
          //   4829: astore 16
          //   4831: iload 36
          //   4833: istore 37
          //   4835: aload 4
          //   4837: astore 9
          //   4839: aload_3
          //   4840: astore 10
          //   4842: iload 39
          //   4844: istore 38
          //   4846: aload 6
          //   4848: astore 18
          //   4850: aload 4
          //   4852: astore 13
          //   4854: aload_3
          //   4855: astore 14
          //   4857: aload 6
          //   4859: astore 17
          //   4861: aload 4
          //   4863: astore 11
          //   4865: aload_3
          //   4866: astore 12
          //   4868: aload 6
          //   4870: astore 5
          //   4872: aload 4
          //   4874: astore_1
          //   4875: aload_3
          //   4876: astore_2
          //   4877: aload 21
          //   4879: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
          //   4882: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4885: aload 6
          //   4887: astore 15
          //   4889: aload 4
          //   4891: astore 7
          //   4893: aload_3
          //   4894: astore 8
          //   4896: aload 6
          //   4898: astore 16
          //   4900: iload 36
          //   4902: istore 37
          //   4904: aload 4
          //   4906: astore 9
          //   4908: aload_3
          //   4909: astore 10
          //   4911: iload 39
          //   4913: istore 38
          //   4915: aload 6
          //   4917: astore 18
          //   4919: aload 4
          //   4921: astore 13
          //   4923: aload_3
          //   4924: astore 14
          //   4926: aload 6
          //   4928: astore 17
          //   4930: aload 4
          //   4932: astore 11
          //   4934: aload_3
          //   4935: astore 12
          //   4937: aload 6
          //   4939: astore 5
          //   4941: aload 4
          //   4943: astore_1
          //   4944: aload_3
          //   4945: astore_2
          //   4946: aload 20
          //   4948: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   4951: aload 6
          //   4953: astore 15
          //   4955: aload 4
          //   4957: astore 7
          //   4959: aload_3
          //   4960: astore 8
          //   4962: aload 6
          //   4964: astore 16
          //   4966: iload 36
          //   4968: istore 37
          //   4970: aload 4
          //   4972: astore 9
          //   4974: aload_3
          //   4975: astore 10
          //   4977: iload 39
          //   4979: istore 38
          //   4981: aload 6
          //   4983: astore 18
          //   4985: aload 4
          //   4987: astore 13
          //   4989: aload_3
          //   4990: astore 14
          //   4992: aload 6
          //   4994: astore 17
          //   4996: aload 4
          //   4998: astore 11
          //   5000: aload_3
          //   5001: astore 12
          //   5003: aload 6
          //   5005: astore 5
          //   5007: aload 4
          //   5009: astore_1
          //   5010: aload_3
          //   5011: astore_2
          //   5012: aload_0
          //   5013: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5016: aconst_null
          //   5017: putfield 336	org/apache/cordova/FileTransfer$RequestContext:currentOutputStream	Ljava/io/OutputStream;
          //   5020: aload 6
          //   5022: astore 15
          //   5024: aload 4
          //   5026: astore 7
          //   5028: aload_3
          //   5029: astore 8
          //   5031: aload 6
          //   5033: astore 16
          //   5035: iload 36
          //   5037: istore 37
          //   5039: aload 4
          //   5041: astore 9
          //   5043: aload_3
          //   5044: astore 10
          //   5046: iload 39
          //   5048: istore 38
          //   5050: aload 6
          //   5052: astore 18
          //   5054: aload 4
          //   5056: astore 13
          //   5058: aload_3
          //   5059: astore 14
          //   5061: aload 6
          //   5063: astore 17
          //   5065: aload 4
          //   5067: astore 11
          //   5069: aload_3
          //   5070: astore 12
          //   5072: aload 6
          //   5074: astore 5
          //   5076: aload 4
          //   5078: astore_1
          //   5079: aload_3
          //   5080: astore_2
          //   5081: ldc -43
          //   5083: new 160	java/lang/StringBuilder
          //   5086: dup
          //   5087: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   5090: ldc_w 399
          //   5093: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   5096: iload 39
          //   5098: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   5101: ldc_w 370
          //   5104: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   5107: iload 36
          //   5109: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   5112: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   5115: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   5118: pop
          //   5119: aload 6
          //   5121: astore 15
          //   5123: aload 4
          //   5125: astore 7
          //   5127: aload_3
          //   5128: astore 8
          //   5130: aload 6
          //   5132: astore 16
          //   5134: iload 36
          //   5136: istore 37
          //   5138: aload 4
          //   5140: astore 9
          //   5142: aload_3
          //   5143: astore 10
          //   5145: iload 39
          //   5147: istore 38
          //   5149: aload 6
          //   5151: astore 18
          //   5153: aload 4
          //   5155: astore 13
          //   5157: aload_3
          //   5158: astore 14
          //   5160: aload 6
          //   5162: astore 17
          //   5164: aload 4
          //   5166: astore 11
          //   5168: aload_3
          //   5169: astore 12
          //   5171: aload 6
          //   5173: astore 5
          //   5175: aload 4
          //   5177: astore_1
          //   5178: aload_3
          //   5179: astore_2
          //   5180: aload 6
          //   5182: invokevirtual 402	java/net/HttpURLConnection:getResponseCode	()I
          //   5185: istore 35
          //   5187: aload 6
          //   5189: astore 15
          //   5191: aload 4
          //   5193: astore 7
          //   5195: aload_3
          //   5196: astore 8
          //   5198: aload 6
          //   5200: astore 16
          //   5202: iload 36
          //   5204: istore 37
          //   5206: aload 4
          //   5208: astore 9
          //   5210: aload_3
          //   5211: astore 10
          //   5213: iload 39
          //   5215: istore 38
          //   5217: aload 6
          //   5219: astore 18
          //   5221: aload 4
          //   5223: astore 13
          //   5225: aload_3
          //   5226: astore 14
          //   5228: aload 6
          //   5230: astore 17
          //   5232: aload 4
          //   5234: astore 11
          //   5236: aload_3
          //   5237: astore 12
          //   5239: aload 6
          //   5241: astore 5
          //   5243: aload 4
          //   5245: astore_1
          //   5246: aload_3
          //   5247: astore_2
          //   5248: ldc -43
          //   5250: new 160	java/lang/StringBuilder
          //   5253: dup
          //   5254: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   5257: ldc_w 404
          //   5260: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   5263: iload 35
          //   5265: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   5268: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   5271: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   5274: pop
          //   5275: aload 6
          //   5277: astore 15
          //   5279: aload 4
          //   5281: astore 7
          //   5283: aload_3
          //   5284: astore 8
          //   5286: aload 6
          //   5288: astore 16
          //   5290: iload 36
          //   5292: istore 37
          //   5294: aload 4
          //   5296: astore 9
          //   5298: aload_3
          //   5299: astore 10
          //   5301: iload 39
          //   5303: istore 38
          //   5305: aload 6
          //   5307: astore 18
          //   5309: aload 4
          //   5311: astore 13
          //   5313: aload_3
          //   5314: astore 14
          //   5316: aload 6
          //   5318: astore 17
          //   5320: aload 4
          //   5322: astore 11
          //   5324: aload_3
          //   5325: astore 12
          //   5327: aload 6
          //   5329: astore 5
          //   5331: aload 4
          //   5333: astore_1
          //   5334: aload_3
          //   5335: astore_2
          //   5336: ldc -43
          //   5338: new 160	java/lang/StringBuilder
          //   5341: dup
          //   5342: invokespecial 161	java/lang/StringBuilder:<init>	()V
          //   5345: ldc_w 406
          //   5348: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   5351: aload 6
          //   5353: invokevirtual 410	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
          //   5356: invokevirtual 413	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
          //   5359: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   5362: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   5365: pop
          //   5366: aconst_null
          //   5367: astore 19
          //   5369: aload 6
          //   5371: invokestatic 417	org/apache/cordova/FileTransfer:access$400	(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
          //   5374: astore 20
          //   5376: aload 20
          //   5378: astore 19
          //   5380: aload_0
          //   5381: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5384: astore_1
          //   5385: aload 20
          //   5387: astore 19
          //   5389: aload_1
          //   5390: monitorenter
          //   5391: aload_0
          //   5392: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5395: getfield 89	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
          //   5398: ifeq +201 -> 5599
          //   5401: aload_1
          //   5402: monitorexit
          //   5403: aload 6
          //   5405: astore 15
          //   5407: aload 4
          //   5409: astore 7
          //   5411: aload_3
          //   5412: astore 8
          //   5414: aload 6
          //   5416: astore 16
          //   5418: iload 36
          //   5420: istore 37
          //   5422: aload 4
          //   5424: astore 9
          //   5426: aload_3
          //   5427: astore 10
          //   5429: iload 39
          //   5431: istore 38
          //   5433: aload 6
          //   5435: astore 18
          //   5437: aload 4
          //   5439: astore 13
          //   5441: aload_3
          //   5442: astore 14
          //   5444: aload 6
          //   5446: astore 17
          //   5448: aload 4
          //   5450: astore 11
          //   5452: aload_3
          //   5453: astore 12
          //   5455: aload 6
          //   5457: astore 5
          //   5459: aload 4
          //   5461: astore_1
          //   5462: aload_3
          //   5463: astore_2
          //   5464: aload_0
          //   5465: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5468: aconst_null
          //   5469: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   5472: aload 6
          //   5474: astore 15
          //   5476: aload 4
          //   5478: astore 7
          //   5480: aload_3
          //   5481: astore 8
          //   5483: aload 6
          //   5485: astore 16
          //   5487: iload 36
          //   5489: istore 37
          //   5491: aload 4
          //   5493: astore 9
          //   5495: aload_3
          //   5496: astore 10
          //   5498: iload 39
          //   5500: istore 38
          //   5502: aload 6
          //   5504: astore 18
          //   5506: aload 4
          //   5508: astore 13
          //   5510: aload_3
          //   5511: astore 14
          //   5513: aload 6
          //   5515: astore 17
          //   5517: aload 4
          //   5519: astore 11
          //   5521: aload_3
          //   5522: astore 12
          //   5524: aload 6
          //   5526: astore 5
          //   5528: aload 4
          //   5530: astore_1
          //   5531: aload_3
          //   5532: astore_2
          //   5533: aload 20
          //   5535: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5538: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5541: astore_1
          //   5542: aload_1
          //   5543: monitorenter
          //   5544: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5547: aload_0
          //   5548: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   5551: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5554: pop
          //   5555: aload_1
          //   5556: monitorexit
          //   5557: aload 6
          //   5559: ifnull -5549 -> 10
          //   5562: aload_0
          //   5563: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   5566: ifeq -5556 -> 10
          //   5569: aload_0
          //   5570: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   5573: ifeq -5563 -> 10
          //   5576: aload 6
          //   5578: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   5581: astore_1
          //   5582: aload_1
          //   5583: aload 4
          //   5585: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5588: aload_1
          //   5589: aload_3
          //   5590: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5593: return
          //   5594: astore_2
          //   5595: aload_1
          //   5596: monitorexit
          //   5597: aload_2
          //   5598: athrow
          //   5599: aload_0
          //   5600: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5603: aload 20
          //   5605: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   5608: aload_1
          //   5609: monitorexit
          //   5610: aload 20
          //   5612: astore 19
          //   5614: new 422	java/io/ByteArrayOutputStream
          //   5617: dup
          //   5618: sipush 1024
          //   5621: aload 6
          //   5623: invokevirtual 425	java/net/HttpURLConnection:getContentLength	()I
          //   5626: invokestatic 428	java/lang/Math:max	(II)I
          //   5629: invokespecial 430	java/io/ByteArrayOutputStream:<init>	(I)V
          //   5632: astore_1
          //   5633: aload 20
          //   5635: astore 19
          //   5637: sipush 1024
          //   5640: newarray <illegal type>
          //   5642: astore_2
          //   5643: aload 20
          //   5645: astore 19
          //   5647: aload 20
          //   5649: aload_2
          //   5650: invokevirtual 435	org/apache/cordova/FileTransfer$TrackingInputStream:read	([B)I
          //   5653: istore 37
          //   5655: iload 37
          //   5657: ifle +334 -> 5991
          //   5660: aload 20
          //   5662: astore 19
          //   5664: aload_1
          //   5665: aload_2
          //   5666: iconst_0
          //   5667: iload 37
          //   5669: invokevirtual 436	java/io/ByteArrayOutputStream:write	([BII)V
          //   5672: goto -29 -> 5643
          //   5675: astore 20
          //   5677: aload 6
          //   5679: astore 15
          //   5681: aload 4
          //   5683: astore 7
          //   5685: aload_3
          //   5686: astore 8
          //   5688: aload 6
          //   5690: astore 16
          //   5692: iload 36
          //   5694: istore 37
          //   5696: aload 4
          //   5698: astore 9
          //   5700: aload_3
          //   5701: astore 10
          //   5703: iload 39
          //   5705: istore 38
          //   5707: aload 6
          //   5709: astore 18
          //   5711: aload 4
          //   5713: astore 13
          //   5715: aload_3
          //   5716: astore 14
          //   5718: aload 6
          //   5720: astore 17
          //   5722: aload 4
          //   5724: astore 11
          //   5726: aload_3
          //   5727: astore 12
          //   5729: aload 6
          //   5731: astore 5
          //   5733: aload 4
          //   5735: astore_1
          //   5736: aload_3
          //   5737: astore_2
          //   5738: aload_0
          //   5739: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5742: aconst_null
          //   5743: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   5746: aload 6
          //   5748: astore 15
          //   5750: aload 4
          //   5752: astore 7
          //   5754: aload_3
          //   5755: astore 8
          //   5757: aload 6
          //   5759: astore 16
          //   5761: iload 36
          //   5763: istore 37
          //   5765: aload 4
          //   5767: astore 9
          //   5769: aload_3
          //   5770: astore 10
          //   5772: iload 39
          //   5774: istore 38
          //   5776: aload 6
          //   5778: astore 18
          //   5780: aload 4
          //   5782: astore 13
          //   5784: aload_3
          //   5785: astore 14
          //   5787: aload 6
          //   5789: astore 17
          //   5791: aload 4
          //   5793: astore 11
          //   5795: aload_3
          //   5796: astore 12
          //   5798: aload 6
          //   5800: astore 5
          //   5802: aload 4
          //   5804: astore_1
          //   5805: aload_3
          //   5806: astore_2
          //   5807: aload 19
          //   5809: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   5812: aload 6
          //   5814: astore 15
          //   5816: aload 4
          //   5818: astore 7
          //   5820: aload_3
          //   5821: astore 8
          //   5823: aload 6
          //   5825: astore 16
          //   5827: iload 36
          //   5829: istore 37
          //   5831: aload 4
          //   5833: astore 9
          //   5835: aload_3
          //   5836: astore 10
          //   5838: iload 39
          //   5840: istore 38
          //   5842: aload 6
          //   5844: astore 18
          //   5846: aload 4
          //   5848: astore 13
          //   5850: aload_3
          //   5851: astore 14
          //   5853: aload 6
          //   5855: astore 17
          //   5857: aload 4
          //   5859: astore 11
          //   5861: aload_3
          //   5862: astore 12
          //   5864: aload 6
          //   5866: astore 5
          //   5868: aload 4
          //   5870: astore_1
          //   5871: aload_3
          //   5872: astore_2
          //   5873: aload 20
          //   5875: athrow
          //   5876: astore_3
          //   5877: aload 18
          //   5879: astore 5
          //   5881: aload 13
          //   5883: astore_1
          //   5884: aload 14
          //   5886: astore_2
          //   5887: ldc -43
          //   5889: aload_3
          //   5890: invokevirtual 216	org/json/JSONException:getMessage	()Ljava/lang/String;
          //   5893: aload_3
          //   5894: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   5897: pop
          //   5898: aload 18
          //   5900: astore 5
          //   5902: aload 13
          //   5904: astore_1
          //   5905: aload 14
          //   5907: astore_2
          //   5908: aload_0
          //   5909: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   5912: new 319	org/apache/cordova/api/PluginResult
          //   5915: dup
          //   5916: getstatic 439	org/apache/cordova/api/PluginResult$Status:JSON_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   5919: invokespecial 442	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;)V
          //   5922: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   5925: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5928: astore_1
          //   5929: aload_1
          //   5930: monitorenter
          //   5931: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   5934: aload_0
          //   5935: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   5938: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   5941: pop
          //   5942: aload_1
          //   5943: monitorexit
          //   5944: aload 18
          //   5946: ifnull -5936 -> 10
          //   5949: aload_0
          //   5950: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   5953: ifeq -5943 -> 10
          //   5956: aload_0
          //   5957: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   5960: ifeq -5950 -> 10
          //   5963: aload 18
          //   5965: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   5968: astore_1
          //   5969: aload_1
          //   5970: aload 13
          //   5972: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   5975: aload_1
          //   5976: aload 14
          //   5978: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   5981: return
          //   5982: astore_2
          //   5983: aload_1
          //   5984: monitorexit
          //   5985: aload 20
          //   5987: astore 19
          //   5989: aload_2
          //   5990: athrow
          //   5991: aload 20
          //   5993: astore 19
          //   5995: aload_1
          //   5996: ldc -25
          //   5998: invokevirtual 444	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
          //   6001: astore 21
          //   6003: aload 6
          //   6005: astore 15
          //   6007: aload 4
          //   6009: astore 7
          //   6011: aload_3
          //   6012: astore 8
          //   6014: aload 6
          //   6016: astore 16
          //   6018: iload 36
          //   6020: istore 37
          //   6022: aload 4
          //   6024: astore 9
          //   6026: aload_3
          //   6027: astore 10
          //   6029: iload 39
          //   6031: istore 38
          //   6033: aload 6
          //   6035: astore 18
          //   6037: aload 4
          //   6039: astore 13
          //   6041: aload_3
          //   6042: astore 14
          //   6044: aload 6
          //   6046: astore 17
          //   6048: aload 4
          //   6050: astore 11
          //   6052: aload_3
          //   6053: astore 12
          //   6055: aload 6
          //   6057: astore 5
          //   6059: aload 4
          //   6061: astore_1
          //   6062: aload_3
          //   6063: astore_2
          //   6064: aload_0
          //   6065: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   6068: aconst_null
          //   6069: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
          //   6072: aload 6
          //   6074: astore 15
          //   6076: aload 4
          //   6078: astore 7
          //   6080: aload_3
          //   6081: astore 8
          //   6083: aload 6
          //   6085: astore 16
          //   6087: iload 36
          //   6089: istore 37
          //   6091: aload 4
          //   6093: astore 9
          //   6095: aload_3
          //   6096: astore 10
          //   6098: iload 39
          //   6100: istore 38
          //   6102: aload 6
          //   6104: astore 18
          //   6106: aload 4
          //   6108: astore 13
          //   6110: aload_3
          //   6111: astore 14
          //   6113: aload 6
          //   6115: astore 17
          //   6117: aload 4
          //   6119: astore 11
          //   6121: aload_3
          //   6122: astore 12
          //   6124: aload 6
          //   6126: astore 5
          //   6128: aload 4
          //   6130: astore_1
          //   6131: aload_3
          //   6132: astore_2
          //   6133: aload 20
          //   6135: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
          //   6138: aload 6
          //   6140: astore 15
          //   6142: aload 4
          //   6144: astore 7
          //   6146: aload_3
          //   6147: astore 8
          //   6149: aload 6
          //   6151: astore 16
          //   6153: iload 36
          //   6155: istore 37
          //   6157: aload 4
          //   6159: astore 9
          //   6161: aload_3
          //   6162: astore 10
          //   6164: iload 39
          //   6166: istore 38
          //   6168: aload 6
          //   6170: astore 18
          //   6172: aload 4
          //   6174: astore 13
          //   6176: aload_3
          //   6177: astore 14
          //   6179: aload 6
          //   6181: astore 17
          //   6183: aload 4
          //   6185: astore 11
          //   6187: aload_3
          //   6188: astore 12
          //   6190: aload 6
          //   6192: astore 5
          //   6194: aload 4
          //   6196: astore_1
          //   6197: aload_3
          //   6198: astore_2
          //   6199: ldc -43
          //   6201: ldc_w 446
          //   6204: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   6207: pop
          //   6208: aload 6
          //   6210: astore 15
          //   6212: aload 4
          //   6214: astore 7
          //   6216: aload_3
          //   6217: astore 8
          //   6219: aload 6
          //   6221: astore 16
          //   6223: iload 36
          //   6225: istore 37
          //   6227: aload 4
          //   6229: astore 9
          //   6231: aload_3
          //   6232: astore 10
          //   6234: iload 39
          //   6236: istore 38
          //   6238: aload 6
          //   6240: astore 18
          //   6242: aload 4
          //   6244: astore 13
          //   6246: aload_3
          //   6247: astore 14
          //   6249: aload 6
          //   6251: astore 17
          //   6253: aload 4
          //   6255: astore 11
          //   6257: aload_3
          //   6258: astore 12
          //   6260: aload 6
          //   6262: astore 5
          //   6264: aload 4
          //   6266: astore_1
          //   6267: aload_3
          //   6268: astore_2
          //   6269: ldc -43
          //   6271: aload 21
          //   6273: iconst_0
          //   6274: sipush 256
          //   6277: aload 21
          //   6279: invokevirtual 448	java/lang/String:length	()I
          //   6282: invokestatic 354	java/lang/Math:min	(II)I
          //   6285: invokevirtual 452	java/lang/String:substring	(II)Ljava/lang/String;
          //   6288: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
          //   6291: pop
          //   6292: aload 6
          //   6294: astore 15
          //   6296: aload 4
          //   6298: astore 7
          //   6300: aload_3
          //   6301: astore 8
          //   6303: aload 6
          //   6305: astore 16
          //   6307: iload 36
          //   6309: istore 37
          //   6311: aload 4
          //   6313: astore 9
          //   6315: aload_3
          //   6316: astore 10
          //   6318: iload 39
          //   6320: istore 38
          //   6322: aload 6
          //   6324: astore 18
          //   6326: aload 4
          //   6328: astore 13
          //   6330: aload_3
          //   6331: astore 14
          //   6333: aload 6
          //   6335: astore 17
          //   6337: aload 4
          //   6339: astore 11
          //   6341: aload_3
          //   6342: astore 12
          //   6344: aload 6
          //   6346: astore 5
          //   6348: aload 4
          //   6350: astore_1
          //   6351: aload_3
          //   6352: astore_2
          //   6353: aload 33
          //   6355: iload 35
          //   6357: invokevirtual 455	org/apache/cordova/FileUploadResult:setResponseCode	(I)V
          //   6360: aload 6
          //   6362: astore 15
          //   6364: aload 4
          //   6366: astore 7
          //   6368: aload_3
          //   6369: astore 8
          //   6371: aload 6
          //   6373: astore 16
          //   6375: iload 36
          //   6377: istore 37
          //   6379: aload 4
          //   6381: astore 9
          //   6383: aload_3
          //   6384: astore 10
          //   6386: iload 39
          //   6388: istore 38
          //   6390: aload 6
          //   6392: astore 18
          //   6394: aload 4
          //   6396: astore 13
          //   6398: aload_3
          //   6399: astore 14
          //   6401: aload 6
          //   6403: astore 17
          //   6405: aload 4
          //   6407: astore 11
          //   6409: aload_3
          //   6410: astore 12
          //   6412: aload 6
          //   6414: astore 5
          //   6416: aload 4
          //   6418: astore_1
          //   6419: aload_3
          //   6420: astore_2
          //   6421: aload 33
          //   6423: aload 21
          //   6425: invokevirtual 458	org/apache/cordova/FileUploadResult:setResponse	(Ljava/lang/String;)V
          //   6428: aload 6
          //   6430: astore 15
          //   6432: aload 4
          //   6434: astore 7
          //   6436: aload_3
          //   6437: astore 8
          //   6439: aload 6
          //   6441: astore 16
          //   6443: iload 36
          //   6445: istore 37
          //   6447: aload 4
          //   6449: astore 9
          //   6451: aload_3
          //   6452: astore 10
          //   6454: iload 39
          //   6456: istore 38
          //   6458: aload 6
          //   6460: astore 18
          //   6462: aload 4
          //   6464: astore 13
          //   6466: aload_3
          //   6467: astore 14
          //   6469: aload 6
          //   6471: astore 17
          //   6473: aload 4
          //   6475: astore 11
          //   6477: aload_3
          //   6478: astore 12
          //   6480: aload 6
          //   6482: astore 5
          //   6484: aload 4
          //   6486: astore_1
          //   6487: aload_3
          //   6488: astore_2
          //   6489: aload_0
          //   6490: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   6493: new 319	org/apache/cordova/api/PluginResult
          //   6496: dup
          //   6497: getstatic 378	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
          //   6500: aload 33
          //   6502: invokevirtual 459	org/apache/cordova/FileUploadResult:toJSONObject	()Lorg/json/JSONObject;
          //   6505: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   6508: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   6511: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   6514: astore_1
          //   6515: aload_1
          //   6516: monitorenter
          //   6517: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   6520: aload_0
          //   6521: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   6524: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   6527: pop
          //   6528: aload_1
          //   6529: monitorexit
          //   6530: aload 6
          //   6532: ifnull -6522 -> 10
          //   6535: aload_0
          //   6536: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   6539: ifeq -6529 -> 10
          //   6542: aload_0
          //   6543: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   6546: ifeq -6536 -> 10
          //   6549: aload 6
          //   6551: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   6554: astore_1
          //   6555: aload_1
          //   6556: aload 4
          //   6558: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   6561: aload_1
          //   6562: aload_3
          //   6563: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   6566: return
          //   6567: astore_2
          //   6568: aload_1
          //   6569: monitorexit
          //   6570: aload_2
          //   6571: athrow
          //   6572: astore_2
          //   6573: aload_1
          //   6574: monitorexit
          //   6575: aload_2
          //   6576: athrow
          //   6577: astore_2
          //   6578: aload_1
          //   6579: monitorexit
          //   6580: aload_2
          //   6581: athrow
          //   6582: astore_2
          //   6583: aload_1
          //   6584: monitorexit
          //   6585: aload_2
          //   6586: athrow
          //   6587: astore_3
          //   6588: aload 17
          //   6590: astore 5
          //   6592: aload 11
          //   6594: astore_1
          //   6595: aload 12
          //   6597: astore_2
          //   6598: getstatic 388	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
          //   6601: aload_0
          //   6602: getfield 69	org/apache/cordova/FileTransfer$1:val$source	Ljava/lang/String;
          //   6605: aload_0
          //   6606: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
          //   6609: aload 17
          //   6611: invokestatic 316	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
          //   6614: astore 4
          //   6616: aload 17
          //   6618: astore 5
          //   6620: aload 11
          //   6622: astore_1
          //   6623: aload 12
          //   6625: astore_2
          //   6626: ldc -43
          //   6628: aload 4
          //   6630: invokevirtual 317	org/json/JSONObject:toString	()Ljava/lang/String;
          //   6633: aload_3
          //   6634: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
          //   6637: pop
          //   6638: aload 17
          //   6640: astore 5
          //   6642: aload 11
          //   6644: astore_1
          //   6645: aload 12
          //   6647: astore_2
          //   6648: aload_0
          //   6649: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
          //   6652: new 319	org/apache/cordova/api/PluginResult
          //   6655: dup
          //   6656: getstatic 325	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
          //   6659: aload 4
          //   6661: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
          //   6664: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
          //   6667: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   6670: astore_1
          //   6671: aload_1
          //   6672: monitorenter
          //   6673: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   6676: aload_0
          //   6677: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   6680: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   6683: pop
          //   6684: aload_1
          //   6685: monitorexit
          //   6686: aload 17
          //   6688: ifnull -6678 -> 10
          //   6691: aload_0
          //   6692: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   6695: ifeq -6685 -> 10
          //   6698: aload_0
          //   6699: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   6702: ifeq -6692 -> 10
          //   6705: aload 17
          //   6707: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   6710: astore_1
          //   6711: aload_1
          //   6712: aload 11
          //   6714: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   6717: aload_1
          //   6718: aload 12
          //   6720: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   6723: return
          //   6724: astore_2
          //   6725: aload_1
          //   6726: monitorexit
          //   6727: aload_2
          //   6728: athrow
          //   6729: astore_3
          //   6730: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   6733: astore 4
          //   6735: aload 4
          //   6737: monitorenter
          //   6738: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
          //   6741: aload_0
          //   6742: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
          //   6745: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
          //   6748: pop
          //   6749: aload 4
          //   6751: monitorexit
          //   6752: aload 5
          //   6754: ifnull +36 -> 6790
          //   6757: aload_0
          //   6758: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
          //   6761: ifeq +29 -> 6790
          //   6764: aload_0
          //   6765: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
          //   6768: ifeq +22 -> 6790
          //   6771: aload 5
          //   6773: checkcast 103	javax/net/ssl/HttpsURLConnection
          //   6776: astore 4
          //   6778: aload 4
          //   6780: aload_1
          //   6781: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
          //   6784: aload 4
          //   6786: aload_2
          //   6787: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
          //   6790: aload_3
          //   6791: athrow
          //   6792: astore_1
          //   6793: aload 4
          //   6795: monitorexit
          //   6796: aload_1
          //   6797: athrow
          //   6798: iconst_1
          //   6799: istore 35
          //   6801: iload 35
          //   6803: ifne +9 -> 6812
          //   6806: iload 36
          //   6808: iconst_m1
          //   6809: if_icmpne -3005 -> 3804
          //   6812: iconst_1
          //   6813: istore 35
          //   6815: goto -3469 -> 3346
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	6818	0	this	1
          //   6792	5	1	localObject2	Object
          //   134	3808	2	localObject3	Object
          //   4018	4	2	localObject4	Object
          //   4330	353	2	localObject5	Object
          //   4759	12	2	localObject6	Object
          //   4876	657	2	localIOException1	IOException
          //   5594	4	2	localObject7	Object
          //   5642	266	2	localObject8	Object
          //   5982	8	2	localObject9	Object
          //   6063	426	2	localJSONException1	JSONException
          //   6567	4	2	localObject10	Object
          //   6572	4	2	localObject11	Object
          //   6577	4	2	localObject12	Object
          //   6582	4	2	localObject13	Object
          //   6597	51	2	localObject14	Object
          //   6724	63	2	localSSLSocketFactory	SSLSocketFactory
          //   24	3846	3	localObject15	Object
          //   3881	683	3	localFileNotFoundException	java.io.FileNotFoundException
          //   4568	1304	3	localIOException2	IOException
          //   5876	687	3	localJSONException2	JSONException
          //   6587	47	3	localThrowable	Throwable
          //   6729	62	3	localObject16	Object
          //   127	6645	5	localObject18	Object
          //   15	6535	6	localHttpURLConnection1	HttpURLConnection
          //   75	6360	7	localObject19	Object
          //   79	6359	8	localObject20	Object
          //   91	6359	9	localObject21	Object
          //   95	6358	10	localObject22	Object
          //   119	6594	11	localObject23	Object
          //   123	6596	12	localObject24	Object
          //   107	6358	13	localObject25	Object
          //   111	6357	14	localObject26	Object
          //   71	6360	15	localObject27	Object
          //   83	6359	16	localObject28	Object
          //   115	6591	17	localObject29	Object
          //   103	6358	18	localHttpURLConnection2	HttpURLConnection
          //   26	5968	19	localObject30	Object
          //   29	592	20	localObject31	Object
          //   2007	71	20	localJSONException3	JSONException
          //   3570	775	20	localOutputStream	OutputStream
          //   4367	580	20	localCloseable1	Closeable
          //   5374	287	20	localTrackingInputStream	FileTransfer.TrackingInputStream
          //   5675	459	20	localCloseable2	Closeable
          //   32	6392	21	localObject32	Object
          //   35	4763	22	arrayOfByte1	byte[]
          //   38	4021	23	arrayOfByte2	byte[]
          //   44	494	24	localObject33	Object
          //   47	507	25	localObject34	Object
          //   50	520	26	localObject35	Object
          //   53	529	27	localObject36	Object
          //   56	537	28	localObject37	Object
          //   41	690	29	localHttpsURLConnection	HttpsURLConnection
          //   59	322	30	localObject38	Object
          //   18	244	31	localObject39	Object
          //   21	253	32	localObject40	Object
          //   142	6359	33	localFileUploadResult	FileUploadResult
          //   216	4107	34	localFileProgressResult	FileProgressResult
          //   68	6746	35	i	int
          //   2766	4044	36	j	int
          //   87	6359	37	k	int
          //   99	6358	38	m	int
          //   65	6390	39	n	int
          //   62	3775	40	i1	int
          //   2696	215	41	i2	int
          //   2762	149	42	i3	int
          //   4124	239	43	l1	long
          //   4173	188	45	l2	long
          // Exception table:
          //   from	to	target	type
          //   1485	1494	2007	org/json/JSONException
          //   1544	1554	2007	org/json/JSONException
          //   1604	1613	2007	org/json/JSONException
          //   1663	1676	2007	org/json/JSONException
          //   1726	1744	2007	org/json/JSONException
          //   1794	1815	2007	org/json/JSONException
          //   1865	1878	2007	org/json/JSONException
          //   1928	1946	2007	org/json/JSONException
          //   1996	2004	2007	org/json/JSONException
          //   135	144	3881	java/io/FileNotFoundException
          //   209	218	3881	java/io/FileNotFoundException
          //   283	296	3881	java/io/FileNotFoundException
          //   369	376	3881	java/io/FileNotFoundException
          //   449	456	3881	java/io/FileNotFoundException
          //   522	529	3881	java/io/FileNotFoundException
          //   595	601	3881	java/io/FileNotFoundException
          //   662	669	3881	java/io/FileNotFoundException
          //   730	738	3881	java/io/FileNotFoundException
          //   799	805	3881	java/io/FileNotFoundException
          //   866	872	3881	java/io/FileNotFoundException
          //   933	939	3881	java/io/FileNotFoundException
          //   1000	1009	3881	java/io/FileNotFoundException
          //   1070	1079	3881	java/io/FileNotFoundException
          //   1140	1152	3881	java/io/FileNotFoundException
          //   1218	1227	3881	java/io/FileNotFoundException
          //   1288	1295	3881	java/io/FileNotFoundException
          //   1356	1365	3881	java/io/FileNotFoundException
          //   1426	1435	3881	java/io/FileNotFoundException
          //   1485	1494	3881	java/io/FileNotFoundException
          //   1544	1554	3881	java/io/FileNotFoundException
          //   1604	1613	3881	java/io/FileNotFoundException
          //   1663	1676	3881	java/io/FileNotFoundException
          //   1726	1744	3881	java/io/FileNotFoundException
          //   1794	1815	3881	java/io/FileNotFoundException
          //   1865	1878	3881	java/io/FileNotFoundException
          //   1928	1946	3881	java/io/FileNotFoundException
          //   1996	2004	3881	java/io/FileNotFoundException
          //   2070	2083	3881	java/io/FileNotFoundException
          //   2144	2162	3881	java/io/FileNotFoundException
          //   2223	2243	3881	java/io/FileNotFoundException
          //   2304	2329	3881	java/io/FileNotFoundException
          //   2390	2415	3881	java/io/FileNotFoundException
          //   2476	2488	3881	java/io/FileNotFoundException
          //   2549	2558	3881	java/io/FileNotFoundException
          //   2619	2632	3881	java/io/FileNotFoundException
          //   2693	2698	3881	java/io/FileNotFoundException
          //   2759	2764	3881	java/io/FileNotFoundException
          //   2829	2839	3881	java/io/FileNotFoundException
          //   2900	2914	3881	java/io/FileNotFoundException
          //   2975	2981	3881	java/io/FileNotFoundException
          //   3042	3050	3881	java/io/FileNotFoundException
          //   3111	3138	3881	java/io/FileNotFoundException
          //   3199	3206	3881	java/io/FileNotFoundException
          //   3267	3275	3881	java/io/FileNotFoundException
          //   3336	3343	3881	java/io/FileNotFoundException
          //   3412	3420	3881	java/io/FileNotFoundException
          //   3481	3492	3881	java/io/FileNotFoundException
          //   3553	3558	3881	java/io/FileNotFoundException
          //   3668	3676	3881	java/io/FileNotFoundException
          //   3737	3742	3881	java/io/FileNotFoundException
          //   3871	3878	3881	java/io/FileNotFoundException
          //   4430	4438	3881	java/io/FileNotFoundException
          //   4499	4504	3881	java/io/FileNotFoundException
          //   4565	4568	3881	java/io/FileNotFoundException
          //   4877	4885	3881	java/io/FileNotFoundException
          //   4946	4951	3881	java/io/FileNotFoundException
          //   5012	5020	3881	java/io/FileNotFoundException
          //   5081	5119	3881	java/io/FileNotFoundException
          //   5180	5187	3881	java/io/FileNotFoundException
          //   5248	5275	3881	java/io/FileNotFoundException
          //   5336	5366	3881	java/io/FileNotFoundException
          //   5464	5472	3881	java/io/FileNotFoundException
          //   5533	5538	3881	java/io/FileNotFoundException
          //   5738	5746	3881	java/io/FileNotFoundException
          //   5807	5812	3881	java/io/FileNotFoundException
          //   5873	5876	3881	java/io/FileNotFoundException
          //   6064	6072	3881	java/io/FileNotFoundException
          //   6133	6138	3881	java/io/FileNotFoundException
          //   6199	6208	3881	java/io/FileNotFoundException
          //   6269	6292	3881	java/io/FileNotFoundException
          //   6353	6360	3881	java/io/FileNotFoundException
          //   6421	6428	3881	java/io/FileNotFoundException
          //   6489	6511	3881	java/io/FileNotFoundException
          //   3748	3761	4018	finally
          //   4019	4021	4018	finally
          //   3565	3572	4367	finally
          //   3580	3585	4367	finally
          //   3593	3595	4367	finally
          //   4042	4049	4367	finally
          //   4057	4064	4367	finally
          //   4072	4088	4367	finally
          //   4096	4101	4367	finally
          //   4109	4123	4367	finally
          //   4139	4147	4367	finally
          //   4155	4164	4367	finally
          //   4201	4245	4367	finally
          //   4253	4269	4367	finally
          //   4277	4291	4367	finally
          //   4299	4307	4367	finally
          //   4315	4331	4367	finally
          //   4339	4344	4367	finally
          //   4352	4360	4367	finally
          //   4770	4772	4367	finally
          //   4780	4787	4367	finally
          //   4795	4803	4367	finally
          //   4811	4816	4367	finally
          //   135	144	4568	java/io/IOException
          //   209	218	4568	java/io/IOException
          //   283	296	4568	java/io/IOException
          //   369	376	4568	java/io/IOException
          //   449	456	4568	java/io/IOException
          //   522	529	4568	java/io/IOException
          //   595	601	4568	java/io/IOException
          //   662	669	4568	java/io/IOException
          //   730	738	4568	java/io/IOException
          //   799	805	4568	java/io/IOException
          //   866	872	4568	java/io/IOException
          //   933	939	4568	java/io/IOException
          //   1000	1009	4568	java/io/IOException
          //   1070	1079	4568	java/io/IOException
          //   1140	1152	4568	java/io/IOException
          //   1218	1227	4568	java/io/IOException
          //   1288	1295	4568	java/io/IOException
          //   1356	1365	4568	java/io/IOException
          //   1426	1435	4568	java/io/IOException
          //   1485	1494	4568	java/io/IOException
          //   1544	1554	4568	java/io/IOException
          //   1604	1613	4568	java/io/IOException
          //   1663	1676	4568	java/io/IOException
          //   1726	1744	4568	java/io/IOException
          //   1794	1815	4568	java/io/IOException
          //   1865	1878	4568	java/io/IOException
          //   1928	1946	4568	java/io/IOException
          //   1996	2004	4568	java/io/IOException
          //   2070	2083	4568	java/io/IOException
          //   2144	2162	4568	java/io/IOException
          //   2223	2243	4568	java/io/IOException
          //   2304	2329	4568	java/io/IOException
          //   2390	2415	4568	java/io/IOException
          //   2476	2488	4568	java/io/IOException
          //   2549	2558	4568	java/io/IOException
          //   2619	2632	4568	java/io/IOException
          //   2693	2698	4568	java/io/IOException
          //   2759	2764	4568	java/io/IOException
          //   2829	2839	4568	java/io/IOException
          //   2900	2914	4568	java/io/IOException
          //   2975	2981	4568	java/io/IOException
          //   3042	3050	4568	java/io/IOException
          //   3111	3138	4568	java/io/IOException
          //   3199	3206	4568	java/io/IOException
          //   3267	3275	4568	java/io/IOException
          //   3336	3343	4568	java/io/IOException
          //   3412	3420	4568	java/io/IOException
          //   3481	3492	4568	java/io/IOException
          //   3553	3558	4568	java/io/IOException
          //   3668	3676	4568	java/io/IOException
          //   3737	3742	4568	java/io/IOException
          //   3871	3878	4568	java/io/IOException
          //   4430	4438	4568	java/io/IOException
          //   4499	4504	4568	java/io/IOException
          //   4565	4568	4568	java/io/IOException
          //   4877	4885	4568	java/io/IOException
          //   4946	4951	4568	java/io/IOException
          //   5012	5020	4568	java/io/IOException
          //   5081	5119	4568	java/io/IOException
          //   5180	5187	4568	java/io/IOException
          //   5248	5275	4568	java/io/IOException
          //   5336	5366	4568	java/io/IOException
          //   5464	5472	4568	java/io/IOException
          //   5533	5538	4568	java/io/IOException
          //   5738	5746	4568	java/io/IOException
          //   5807	5812	4568	java/io/IOException
          //   5873	5876	4568	java/io/IOException
          //   6064	6072	4568	java/io/IOException
          //   6133	6138	4568	java/io/IOException
          //   6199	6208	4568	java/io/IOException
          //   6269	6292	4568	java/io/IOException
          //   6353	6360	4568	java/io/IOException
          //   6421	6428	4568	java/io/IOException
          //   6489	6511	4568	java/io/IOException
          //   3595	3607	4759	finally
          //   4023	4034	4759	finally
          //   4760	4762	4759	finally
          //   5544	5557	5594	finally
          //   5595	5597	5594	finally
          //   5369	5376	5675	finally
          //   5380	5385	5675	finally
          //   5389	5391	5675	finally
          //   5614	5633	5675	finally
          //   5637	5643	5675	finally
          //   5647	5655	5675	finally
          //   5664	5672	5675	finally
          //   5989	5991	5675	finally
          //   5995	6003	5675	finally
          //   135	144	5876	org/json/JSONException
          //   209	218	5876	org/json/JSONException
          //   283	296	5876	org/json/JSONException
          //   369	376	5876	org/json/JSONException
          //   449	456	5876	org/json/JSONException
          //   522	529	5876	org/json/JSONException
          //   595	601	5876	org/json/JSONException
          //   662	669	5876	org/json/JSONException
          //   730	738	5876	org/json/JSONException
          //   799	805	5876	org/json/JSONException
          //   866	872	5876	org/json/JSONException
          //   933	939	5876	org/json/JSONException
          //   1000	1009	5876	org/json/JSONException
          //   1070	1079	5876	org/json/JSONException
          //   1140	1152	5876	org/json/JSONException
          //   1218	1227	5876	org/json/JSONException
          //   1288	1295	5876	org/json/JSONException
          //   1356	1365	5876	org/json/JSONException
          //   1426	1435	5876	org/json/JSONException
          //   2070	2083	5876	org/json/JSONException
          //   2144	2162	5876	org/json/JSONException
          //   2223	2243	5876	org/json/JSONException
          //   2304	2329	5876	org/json/JSONException
          //   2390	2415	5876	org/json/JSONException
          //   2476	2488	5876	org/json/JSONException
          //   2549	2558	5876	org/json/JSONException
          //   2619	2632	5876	org/json/JSONException
          //   2693	2698	5876	org/json/JSONException
          //   2759	2764	5876	org/json/JSONException
          //   2829	2839	5876	org/json/JSONException
          //   2900	2914	5876	org/json/JSONException
          //   2975	2981	5876	org/json/JSONException
          //   3042	3050	5876	org/json/JSONException
          //   3111	3138	5876	org/json/JSONException
          //   3199	3206	5876	org/json/JSONException
          //   3267	3275	5876	org/json/JSONException
          //   3336	3343	5876	org/json/JSONException
          //   3412	3420	5876	org/json/JSONException
          //   3481	3492	5876	org/json/JSONException
          //   3553	3558	5876	org/json/JSONException
          //   3668	3676	5876	org/json/JSONException
          //   3737	3742	5876	org/json/JSONException
          //   3871	3878	5876	org/json/JSONException
          //   4430	4438	5876	org/json/JSONException
          //   4499	4504	5876	org/json/JSONException
          //   4565	4568	5876	org/json/JSONException
          //   4877	4885	5876	org/json/JSONException
          //   4946	4951	5876	org/json/JSONException
          //   5012	5020	5876	org/json/JSONException
          //   5081	5119	5876	org/json/JSONException
          //   5180	5187	5876	org/json/JSONException
          //   5248	5275	5876	org/json/JSONException
          //   5336	5366	5876	org/json/JSONException
          //   5464	5472	5876	org/json/JSONException
          //   5533	5538	5876	org/json/JSONException
          //   5738	5746	5876	org/json/JSONException
          //   5807	5812	5876	org/json/JSONException
          //   5873	5876	5876	org/json/JSONException
          //   6064	6072	5876	org/json/JSONException
          //   6133	6138	5876	org/json/JSONException
          //   6199	6208	5876	org/json/JSONException
          //   6269	6292	5876	org/json/JSONException
          //   6353	6360	5876	org/json/JSONException
          //   6421	6428	5876	org/json/JSONException
          //   6489	6511	5876	org/json/JSONException
          //   5391	5403	5982	finally
          //   5599	5610	5982	finally
          //   5983	5985	5982	finally
          //   6517	6530	6567	finally
          //   6568	6570	6567	finally
          //   3967	3980	6572	finally
          //   6573	6575	6572	finally
          //   4708	4721	6577	finally
          //   6578	6580	6577	finally
          //   5931	5944	6582	finally
          //   6583	6585	6582	finally
          //   135	144	6587	java/lang/Throwable
          //   209	218	6587	java/lang/Throwable
          //   283	296	6587	java/lang/Throwable
          //   369	376	6587	java/lang/Throwable
          //   449	456	6587	java/lang/Throwable
          //   522	529	6587	java/lang/Throwable
          //   595	601	6587	java/lang/Throwable
          //   662	669	6587	java/lang/Throwable
          //   730	738	6587	java/lang/Throwable
          //   799	805	6587	java/lang/Throwable
          //   866	872	6587	java/lang/Throwable
          //   933	939	6587	java/lang/Throwable
          //   1000	1009	6587	java/lang/Throwable
          //   1070	1079	6587	java/lang/Throwable
          //   1140	1152	6587	java/lang/Throwable
          //   1218	1227	6587	java/lang/Throwable
          //   1288	1295	6587	java/lang/Throwable
          //   1356	1365	6587	java/lang/Throwable
          //   1426	1435	6587	java/lang/Throwable
          //   1485	1494	6587	java/lang/Throwable
          //   1544	1554	6587	java/lang/Throwable
          //   1604	1613	6587	java/lang/Throwable
          //   1663	1676	6587	java/lang/Throwable
          //   1726	1744	6587	java/lang/Throwable
          //   1794	1815	6587	java/lang/Throwable
          //   1865	1878	6587	java/lang/Throwable
          //   1928	1946	6587	java/lang/Throwable
          //   1996	2004	6587	java/lang/Throwable
          //   2070	2083	6587	java/lang/Throwable
          //   2144	2162	6587	java/lang/Throwable
          //   2223	2243	6587	java/lang/Throwable
          //   2304	2329	6587	java/lang/Throwable
          //   2390	2415	6587	java/lang/Throwable
          //   2476	2488	6587	java/lang/Throwable
          //   2549	2558	6587	java/lang/Throwable
          //   2619	2632	6587	java/lang/Throwable
          //   2693	2698	6587	java/lang/Throwable
          //   2759	2764	6587	java/lang/Throwable
          //   2829	2839	6587	java/lang/Throwable
          //   2900	2914	6587	java/lang/Throwable
          //   2975	2981	6587	java/lang/Throwable
          //   3042	3050	6587	java/lang/Throwable
          //   3111	3138	6587	java/lang/Throwable
          //   3199	3206	6587	java/lang/Throwable
          //   3267	3275	6587	java/lang/Throwable
          //   3336	3343	6587	java/lang/Throwable
          //   3412	3420	6587	java/lang/Throwable
          //   3481	3492	6587	java/lang/Throwable
          //   3553	3558	6587	java/lang/Throwable
          //   3668	3676	6587	java/lang/Throwable
          //   3737	3742	6587	java/lang/Throwable
          //   3871	3878	6587	java/lang/Throwable
          //   4430	4438	6587	java/lang/Throwable
          //   4499	4504	6587	java/lang/Throwable
          //   4565	4568	6587	java/lang/Throwable
          //   4877	4885	6587	java/lang/Throwable
          //   4946	4951	6587	java/lang/Throwable
          //   5012	5020	6587	java/lang/Throwable
          //   5081	5119	6587	java/lang/Throwable
          //   5180	5187	6587	java/lang/Throwable
          //   5248	5275	6587	java/lang/Throwable
          //   5336	5366	6587	java/lang/Throwable
          //   5464	5472	6587	java/lang/Throwable
          //   5533	5538	6587	java/lang/Throwable
          //   5738	5746	6587	java/lang/Throwable
          //   5807	5812	6587	java/lang/Throwable
          //   5873	5876	6587	java/lang/Throwable
          //   6064	6072	6587	java/lang/Throwable
          //   6133	6138	6587	java/lang/Throwable
          //   6199	6208	6587	java/lang/Throwable
          //   6269	6292	6587	java/lang/Throwable
          //   6353	6360	6587	java/lang/Throwable
          //   6421	6428	6587	java/lang/Throwable
          //   6489	6511	6587	java/lang/Throwable
          //   6673	6686	6724	finally
          //   6725	6727	6724	finally
          //   135	144	6729	finally
          //   209	218	6729	finally
          //   283	296	6729	finally
          //   369	376	6729	finally
          //   449	456	6729	finally
          //   522	529	6729	finally
          //   595	601	6729	finally
          //   662	669	6729	finally
          //   730	738	6729	finally
          //   799	805	6729	finally
          //   866	872	6729	finally
          //   933	939	6729	finally
          //   1000	1009	6729	finally
          //   1070	1079	6729	finally
          //   1140	1152	6729	finally
          //   1218	1227	6729	finally
          //   1288	1295	6729	finally
          //   1356	1365	6729	finally
          //   1426	1435	6729	finally
          //   1485	1494	6729	finally
          //   1544	1554	6729	finally
          //   1604	1613	6729	finally
          //   1663	1676	6729	finally
          //   1726	1744	6729	finally
          //   1794	1815	6729	finally
          //   1865	1878	6729	finally
          //   1928	1946	6729	finally
          //   1996	2004	6729	finally
          //   2070	2083	6729	finally
          //   2144	2162	6729	finally
          //   2223	2243	6729	finally
          //   2304	2329	6729	finally
          //   2390	2415	6729	finally
          //   2476	2488	6729	finally
          //   2549	2558	6729	finally
          //   2619	2632	6729	finally
          //   2693	2698	6729	finally
          //   2759	2764	6729	finally
          //   2829	2839	6729	finally
          //   2900	2914	6729	finally
          //   2975	2981	6729	finally
          //   3042	3050	6729	finally
          //   3111	3138	6729	finally
          //   3199	3206	6729	finally
          //   3267	3275	6729	finally
          //   3336	3343	6729	finally
          //   3412	3420	6729	finally
          //   3481	3492	6729	finally
          //   3553	3558	6729	finally
          //   3668	3676	6729	finally
          //   3737	3742	6729	finally
          //   3871	3878	6729	finally
          //   3892	3910	6729	finally
          //   3920	3932	6729	finally
          //   3942	3961	6729	finally
          //   4430	4438	6729	finally
          //   4499	4504	6729	finally
          //   4565	4568	6729	finally
          //   4579	4597	6729	finally
          //   4607	4619	6729	finally
          //   4629	4673	6729	finally
          //   4683	4702	6729	finally
          //   4877	4885	6729	finally
          //   4946	4951	6729	finally
          //   5012	5020	6729	finally
          //   5081	5119	6729	finally
          //   5180	5187	6729	finally
          //   5248	5275	6729	finally
          //   5336	5366	6729	finally
          //   5464	5472	6729	finally
          //   5533	5538	6729	finally
          //   5738	5746	6729	finally
          //   5807	5812	6729	finally
          //   5873	5876	6729	finally
          //   5887	5898	6729	finally
          //   5908	5925	6729	finally
          //   6064	6072	6729	finally
          //   6133	6138	6729	finally
          //   6199	6208	6729	finally
          //   6269	6292	6729	finally
          //   6353	6360	6729	finally
          //   6421	6428	6729	finally
          //   6489	6511	6729	finally
          //   6598	6616	6729	finally
          //   6626	6638	6729	finally
          //   6648	6667	6729	finally
          //   6738	6752	6792	finally
          //   6793	6796	6792	finally
        }
      });
      return;
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if ((paramString.equals("upload")) || (paramString.equals("download")))
    {
      String str1 = paramJSONArray.getString(0);
      String str2 = paramJSONArray.getString(1);
      if (paramString.equals("upload")) {
        try
        {
          upload(URLDecoder.decode(str1, "UTF-8"), str2, paramJSONArray, paramCallbackContext);
          return true;
        }
        catch (UnsupportedEncodingException paramString)
        {
          paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.MALFORMED_URL_EXCEPTION, "UTF-8 error."));
          return true;
        }
      }
      download(str1, str2, paramJSONArray, paramCallbackContext);
      return true;
    }
    if (paramString.equals("abort"))
    {
      abort(paramJSONArray.getString(0));
      paramCallbackContext.success();
      return true;
    }
    return false;
  }
  
  private static class ExposedGZIPInputStream
    extends GZIPInputStream
  {
    public ExposedGZIPInputStream(InputStream paramInputStream)
      throws IOException
    {
      super();
    }
    
    public Inflater getInflater()
    {
      return inf;
    }
  }
  
  private static final class RequestContext
  {
    boolean aborted;
    CallbackContext callbackContext;
    InputStream currentInputStream;
    OutputStream currentOutputStream;
    String source;
    String target;
    File targetFile;
    
    RequestContext(String paramString1, String paramString2, CallbackContext paramCallbackContext)
    {
      source = paramString1;
      target = paramString2;
      callbackContext = paramCallbackContext;
    }
    
    void sendPluginResult(PluginResult paramPluginResult)
    {
      try
      {
        if (!aborted) {
          callbackContext.sendPluginResult(paramPluginResult);
        }
        return;
      }
      finally {}
    }
  }
  
  private static class SimpleTrackingInputStream
    extends FileTransfer.TrackingInputStream
  {
    private long bytesRead = 0L;
    
    public SimpleTrackingInputStream(InputStream paramInputStream)
    {
      super();
    }
    
    private int updateBytesRead(int paramInt)
    {
      if (paramInt != -1) {
        bytesRead += paramInt;
      }
      return paramInt;
    }
    
    public long getTotalRawBytesRead()
    {
      return bytesRead;
    }
    
    public int read()
      throws IOException
    {
      return updateBytesRead(super.read());
    }
    
    public int read(byte[] paramArrayOfByte)
      throws IOException
    {
      return updateBytesRead(super.read(paramArrayOfByte));
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      return updateBytesRead(super.read(paramArrayOfByte, paramInt1, paramInt2));
    }
  }
  
  private static class TrackingGZIPInputStream
    extends FileTransfer.TrackingInputStream
  {
    private FileTransfer.ExposedGZIPInputStream gzin;
    
    public TrackingGZIPInputStream(FileTransfer.ExposedGZIPInputStream paramExposedGZIPInputStream)
      throws IOException
    {
      super();
      gzin = paramExposedGZIPInputStream;
    }
    
    public long getTotalRawBytesRead()
    {
      return gzin.getInflater().getBytesRead();
    }
  }
  
  private static abstract class TrackingInputStream
    extends FilterInputStream
  {
    public TrackingInputStream(InputStream paramInputStream)
    {
      super();
    }
    
    public abstract long getTotalRawBytesRead();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */