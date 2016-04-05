package mobi.monaca.framework.task;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.utils.MonacaConst;
import mobi.monaca.utils.MyAsyncTask;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class GCMRegistrationIdSenderTask
  extends MyAsyncTask<Void, Void, JSONObject>
{
  private static final String KEY_PREF = "gcm_pref";
  static final String KEY_PREF_ALREADY_REGISTERED = "already_registered";
  private static final String TAG = GCMRegistrationIdSenderTask.class.getSimpleName();
  private final String REGISTRATION_API_URL;
  private boolean alreadyRegistered;
  private SharedPreferences configPreference;
  private Context context;
  private String isCustom;
  private String regId;
  
  public GCMRegistrationIdSenderTask(Context paramContext, String paramString1, String paramString2)
  {
    context = paramContext;
    regId = paramString2;
    configPreference = paramContext.getSharedPreferences("gcm_pref", 0);
    REGISTRATION_API_URL = paramString1;
    isCustom = MonacaConst.getIsCustom(paramContext);
    alreadyRegistered = configPreference.getBoolean("already_registered" + paramString2, false);
  }
  
  public static void clearAlreadyRegisteredPreference(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("gcm_pref", 0).edit();
    paramContext.putBoolean("already_registered" + paramString, false);
    paramContext.commit();
  }
  
  private void preOnFailedRegistration(JSONObject paramJSONObject)
  {
    onFailedRegistration(paramJSONObject);
  }
  
  private void preOnSucceededRegistration(JSONObject paramJSONObject)
  {
    SharedPreferences.Editor localEditor = configPreference.edit();
    localEditor.putBoolean("already_registered" + regId, true);
    localEditor.commit();
    onSucceededRegistration(paramJSONObject);
  }
  
  public void cancel(boolean paramBoolean)
  {
    onClosedTask();
    super.cancel(paramBoolean);
  }
  
  /* Error */
  protected final JSONObject doInBackground(Void... paramVarArgs)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 77	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:alreadyRegistered	Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: getfield 39	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:context	Landroid/content/Context;
    //   13: invokevirtual 130	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   16: aload_0
    //   17: getfield 39	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:context	Landroid/content/Context;
    //   20: invokevirtual 133	android/content/Context:getPackageName	()Ljava/lang/String;
    //   23: iconst_0
    //   24: invokevirtual 139	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   27: getfield 145	android/content/pm/PackageInfo:versionCode	I
    //   30: istore 5
    //   32: new 147	java/util/ArrayList
    //   35: dup
    //   36: invokespecial 148	java/util/ArrayList:<init>	()V
    //   39: astore_3
    //   40: aload_3
    //   41: new 150	org/apache/http/message/BasicNameValuePair
    //   44: dup
    //   45: getstatic 155	mobi/monaca/framework/psedo/R$string:key_platform	I
    //   48: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   51: getstatic 164	mobi/monaca/framework/psedo/R$string:android	I
    //   54: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   57: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: invokeinterface 173 2 0
    //   65: pop
    //   66: aload_3
    //   67: new 150	org/apache/http/message/BasicNameValuePair
    //   70: dup
    //   71: getstatic 176	mobi/monaca/framework/psedo/R$string:key_deviceid	I
    //   74: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   77: aload_0
    //   78: getfield 39	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:context	Landroid/content/Context;
    //   81: invokestatic 181	mobi/monaca/utils/MonacaDevice:getDeviceId	(Landroid/content/Context;)Ljava/lang/String;
    //   84: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: invokeinterface 173 2 0
    //   92: pop
    //   93: aload_3
    //   94: new 150	org/apache/http/message/BasicNameValuePair
    //   97: dup
    //   98: getstatic 184	mobi/monaca/framework/psedo/R$string:key_iscustom	I
    //   101: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   104: aload_0
    //   105: getfield 59	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:isCustom	Ljava/lang/String;
    //   108: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   111: invokeinterface 173 2 0
    //   116: pop
    //   117: aload_3
    //   118: new 150	org/apache/http/message/BasicNameValuePair
    //   121: dup
    //   122: getstatic 187	mobi/monaca/framework/psedo/R$string:key_version	I
    //   125: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   128: iload 5
    //   130: invokestatic 191	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   133: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: invokeinterface 173 2 0
    //   141: pop
    //   142: aload_3
    //   143: new 150	org/apache/http/message/BasicNameValuePair
    //   146: dup
    //   147: getstatic 194	mobi/monaca/framework/psedo/R$string:key_registrationid	I
    //   150: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   153: aload_0
    //   154: getfield 41	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:regId	Ljava/lang/String;
    //   157: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: invokeinterface 173 2 0
    //   165: pop
    //   166: aload_3
    //   167: new 150	org/apache/http/message/BasicNameValuePair
    //   170: dup
    //   171: getstatic 197	mobi/monaca/framework/psedo/R$string:key_packagename	I
    //   174: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   177: aload_0
    //   178: getfield 39	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:context	Landroid/content/Context;
    //   181: invokevirtual 133	android/content/Context:getPackageName	()Ljava/lang/String;
    //   184: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   187: invokeinterface 173 2 0
    //   192: pop
    //   193: aload_3
    //   194: new 150	org/apache/http/message/BasicNameValuePair
    //   197: dup
    //   198: getstatic 200	mobi/monaca/framework/psedo/R$string:key_buildtype	I
    //   201: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   204: getstatic 203	mobi/monaca/framework/psedo/R$string:release	I
    //   207: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   210: invokespecial 167	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   213: invokeinterface 173 2 0
    //   218: pop
    //   219: new 205	java/net/URL
    //   222: dup
    //   223: aload_0
    //   224: getfield 51	mobi/monaca/framework/task/GCMRegistrationIdSenderTask:REGISTRATION_API_URL	Ljava/lang/String;
    //   227: invokespecial 208	java/net/URL:<init>	(Ljava/lang/String;)V
    //   230: invokevirtual 212	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   233: checkcast 214	java/net/HttpURLConnection
    //   236: astore_1
    //   237: aload_1
    //   238: iconst_1
    //   239: invokevirtual 217	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   242: aload_1
    //   243: sipush 10000
    //   246: invokevirtual 221	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   249: aload_1
    //   250: invokevirtual 225	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   253: astore_2
    //   254: aload_3
    //   255: invokestatic 231	mobi/monaca/utils/APIUtil:getQuery	(Ljava/util/List;)Ljava/lang/String;
    //   258: astore_3
    //   259: new 233	java/io/PrintStream
    //   262: dup
    //   263: aload_2
    //   264: invokespecial 236	java/io/PrintStream:<init>	(Ljava/io/OutputStream;)V
    //   267: astore 4
    //   269: aload 4
    //   271: aload_3
    //   272: invokevirtual 239	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   275: aload 4
    //   277: invokevirtual 242	java/io/PrintStream:close	()V
    //   280: aload_2
    //   281: invokevirtual 245	java/io/OutputStream:close	()V
    //   284: aload_1
    //   285: invokevirtual 248	java/net/HttpURLConnection:connect	()V
    //   288: new 250	org/json/JSONObject
    //   291: dup
    //   292: aload_1
    //   293: invokevirtual 254	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   296: invokestatic 259	org/apache/commons/io/IOUtils:toString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   299: invokespecial 260	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   302: getstatic 263	mobi/monaca/framework/psedo/R$string:key_responcecode	I
    //   305: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   308: aload_1
    //   309: invokevirtual 267	java/net/HttpURLConnection:getResponseCode	()I
    //   312: invokevirtual 271	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   315: astore_2
    //   316: aload_2
    //   317: areturn
    //   318: astore_2
    //   319: new 250	org/json/JSONObject
    //   322: dup
    //   323: invokespecial 272	org/json/JSONObject:<init>	()V
    //   326: astore_2
    //   327: aload_2
    //   328: getstatic 275	mobi/monaca/framework/psedo/R$string:key_status	I
    //   331: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   334: getstatic 278	mobi/monaca/framework/psedo/R$string:value_nostatus	I
    //   337: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   340: invokevirtual 281	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   343: pop
    //   344: aload_2
    //   345: getstatic 263	mobi/monaca/framework/psedo/R$string:key_responcecode	I
    //   348: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   351: aload_1
    //   352: invokevirtual 267	java/net/HttpURLConnection:getResponseCode	()I
    //   355: invokevirtual 271	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   358: pop
    //   359: aload_2
    //   360: areturn
    //   361: astore_1
    //   362: aload_1
    //   363: invokevirtual 284	java/net/MalformedURLException:printStackTrace	()V
    //   366: new 250	org/json/JSONObject
    //   369: dup
    //   370: invokespecial 272	org/json/JSONObject:<init>	()V
    //   373: astore_1
    //   374: aload_1
    //   375: getstatic 275	mobi/monaca/framework/psedo/R$string:key_status	I
    //   378: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   381: getstatic 287	mobi/monaca/framework/psedo/R$string:value_failed_with_exception	I
    //   384: invokestatic 161	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   387: invokevirtual 281	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   390: pop
    //   391: aload_1
    //   392: areturn
    //   393: astore_2
    //   394: aload_1
    //   395: areturn
    //   396: astore_1
    //   397: aload_1
    //   398: invokevirtual 288	org/json/JSONException:printStackTrace	()V
    //   401: goto -35 -> 366
    //   404: astore_1
    //   405: aload_1
    //   406: invokevirtual 289	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   409: goto -43 -> 366
    //   412: astore_1
    //   413: aload_1
    //   414: invokevirtual 290	java/io/IOException:printStackTrace	()V
    //   417: goto -51 -> 366
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	420	0	this	GCMRegistrationIdSenderTask
    //   0	420	1	paramVarArgs	Void[]
    //   253	64	2	localObject1	Object
    //   318	1	2	localException	Exception
    //   326	34	2	localJSONObject	JSONObject
    //   393	1	2	localJSONException	JSONException
    //   39	233	3	localObject2	Object
    //   267	9	4	localPrintStream	java.io.PrintStream
    //   30	99	5	i	int
    // Exception table:
    //   from	to	target	type
    //   288	316	318	java/lang/Exception
    //   9	288	361	java/net/MalformedURLException
    //   288	316	361	java/net/MalformedURLException
    //   319	359	361	java/net/MalformedURLException
    //   374	391	393	org/json/JSONException
    //   9	288	396	org/json/JSONException
    //   288	316	396	org/json/JSONException
    //   319	359	396	org/json/JSONException
    //   9	288	404	android/content/pm/PackageManager$NameNotFoundException
    //   288	316	404	android/content/pm/PackageManager$NameNotFoundException
    //   319	359	404	android/content/pm/PackageManager$NameNotFoundException
    //   9	288	412	java/io/IOException
    //   288	316	412	java/io/IOException
    //   319	359	412	java/io/IOException
  }
  
  protected abstract void onClosedTask();
  
  protected abstract void onFailedRegistration(JSONObject paramJSONObject);
  
  protected final void onPostExecute(JSONObject paramJSONObject)
  {
    if (alreadyRegistered) {}
    for (;;)
    {
      onClosedTask();
      return;
      try
      {
        if (!paramJSONObject.get(MonacaApplication.getStringFromResource(R.string.key_status)).equals(MonacaApplication.getStringFromResource(R.string.value_ok))) {
          break label51;
        }
        preOnSucceededRegistration(paramJSONObject);
      }
      catch (JSONException localJSONException)
      {
        preOnFailedRegistration(paramJSONObject);
      }
      continue;
      label51:
      if (paramJSONObject.get(MonacaApplication.getStringFromResource(R.string.key_status)).equals(MonacaApplication.getStringFromResource(R.string.value_nostatus)))
      {
        if (paramJSONObject.getInt(MonacaApplication.getStringFromResource(R.string.key_responcecode)) == 200) {
          preOnSucceededRegistration(paramJSONObject);
        } else {
          preOnFailedRegistration(paramJSONObject);
        }
      }
      else {
        preOnFailedRegistration(paramJSONObject);
      }
    }
  }
  
  protected abstract void onSucceededRegistration(JSONObject paramJSONObject);
  
  public GCMRegistrationIdSenderTask setIsCustom(String paramString)
  {
    isCustom = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.task.GCMRegistrationIdSenderTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */