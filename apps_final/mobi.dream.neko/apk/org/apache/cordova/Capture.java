package org.apache.cordova;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Capture
  extends CordovaPlugin
{
  private static final String AUDIO_3GPP = "audio/3gpp";
  private static final int CAPTURE_AUDIO = 0;
  private static final int CAPTURE_IMAGE = 1;
  private static final int CAPTURE_INTERNAL_ERR = 0;
  private static final int CAPTURE_NO_MEDIA_FILES = 3;
  private static final int CAPTURE_VIDEO = 2;
  private static final String IMAGE_JPEG = "image/jpeg";
  private static final String LOG_TAG = "Capture";
  private static final String VIDEO_3GPP = "video/3gpp";
  private static final String VIDEO_MP4 = "video/mp4";
  private CallbackContext callbackContext;
  private int duration;
  private long limit;
  private int numPics;
  private JSONArray results;
  
  private void captureAudio()
  {
    Intent localIntent = new Intent("android.provider.MediaStore.RECORD_SOUND");
    cordova.startActivityForResult(this, localIntent, 0);
  }
  
  private void captureImage()
  {
    numPics = queryImgDB(whichContentStore()).getCount();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", Uri.fromFile(new File(DirectoryManager.getTempDirectoryPath(cordova.getActivity()), "Capture.jpg")));
    cordova.startActivityForResult(this, localIntent, 1);
  }
  
  private void captureVideo(int paramInt)
  {
    Intent localIntent = new Intent("android.media.action.VIDEO_CAPTURE");
    if (Build.VERSION.SDK_INT > 7) {
      localIntent.putExtra("android.intent.extra.durationLimit", paramInt);
    }
    cordova.startActivityForResult(this, localIntent, 2);
  }
  
  private void checkForDuplicateImage()
  {
    Uri localUri = whichContentStore();
    Cursor localCursor = queryImgDB(localUri);
    if (localCursor.getCount() - numPics == 2)
    {
      localCursor.moveToLast();
      int i = Integer.valueOf(localCursor.getString(localCursor.getColumnIndex("_id"))).intValue();
      localUri = Uri.parse(localUri + "/" + (i - 1));
      cordova.getActivity().getContentResolver().delete(localUri, null, null);
    }
  }
  
  private JSONObject createErrorObject(int paramInt, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("code", paramInt);
      localJSONObject.put("message", paramString);
      return localJSONObject;
    }
    catch (JSONException paramString) {}
    return localJSONObject;
  }
  
  private JSONObject createMediaFile(Uri paramUri)
  {
    File localFile = new File(FileHelper.getRealPath(paramUri, cordova));
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        localJSONObject.put("name", localFile.getName());
        localJSONObject.put("fullPath", "file://" + localFile.getAbsolutePath());
        if ((localFile.getAbsoluteFile().toString().endsWith(".3gp")) || (localFile.getAbsoluteFile().toString().endsWith(".3gpp")))
        {
          if (paramUri.toString().contains("/audio/"))
          {
            localJSONObject.put("type", "audio/3gpp");
            localJSONObject.put("lastModifiedDate", localFile.lastModified());
            localJSONObject.put("size", localFile.length());
            return localJSONObject;
          }
          localJSONObject.put("type", "video/3gpp");
          continue;
        }
        localJSONObject.put("type", FileHelper.getMimeType(localFile.getAbsolutePath(), cordova));
      }
      catch (JSONException paramUri)
      {
        paramUri.printStackTrace();
        return localJSONObject;
      }
    }
  }
  
  private JSONObject getAudioVideoData(String paramString, JSONObject paramJSONObject, boolean paramBoolean)
    throws JSONException
  {
    MediaPlayer localMediaPlayer = new MediaPlayer();
    try
    {
      localMediaPlayer.setDataSource(paramString);
      localMediaPlayer.prepare();
      paramJSONObject.put("duration", localMediaPlayer.getDuration() / 1000);
      if (paramBoolean)
      {
        paramJSONObject.put("height", localMediaPlayer.getVideoHeight());
        paramJSONObject.put("width", localMediaPlayer.getVideoWidth());
      }
      return paramJSONObject;
    }
    catch (IOException paramString)
    {
      Log.d("Capture", "Error: loading video file");
    }
    return paramJSONObject;
  }
  
  private JSONObject getFormatData(String paramString1, String paramString2)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("height", 0);
    localJSONObject.put("width", 0);
    localJSONObject.put("bitrate", 0);
    localJSONObject.put("duration", 0);
    localJSONObject.put("codecs", "");
    String str;
    if ((paramString2 != null) && (!paramString2.equals("")))
    {
      str = paramString2;
      if (!"null".equals(paramString2)) {}
    }
    else
    {
      str = FileHelper.getMimeType(paramString1, cordova);
    }
    Log.d("Capture", "Mime type = " + str);
    if ((str.equals("image/jpeg")) || (paramString1.endsWith(".jpg"))) {
      paramString2 = getImageData(paramString1, localJSONObject);
    }
    do
    {
      return paramString2;
      if (str.endsWith("audio/3gpp")) {
        return getAudioVideoData(paramString1, localJSONObject, false);
      }
      if (str.equals("video/3gpp")) {
        break;
      }
      paramString2 = localJSONObject;
    } while (!str.equals("video/mp4"));
    return getAudioVideoData(paramString1, localJSONObject, true);
  }
  
  private JSONObject getImageData(String paramString, JSONObject paramJSONObject)
    throws JSONException
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(FileHelper.stripFileProtocol(paramString), localOptions);
    paramJSONObject.put("height", outHeight);
    paramJSONObject.put("width", outWidth);
    return paramJSONObject;
  }
  
  private Cursor queryImgDB(Uri paramUri)
  {
    return cordova.getActivity().getContentResolver().query(paramUri, new String[] { "_id" }, null, null, null);
  }
  
  private Uri whichContentStore()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {
      return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }
    return MediaStore.Images.Media.INTERNAL_CONTENT_URI;
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    callbackContext = paramCallbackContext;
    limit = 1L;
    duration = 0;
    results = new JSONArray();
    JSONObject localJSONObject = paramJSONArray.optJSONObject(0);
    if (localJSONObject != null)
    {
      limit = localJSONObject.optLong("limit", 1L);
      duration = localJSONObject.optInt("duration", 0);
    }
    if (paramString.equals("getFormatData"))
    {
      paramCallbackContext.success(getFormatData(paramJSONArray.getString(0), paramJSONArray.getString(1)));
      return true;
    }
    if (paramString.equals("captureAudio"))
    {
      captureAudio();
      return true;
    }
    if (paramString.equals("captureImage"))
    {
      captureImage();
      return true;
    }
    if (paramString.equals("captureVideo"))
    {
      captureVideo(duration);
      return true;
    }
    return false;
  }
  
  public void fail(JSONObject paramJSONObject)
  {
    callbackContext.error(paramJSONObject);
  }
  
  /* Error */
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_2
    //   1: iconst_m1
    //   2: if_icmpne +438 -> 440
    //   5: iload_1
    //   6: ifne +64 -> 70
    //   9: aload_3
    //   10: invokevirtual 425	android/content/Intent:getData	()Landroid/net/Uri;
    //   13: astore_3
    //   14: aload_0
    //   15: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   18: aload_0
    //   19: aload_3
    //   20: invokespecial 427	org/apache/cordova/Capture:createMediaFile	(Landroid/net/Uri;)Lorg/json/JSONObject;
    //   23: invokevirtual 430	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   26: pop
    //   27: aload_0
    //   28: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   31: invokevirtual 432	org/json/JSONArray:length	()I
    //   34: i2l
    //   35: aload_0
    //   36: getfield 375	org/apache/cordova/Capture:limit	J
    //   39: lcmp
    //   40: iflt +25 -> 65
    //   43: aload_0
    //   44: getfield 373	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   47: new 434	org/apache/cordova/api/PluginResult
    //   50: dup
    //   51: getstatic 440	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   54: aload_0
    //   55: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   58: invokespecial 443	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   61: invokevirtual 447	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   64: return
    //   65: aload_0
    //   66: invokespecial 408	org/apache/cordova/Capture:captureAudio	()V
    //   69: return
    //   70: iload_1
    //   71: iconst_1
    //   72: if_icmpne +281 -> 353
    //   75: new 449	android/content/ContentValues
    //   78: dup
    //   79: invokespecial 450	android/content/ContentValues:<init>	()V
    //   82: astore 4
    //   84: aload 4
    //   86: ldc_w 452
    //   89: ldc 21
    //   91: invokevirtual 454	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 55	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   98: invokeinterface 88 1 0
    //   103: invokevirtual 176	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   106: getstatic 366	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   109: aload 4
    //   111: invokevirtual 458	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   114: astore_3
    //   115: new 460	java/io/FileInputStream
    //   118: dup
    //   119: new 149	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   126: aload_0
    //   127: getfield 55	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   130: invokeinterface 88 1 0
    //   135: invokestatic 94	org/apache/cordova/DirectoryManager:getTempDirectoryPath	(Landroid/content/Context;)Ljava/lang/String;
    //   138: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc_w 462
    //   144: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokespecial 463	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   153: astore 4
    //   155: aload_0
    //   156: getfield 55	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   159: invokeinterface 88 1 0
    //   164: invokevirtual 176	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   167: aload_3
    //   168: invokevirtual 467	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   171: astore 5
    //   173: sipush 4096
    //   176: newarray <illegal type>
    //   178: astore 6
    //   180: aload 4
    //   182: aload 6
    //   184: invokevirtual 471	java/io/FileInputStream:read	([B)I
    //   187: istore_1
    //   188: iload_1
    //   189: iconst_m1
    //   190: if_icmpeq +88 -> 278
    //   193: aload 5
    //   195: aload 6
    //   197: iconst_0
    //   198: iload_1
    //   199: invokevirtual 477	java/io/OutputStream:write	([BII)V
    //   202: goto -22 -> 180
    //   205: astore_3
    //   206: aload_3
    //   207: invokevirtual 478	java/io/IOException:printStackTrace	()V
    //   210: aload_0
    //   211: aload_0
    //   212: iconst_0
    //   213: ldc_w 480
    //   216: invokespecial 482	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   219: invokevirtual 484	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   222: return
    //   223: astore_3
    //   224: ldc 24
    //   226: ldc_w 486
    //   229: invokestatic 490	org/apache/cordova/api/LOG:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload_0
    //   233: getfield 55	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   236: invokeinterface 88 1 0
    //   241: invokevirtual 176	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   244: getstatic 369	android/provider/MediaStore$Images$Media:INTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   247: aload 4
    //   249: invokevirtual 458	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   252: astore_3
    //   253: goto -138 -> 115
    //   256: astore_3
    //   257: ldc 24
    //   259: ldc_w 492
    //   262: invokestatic 490	org/apache/cordova/api/LOG:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   265: aload_0
    //   266: aload_0
    //   267: iconst_0
    //   268: ldc_w 494
    //   271: invokespecial 482	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   274: invokevirtual 484	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   277: return
    //   278: aload 5
    //   280: invokevirtual 497	java/io/OutputStream:flush	()V
    //   283: aload 5
    //   285: invokevirtual 500	java/io/OutputStream:close	()V
    //   288: aload 4
    //   290: invokevirtual 501	java/io/FileInputStream:close	()V
    //   293: aload_0
    //   294: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   297: aload_0
    //   298: aload_3
    //   299: invokespecial 427	org/apache/cordova/Capture:createMediaFile	(Landroid/net/Uri;)Lorg/json/JSONObject;
    //   302: invokevirtual 430	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   305: pop
    //   306: aload_0
    //   307: invokespecial 503	org/apache/cordova/Capture:checkForDuplicateImage	()V
    //   310: aload_0
    //   311: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   314: invokevirtual 432	org/json/JSONArray:length	()I
    //   317: i2l
    //   318: aload_0
    //   319: getfield 375	org/apache/cordova/Capture:limit	J
    //   322: lcmp
    //   323: iflt +25 -> 348
    //   326: aload_0
    //   327: getfield 373	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   330: new 434	org/apache/cordova/api/PluginResult
    //   333: dup
    //   334: getstatic 440	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   337: aload_0
    //   338: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   341: invokespecial 443	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   344: invokevirtual 447	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   347: return
    //   348: aload_0
    //   349: invokespecial 411	org/apache/cordova/Capture:captureImage	()V
    //   352: return
    //   353: iload_1
    //   354: iconst_2
    //   355: if_icmpne -291 -> 64
    //   358: aload_3
    //   359: invokevirtual 425	android/content/Intent:getData	()Landroid/net/Uri;
    //   362: astore_3
    //   363: aload_3
    //   364: ifnonnull +16 -> 380
    //   367: aload_0
    //   368: aload_0
    //   369: iconst_3
    //   370: ldc_w 505
    //   373: invokespecial 482	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   376: invokevirtual 484	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   379: return
    //   380: aload_0
    //   381: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   384: aload_0
    //   385: aload_3
    //   386: invokespecial 427	org/apache/cordova/Capture:createMediaFile	(Landroid/net/Uri;)Lorg/json/JSONObject;
    //   389: invokevirtual 430	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   392: pop
    //   393: aload_0
    //   394: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   397: invokevirtual 432	org/json/JSONArray:length	()I
    //   400: i2l
    //   401: aload_0
    //   402: getfield 375	org/apache/cordova/Capture:limit	J
    //   405: lcmp
    //   406: iflt +25 -> 431
    //   409: aload_0
    //   410: getfield 373	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   413: new 434	org/apache/cordova/api/PluginResult
    //   416: dup
    //   417: getstatic 440	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   420: aload_0
    //   421: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   424: invokespecial 443	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   427: invokevirtual 447	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   430: return
    //   431: aload_0
    //   432: aload_0
    //   433: getfield 377	org/apache/cordova/Capture:duration	I
    //   436: invokespecial 414	org/apache/cordova/Capture:captureVideo	(I)V
    //   439: return
    //   440: iload_2
    //   441: ifne +48 -> 489
    //   444: aload_0
    //   445: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   448: invokevirtual 432	org/json/JSONArray:length	()I
    //   451: ifle +25 -> 476
    //   454: aload_0
    //   455: getfield 373	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   458: new 434	org/apache/cordova/api/PluginResult
    //   461: dup
    //   462: getstatic 440	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   465: aload_0
    //   466: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   469: invokespecial 443	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   472: invokevirtual 447	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   475: return
    //   476: aload_0
    //   477: aload_0
    //   478: iconst_3
    //   479: ldc_w 507
    //   482: invokespecial 482	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   485: invokevirtual 484	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   488: return
    //   489: aload_0
    //   490: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   493: invokevirtual 432	org/json/JSONArray:length	()I
    //   496: ifle +25 -> 521
    //   499: aload_0
    //   500: getfield 373	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   503: new 434	org/apache/cordova/api/PluginResult
    //   506: dup
    //   507: getstatic 440	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   510: aload_0
    //   511: getfield 382	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   514: invokespecial 443	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   517: invokevirtual 447	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   520: return
    //   521: aload_0
    //   522: aload_0
    //   523: iconst_3
    //   524: ldc_w 509
    //   527: invokespecial 482	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   530: invokevirtual 484	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   533: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	534	0	this	Capture
    //   0	534	1	paramInt1	int
    //   0	534	2	paramInt2	int
    //   0	534	3	paramIntent	Intent
    //   82	207	4	localObject	Object
    //   171	113	5	localOutputStream	java.io.OutputStream
    //   178	18	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   75	94	205	java/io/IOException
    //   94	115	205	java/io/IOException
    //   115	180	205	java/io/IOException
    //   180	188	205	java/io/IOException
    //   193	202	205	java/io/IOException
    //   224	232	205	java/io/IOException
    //   232	253	205	java/io/IOException
    //   257	277	205	java/io/IOException
    //   278	347	205	java/io/IOException
    //   348	352	205	java/io/IOException
    //   94	115	223	java/lang/UnsupportedOperationException
    //   232	253	256	java/lang/UnsupportedOperationException
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Capture
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */