package com.inmobi.re.controller;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.Vibrator;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.commons.metric.Logger;
import com.inmobi.re.configs.ConfigParams;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.mraidimpl.AudioTriggerCallback;
import com.inmobi.re.container.mraidimpl.AudioTriggerer;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class JSUtilityController
  extends JSController
{
  public static SimpleDateFormat[] calendarUntiFormats = { new SimpleDateFormat("yyyyMMdd'T'HHmmssZ"), new SimpleDateFormat("yyyyMMdd'T'HHmm"), new SimpleDateFormat("yyyyMMdd") };
  public static SimpleDateFormat[] formats = { new SimpleDateFormat("yyyy-MM-dd'T'hh:mmZ", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssz", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH), new SimpleDateFormat("yyyyMMddHHmmssZ", Locale.ENGLISH), new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH), new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH), new SimpleDateFormat("yyyyMM", Locale.ENGLISH), new SimpleDateFormat("yyyy", Locale.ENGLISH) };
  DownloadManager a = null;
  Object b;
  int c = 0;
  private JSDisplayController d;
  private boolean e = false;
  private Map<String, Boolean> f = new HashMap();
  private AudioTriggerCallback g = new d(this);
  private boolean h = false;
  private boolean i = false;
  
  public JSUtilityController(IMWebView paramIMWebView, Context paramContext)
  {
    super(paramIMWebView, paramContext);
    d = new JSDisplayController(paramIMWebView, paramContext);
    paramIMWebView.addJavascriptInterface(d, "displayController");
  }
  
  private int a()
  {
    Object localObject = new String[2];
    localObject[0] = "_id";
    localObject[1] = "title";
    if (Build.VERSION.SDK_INT >= 8) {}
    for (localObject = imWebView.getActivity().getContentResolver().query(Uri.parse("content://com.android.calendar/events"), (String[])localObject, null, null, null); (localObject != null) && (((Cursor)localObject).moveToLast()); localObject = imWebView.getActivity().getContentResolver().query(Uri.parse("content://calendar/events"), (String[])localObject, null, null, null))
    {
      int j = ((Cursor)localObject).getColumnIndex("title");
      int k = ((Cursor)localObject).getColumnIndex("_id");
      String str = ((Cursor)localObject).getString(j);
      localObject = ((Cursor)localObject).getString(k);
      if (str == null) {
        break;
      }
      return Integer.parseInt((String)localObject);
    }
    return 0;
  }
  
  private int a(String paramString, int paramInt)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      return j;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  private String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      localObject = null;
    }
    do
    {
      return (String)localObject;
      localObject = paramString;
    } while (paramString.startsWith("tel:"));
    Object localObject = new StringBuilder("tel:");
    ((StringBuilder)localObject).append(paramString);
    return ((StringBuilder)localObject).toString();
  }
  
  private int[] b()
  {
    int[] arrayOfInt = new int[2];
    try
    {
      FrameLayout localFrameLayout = (FrameLayout)((ViewGroup)imWebView.getOriginalParent()).getRootView().findViewById(16908290);
      arrayOfInt[0] = ((int)(localFrameLayout.getWidth() / imWebView.getDensity()));
      arrayOfInt[1] = ((int)(localFrameLayout.getHeight() / imWebView.getDensity()));
      return arrayOfInt;
    }
    catch (Exception localException)
    {
      arrayOfInt[1] = 0;
      arrayOfInt[0] = 0;
    }
    return arrayOfInt;
  }
  
  private void c()
  {
    if (i) {
      registerMicListener();
    }
  }
  
  private void c(String paramString)
  {
    new JSUtilityController.d(this, paramString).start();
  }
  
  public static GregorianCalendar convertDateString(String paramString)
  {
    SimpleDateFormat[] arrayOfSimpleDateFormat = formats;
    int k = arrayOfSimpleDateFormat.length;
    int j = 0;
    while (j < k)
    {
      Object localObject = arrayOfSimpleDateFormat[j];
      try
      {
        localObject = ((SimpleDateFormat)localObject).parse(paramString);
        GregorianCalendar localGregorianCalendar = new GregorianCalendar();
        localGregorianCalendar.setTime((Date)localObject);
        localObject = (GregorianCalendar)localGregorianCalendar;
        return (GregorianCalendar)localObject;
      }
      catch (Exception localException)
      {
        j += 1;
      }
    }
    return null;
  }
  
  private void d()
  {
    i = h;
    unRegisterMicListener();
  }
  
  boolean a(String paramString)
  {
    PackageManager localPackageManager = imWebView.getActivity().getPackageManager();
    return localPackageManager.checkPermission(paramString, localPackageManager.getNameForUid(Binder.getCallingUid())) == 0;
  }
  
  @JavascriptInterface
  public void asyncPing(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(31), null));
    try
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> asyncPing: url: " + paramString);
      if (!URLUtil.isValidUrl(paramString))
      {
        imWebView.raiseError("Invalid url", "asyncPing");
        return;
      }
      c(paramString);
      return;
    }
    catch (Exception paramString) {}
  }
  
  @JavascriptInterface
  public void cancelSaveContent(String paramString)
  {
    imWebView.cancelSaveContent(paramString);
  }
  
  @JavascriptInterface
  public void closeVideo(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(50), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> closeVideo: id :" + paramString);
    imWebView.closeVideo(paramString);
  }
  
  @JavascriptInterface
  public void createCalendarEvent(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    GregorianCalendar localGregorianCalendar;
    try
    {
      if ((a("android.permission.READ_CALENDAR")) && (a("android.permission.WRITE_CALENDAR"))) {
        c = a();
      }
      ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(30), null));
      Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> createEvent: date: " + paramString2 + " location: " + paramString4 + " body: " + paramString5);
      if (!supports("calendar"))
      {
        Log.internal("[InMobi]-[RE]-4.4.1", "createCalendarEvent called even if it is not supported");
        imWebView.raiseError("createCalendarEvent called even if it is not supported", "createCalendarEvent");
        return;
      }
      localGregorianCalendar = convertDateString(paramString2);
      paramString3 = convertDateString(paramString3);
      if ((localGregorianCalendar == null) || (paramString3 == null))
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "exception");
        imWebView.raiseError("Date format is incorrect", "createCalendarEvent");
        return;
      }
    }
    catch (Exception paramString1)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Error creating reminder event", paramString1);
      return;
    }
    Intent localIntent = new Intent(imWebView.getActivity(), IMBrowserActivity.class);
    localIntent.putExtra("extra_browser_type", 100);
    localIntent.putExtra("id", IMBrowserActivity.generateId(new JSUtilityController.e(this, paramString7, paramString10, paramString2)));
    localIntent.putExtra("eventId", paramString1);
    localIntent.putExtra("action", "createCalendarEvent");
    localIntent.putExtra("description", paramString5);
    localIntent.putExtra("summary", paramString6);
    localIntent.putExtra("location", paramString4);
    localIntent.putExtra("start", localGregorianCalendar.getTimeInMillis());
    localIntent.putExtra("end", paramString3.getTimeInMillis());
    localIntent.putExtra("status", paramString7);
    localIntent.putExtra("transparency", paramString8);
    localIntent.putExtra("recurrence", paramString9);
    if ((paramString10 != null) && (!"".equals(paramString10))) {
      localIntent.putExtra("hasAlarm", true);
    }
    imWebView.getActivity().startActivity(localIntent);
    if (imWebView.mListener != null) {
      imWebView.mListener.onLeaveApplication();
    }
  }
  
  @JavascriptInterface
  public int getAudioVolume(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(37), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> getAudioVolume: ");
    return imWebView.getAudioVolume(paramString);
  }
  
  @JavascriptInterface
  public String getCurrentPosition()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(18), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> getCurrentPosition");
    synchronized (imWebView.mutexcPos)
    {
      imWebView.sendToCPHandler();
      for (;;)
      {
        boolean bool = imWebView.acqMutexcPos.get();
        if (bool) {
          try
          {
            imWebView.mutexcPos.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Log.debug("[InMobi]-[RE]-4.4.1", "mutexcPos failed ", localInterruptedException);
          }
        }
      }
    }
    imWebView.acqMutexcPos.set(true);
    return imWebView.curPosition.toString();
  }
  
  @JavascriptInterface
  public String getDefaultPosition()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(19), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> getDefaultPosition");
    synchronized (imWebView.mutexdPos)
    {
      imWebView.sendToDPHandler();
      for (;;)
      {
        boolean bool = imWebView.acqMutexdPos.get();
        if (bool) {
          try
          {
            imWebView.mutexdPos.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Log.debug("[InMobi]-[RE]-4.4.1", "mutexdPos failed ", localInterruptedException);
          }
        }
      }
    }
    imWebView.acqMutexdPos.set(true);
    Log.debug("[InMobi]-[RE]-4.4.1", "mutexdPassed" + imWebView.defPosition);
    return imWebView.defPosition.toString();
  }
  
  @JavascriptInterface
  public String getGalleryImage()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(25), null));
    if (!supports("getGalleryImage")) {
      Log.internal("[InMobi]-[RE]-4.4.1", "getGalleryImage called even if it is not supported");
    }
    do
    {
      return null;
      Intent localIntent = new Intent(imWebView.getActivity(), IMBrowserActivity.class);
      localIntent.putExtra("extra_browser_type", 100);
      localIntent.putExtra("id", IMBrowserActivity.generateId(new JSUtilityController.a(this)));
      localIntent.putExtra("action", "getGalleryImage");
      imWebView.getActivity().startActivity(localIntent);
    } while (imWebView.mListener == null);
    imWebView.mListener.onLeaveApplication();
    return null;
  }
  
  @JavascriptInterface
  public String getMaxSize()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(20), null));
    int[] arrayOfInt = b();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("width", arrayOfInt[0]);
      localJSONObject.put("height", arrayOfInt[1]);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  @JavascriptInterface
  public double getMicIntensity()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(51), null));
    return imWebView.getLastGoodKnownMicValue();
  }
  
  @JavascriptInterface
  public String getScreenSize()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(17), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> getScreenSize");
    Object localObject = new DisplayMetrics();
    ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
    int j = (int)(widthPixels / density);
    int k = (int)(heightPixels / density);
    localObject = new JSONObject();
    try
    {
      ((JSONObject)localObject).put("width", j);
      ((JSONObject)localObject).put("height", k);
      return ((JSONObject)localObject).toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "Failed to get screen size");
      }
    }
  }
  
  @JavascriptInterface
  public String getSdkVersion()
  {
    return InMobi.getVersion();
  }
  
  @JavascriptInterface
  public int getVideoVolume(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(45), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> getVideoVolume: ");
    return imWebView.getVideoVolume(paramString);
  }
  
  @JavascriptInterface
  public void hideVideo(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(48), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> hideVideo: id :" + paramString);
    imWebView.hideVideo(paramString);
  }
  
  @JavascriptInterface
  public void incentCompleted(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      HashMap localHashMap = new HashMap();
      Iterator localIterator = paramString.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          localHashMap.put(str, paramString.get(str));
        }
        catch (JSONException paramString)
        {
          imWebView.incentCompleted(null);
          return;
        }
      }
      imWebView.incentCompleted(localHashMap);
      return;
    }
    catch (JSONException paramString)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "JSON error");
      imWebView.incentCompleted(null);
    }
  }
  
  @JavascriptInterface
  public boolean isAudioMuted(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(35), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> isAudioMuted: ");
    return imWebView.isAudioMuted(paramString);
  }
  
  @JavascriptInterface
  public boolean isVideoMuted(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(43), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> isVideoMuted: ");
    return imWebView.isVideoMuted(paramString);
  }
  
  @JavascriptInterface
  public void log(String paramString)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "Ad Log Message: " + paramString);
  }
  
  @JavascriptInterface
  public void makeCall(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(29), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> makeCall: number: " + paramString);
    try
    {
      paramString = b(paramString);
      if (paramString == null)
      {
        imWebView.raiseError("Bad Phone Number", "makeCall");
        return;
      }
      paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString.toString()));
      paramString.addFlags(268435456);
      imWebView.getActivity().startActivity(paramString);
      imWebView.fireOnLeaveApplication();
      return;
    }
    catch (Exception paramString)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in making call ", paramString);
      imWebView.raiseError("Exception in making call", "makeCall");
    }
  }
  
  @JavascriptInterface
  public void muteAudio(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(33), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> muteAudio: ");
    imWebView.muteAudio(paramString);
  }
  
  @JavascriptInterface
  public void muteVideo(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(41), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> muteVideo: ");
    imWebView.muteVideo(paramString);
  }
  
  @JavascriptInterface
  public void onUserInteraction(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      HashMap localHashMap = new HashMap();
      Iterator localIterator = paramString.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          localHashMap.put(str, paramString.getString(str));
        }
        catch (JSONException localJSONException) {}
      }
      imWebView.userInteraction(localHashMap);
      return;
    }
    catch (Exception paramString) {}
  }
  
  @JavascriptInterface
  public void openExternal(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(2), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> openExternal: url: " + paramString);
    imWebView.openExternal(paramString);
  }
  
  @JavascriptInterface
  public void pauseAudio(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(39), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> pauseAudio: id :" + paramString);
    imWebView.pauseAudio(paramString);
  }
  
  @JavascriptInterface
  public void pauseVideo(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(47), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> pauseVideo: id :" + paramString);
    imWebView.pauseVideo(paramString);
  }
  
  @JavascriptInterface
  public void playAudio(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, String paramString3, String paramString4)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(32), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "playAudio: url: " + paramString1 + " autoPlay: " + paramBoolean1 + " controls: " + paramBoolean2 + " loop: " + paramBoolean3 + " startStyle: " + paramString2 + " stopStyle: " + paramString3 + " id:" + paramString4);
    imWebView.playAudio(paramString1, paramBoolean1, paramBoolean2, paramBoolean3, paramString2, paramString3, paramString4);
  }
  
  @JavascriptInterface
  public void playVideo(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(40), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> playVideo: url: " + paramString1 + " audioMuted: " + paramBoolean1 + " autoPlay: " + paramBoolean2 + " controls: " + paramBoolean3 + " loop: " + paramBoolean4 + " x: " + paramString2 + " y: " + paramString3 + " width: " + paramString4 + " height: " + paramString5 + " startStyle: " + paramString6 + " stopStyle: " + paramString7 + " id:" + paramString8);
    JSController.Dimensions localDimensions = new JSController.Dimensions();
    x = a(paramString2, -99999);
    y = a(paramString3, -99999);
    width = a(paramString4, -99999);
    height = a(paramString5, -99999);
    if ((width == -99999) && (height == -99999))
    {
      paramString2 = b();
      x = 0;
      y = 0;
      width = paramString2[0];
      height = paramString2[1];
    }
    imWebView.playVideo(paramString1, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, localDimensions, paramString6, paramString7, paramString8);
  }
  
  @JavascriptInterface
  public void postToSocial(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(21), null));
    if (!supports("postToSocial." + paramInt))
    {
      imWebView.raiseError("Social type " + paramInt + " is not supported.", "postToSocial");
      return;
    }
    if (paramString1 == null) {
      paramString1 = "";
    }
    for (;;)
    {
      if (paramString2 == null) {
        paramString1 = "";
      }
      String str = paramString3;
      if (paramString3 == null) {
        str = "";
      }
      paramString3 = new Intent(imWebView.getActivity(), IMBrowserActivity.class);
      int j = IMBrowserActivity.generateId(new JSUtilityController.c(this));
      paramString3.putExtra("extra_browser_type", 100);
      paramString3.putExtra("id", j);
      paramString3.putExtra("action", "postToSocial");
      paramString3.putExtra("socialType", paramInt);
      paramString3.putExtra("text", paramString1);
      paramString3.putExtra("link", paramString2);
      paramString3.putExtra("image", str);
      imWebView.getActivity().startActivity(paramString3);
      if (imWebView.mListener == null) {
        break;
      }
      imWebView.mListener.onLeaveApplication();
      return;
    }
  }
  
  @SuppressLint({"NewApi"})
  public void registerBroadcastListener()
  {
    c();
    if (b != null) {}
    while (Build.VERSION.SDK_INT <= 8) {
      return;
    }
    try
    {
      if (a == null) {
        a = ((DownloadManager)imWebView.getActivity().getSystemService("download"));
      }
      b = new JSUtilityController.f(this);
      if (!e)
      {
        imWebView.getActivity().registerReceiver((BroadcastReceiver)b, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        return;
      }
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "JSUtilityController-> registerBroadcastListener. Unable to register download listener", localException);
      return;
    }
    b = null;
  }
  
  @JavascriptInterface
  public void registerMicListener()
  {
    if (h) {
      return;
    }
    h = true;
    AudioTriggerer.addEventListener(g);
  }
  
  public void reset()
  {
    if (d != null) {
      d.reset();
    }
  }
  
  @JavascriptInterface
  public void saveContent(String paramString1, String paramString2)
  {
    Object localObject = InternalSDKUtil.getContext();
    localObject = new File(((Context)localObject).getExternalFilesDir(null) + "/im_cached_content/");
    if (((File)localObject).exists()) {
      ((File)localObject).delete();
    }
    ((File)localObject).mkdir();
    char[] arrayOfChar = "abcdefghijklmnopqrstuvwxyz".toCharArray();
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int j = 0;
    while (j < 20)
    {
      localStringBuilder.append(arrayOfChar[localRandom.nextInt(arrayOfChar.length)]);
      j += 1;
    }
    localObject = new File((File)localObject, localStringBuilder.toString());
    imWebView.saveFile((File)localObject, paramString2, paramString1);
  }
  
  @JavascriptInterface
  public void seekAudio(String paramString, int paramInt)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(38), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> seekAudio: ");
    imWebView.seekAudio(paramString, paramInt);
  }
  
  @JavascriptInterface
  public void seekVideo(String paramString, int paramInt)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(46), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> seekVideo: ");
    imWebView.seekVideo(paramString, paramInt);
  }
  
  @JavascriptInterface
  public void sendMail(String paramString1, String paramString2, String paramString3)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(28), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> sendMail: recipient: " + paramString1 + " subject: " + paramString2 + " body: " + paramString3);
    try
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("plain/text");
      localIntent.putExtra("android.intent.extra.EMAIL", new String[] { paramString1 });
      localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
      localIntent.putExtra("android.intent.extra.TEXT", paramString3);
      localIntent.addFlags(268435456);
      paramString1 = Intent.createChooser(localIntent, "Choose the Email Client.");
      imWebView.getActivity().startActivity(paramString1);
      imWebView.fireOnLeaveApplication();
      return;
    }
    catch (Exception paramString1)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in sending mail ", paramString1);
      imWebView.raiseError("Exception in sending mail", "sendMail");
    }
  }
  
  @JavascriptInterface
  public void sendSMS(String paramString1, String paramString2)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(27), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> sendSMS: recipient: " + paramString1 + " body: " + paramString2);
    try
    {
      paramString1 = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + Uri.encode(paramString1)));
      paramString1.putExtra("sms_body", paramString2);
      paramString1.addFlags(268435456);
      imWebView.getActivity().startActivity(paramString1);
      imWebView.fireOnLeaveApplication();
      return;
    }
    catch (Exception paramString1)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in sending SMS ", paramString1);
      imWebView.raiseError("Exception in sending SMS", "sendSMS");
    }
  }
  
  @JavascriptInterface
  public void setAudioVolume(String paramString, int paramInt)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(36), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> setAudioVolume: " + paramString + " " + paramInt);
    imWebView.setAudioVolume(paramString, paramInt);
  }
  
  @JavascriptInterface
  public void setVideoVolume(String paramString, int paramInt)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(44), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> setVideoVolume: ");
    imWebView.setVideoVolume(paramString, paramInt);
  }
  
  public void setWebViewClosed(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  @JavascriptInterface
  public void showAlert(String paramString)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", paramString);
  }
  
  @JavascriptInterface
  public void showVideo(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(49), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> showVideo: id :" + paramString);
    imWebView.showVideo(paramString);
  }
  
  public void stopAllListeners()
  {
    try
    {
      d.stopAllListeners();
      return;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  @JavascriptInterface
  @SuppressLint({"NewApi"})
  public void storePicture(String paramString)
  {
    // Byte code:
    //   0: invokestatic 284	com/inmobi/commons/internal/ApiStatCollector:getLogger	()Lcom/inmobi/commons/metric/Logger;
    //   3: new 286	com/inmobi/commons/metric/EventLog
    //   6: dup
    //   7: new 288	com/inmobi/commons/internal/ApiStatCollector$ApiEventType
    //   10: dup
    //   11: bipush 23
    //   13: invokespecial 291	com/inmobi/commons/internal/ApiStatCollector$ApiEventType:<init>	(I)V
    //   16: aconst_null
    //   17: invokespecial 294	com/inmobi/commons/metric/EventLog:<init>	(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V
    //   20: invokevirtual 300	com/inmobi/commons/metric/Logger:logEvent	(Lcom/inmobi/commons/metric/EventLog;)V
    //   23: ldc_w 302
    //   26: new 189	java/lang/StringBuilder
    //   29: dup
    //   30: ldc_w 944
    //   33: invokespecial 190	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_1
    //   37: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 198	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokestatic 310	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload_1
    //   47: invokestatic 947	com/inmobi/commons/internal/InternalSDKUtil:getFinalRedirectedUrl	(Ljava/lang/String;)Ljava/lang/String;
    //   50: invokestatic 141	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   53: astore_1
    //   54: aload_0
    //   55: ldc_w 948
    //   58: invokevirtual 351	com/inmobi/re/controller/JSUtilityController:supports	(Ljava/lang/String;)Z
    //   61: ifeq +33 -> 94
    //   64: new 950	android/app/DownloadManager$Request
    //   67: dup
    //   68: aload_1
    //   69: invokespecial 953	android/app/DownloadManager$Request:<init>	(Landroid/net/Uri;)V
    //   72: astore_2
    //   73: aload_2
    //   74: getstatic 959	android/os/Environment:DIRECTORY_DOWNLOADS	Ljava/lang/String;
    //   77: aload_1
    //   78: invokevirtual 962	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   81: invokevirtual 966	android/app/DownloadManager$Request:setDestinationInExternalPublicDir	(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    //   84: pop
    //   85: aload_0
    //   86: getfield 73	com/inmobi/re/controller/JSUtilityController:a	Landroid/app/DownloadManager;
    //   89: aload_2
    //   90: invokevirtual 970	android/app/DownloadManager:enqueue	(Landroid/app/DownloadManager$Request;)J
    //   93: pop2
    //   94: return
    //   95: astore_1
    //   96: aload_0
    //   97: getfield 123	com/inmobi/re/controller/JSUtilityController:imWebView	Lcom/inmobi/re/container/IMWebView;
    //   100: ldc_w 972
    //   103: ldc_w 948
    //   106: invokevirtual 321	com/inmobi/re/container/IMWebView:raiseError	(Ljava/lang/String;Ljava/lang/String;)V
    //   109: return
    //   110: astore_1
    //   111: aload_0
    //   112: getfield 123	com/inmobi/re/controller/JSUtilityController:imWebView	Lcom/inmobi/re/container/IMWebView;
    //   115: ldc_w 974
    //   118: ldc_w 948
    //   121: invokevirtual 321	com/inmobi/re/container/IMWebView:raiseError	(Ljava/lang/String;Ljava/lang/String;)V
    //   124: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	JSUtilityController
    //   0	125	1	paramString	String
    //   72	18	2	localRequest	android.app.DownloadManager.Request
    // Exception table:
    //   from	to	target	type
    //   46	54	95	java/lang/Exception
    //   64	94	110	java/lang/Exception
  }
  
  @SuppressLint({"NewApi"})
  public boolean supports(String paramString)
  {
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool2 = true;
    boolean bool1 = true;
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(22), null));
    if ((paramString.equals("html5video")) || (paramString.equals("inlineVideo")))
    {
      if (Build.VERSION.SDK_INT >= 11) {
        if ((imWebView.isHardwareAccelerated()) && (imWebView.isEnabledHardwareAcceleration())) {
          bool1 = true;
        }
      }
      for (localObject1 = Boolean.valueOf(bool1);; localObject1 = Boolean.valueOf(true))
      {
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
        bool1 = false;
        break;
      }
    }
    Object localObject1 = (Boolean)f.get(paramString);
    if (localObject1 != null) {
      return ((Boolean)localObject1).booleanValue();
    }
    localObject1 = imWebView.getActivity().getPackageManager();
    if (paramString.equals("tel"))
    {
      f.put(paramString, Boolean.valueOf(true));
      return true;
    }
    if (paramString.equals("sms"))
    {
      localObject1 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject1).setType("vnd.android-dir/mms-sms");
      if (imWebView.getActivity().getPackageManager().resolveActivity((Intent)localObject1, 65536) == null) {}
      for (localObject1 = Boolean.valueOf(false);; localObject1 = Boolean.valueOf(true))
      {
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
      }
    }
    if (paramString.equals("calendar"))
    {
      localObject1 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject1).setType("vnd.android.cursor.item/event");
      if (imWebView.getActivity().getPackageManager().resolveActivity((Intent)localObject1, 65536) == null) {}
      for (localObject1 = Boolean.valueOf(false);; localObject1 = Boolean.valueOf(true))
      {
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
      }
    }
    if (paramString.equals("microphone"))
    {
      if (((PackageManager)localObject1).checkPermission("android.permission.RECORD_AUDIO", ((PackageManager)localObject1).getNameForUid(Binder.getCallingUid())) == 0) {}
      for (;;)
      {
        localObject1 = Boolean.valueOf(bool1);
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
        bool1 = false;
      }
    }
    if (paramString.equals("storePicture"))
    {
      if ((Build.VERSION.SDK_INT > 8) && (((PackageManager)localObject1).checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", ((PackageManager)localObject1).getNameForUid(Binder.getCallingUid())) == 0)) {}
      for (bool1 = bool3;; bool1 = false)
      {
        localObject1 = Boolean.valueOf(bool1);
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
      }
    }
    if ((paramString.equals("postToSocial.2")) || (paramString.equals("postToSocial.3")))
    {
      localObject1 = Boolean.valueOf(true);
      f.put(paramString, localObject1);
      return ((Boolean)localObject1).booleanValue();
    }
    Object localObject2;
    if (paramString.equals("takeCameraPicture"))
    {
      localObject2 = new Intent("android.media.action.IMAGE_CAPTURE");
      localObject2 = imWebView.getActivity().getPackageManager().resolveActivity((Intent)localObject2, 65536);
      int j;
      if (((PackageManager)localObject1).checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", ((PackageManager)localObject1).getNameForUid(Binder.getCallingUid())) == 0)
      {
        j = 1;
        if ((localObject2 == null) || (j == 0)) {
          break label609;
        }
      }
      label609:
      for (bool1 = bool4;; bool1 = false)
      {
        localObject1 = Boolean.valueOf(bool1);
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
        j = 0;
        break;
      }
    }
    if (paramString.equals("getGalleryImage"))
    {
      localObject1 = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
      if (imWebView.getActivity().getPackageManager().resolveActivity((Intent)localObject1, 65536) == null) {}
      for (localObject1 = Boolean.valueOf(false);; localObject1 = Boolean.valueOf(true))
      {
        f.put(paramString, localObject1);
        return ((Boolean)localObject1).booleanValue();
      }
    }
    if (paramString.equals("vibrate")) {
      if (((PackageManager)localObject1).checkPermission("android.permission.VIBRATE", ((PackageManager)localObject1).getNameForUid(Binder.getCallingUid())) == 0)
      {
        bool1 = true;
        localObject1 = Boolean.valueOf(bool1);
        localObject2 = (Vibrator)d.imWebView.getActivity().getSystemService("vibrator");
        if (localObject2 == null) {
          break label804;
        }
        if (Build.VERSION.SDK_INT < 11) {
          break label812;
        }
        if ((!((Boolean)localObject1).booleanValue()) || (!((Vibrator)localObject2).hasVibrator())) {
          break label804;
        }
        bool1 = bool2;
        label775:
        localObject1 = Boolean.valueOf(bool1);
      }
    }
    label804:
    label812:
    for (;;)
    {
      f.put(paramString, localObject1);
      return ((Boolean)localObject1).booleanValue();
      bool1 = false;
      break;
      bool1 = false;
      break label775;
      return false;
    }
  }
  
  @JavascriptInterface
  public String supportsFeature(String paramString)
  {
    return String.valueOf(supports(paramString));
  }
  
  @JavascriptInterface
  public String takeCameraPicture()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(24), null));
    if (!supports("takeCameraPicture")) {
      Log.internal("[InMobi]-[RE]-4.4.1", "takeCameraPicture called even if it is not supported");
    }
    do
    {
      return null;
      Intent localIntent = new Intent(imWebView.getActivity(), IMBrowserActivity.class);
      localIntent.putExtra("extra_browser_type", 100);
      Object localObject = new ContentValues();
      localObject = mContext.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, (ContentValues)localObject);
      localIntent.putExtra("id", IMBrowserActivity.generateId(new JSUtilityController.b(this, (Uri)localObject)));
      localIntent.putExtra("URI", (Parcelable)localObject);
      localIntent.putExtra("action", "takeCameraPicture");
      imWebView.getActivity().startActivity(localIntent);
    } while (imWebView.mListener == null);
    imWebView.mListener.onLeaveApplication();
    return null;
  }
  
  @JavascriptInterface
  public void unMuteAudio(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(34), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> unMuteAudio: ");
    imWebView.unMuteAudio(paramString);
  }
  
  @JavascriptInterface
  public void unMuteVideo(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(42), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSUtilityController-> unMuteVideo: ");
    imWebView.unMuteVideo(paramString);
  }
  
  @SuppressLint({"NewApi"})
  public void unRegisterBroadcastListener()
  {
    try
    {
      d();
      if (Build.VERSION.SDK_INT > 8)
      {
        imWebView.getActivity().unregisterReceiver((BroadcastReceiver)b);
        b = null;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "JSUtilityController-> unregisterBroadcastListener. Unable to unregister download listener");
    }
  }
  
  @JavascriptInterface
  public void unRegisterMicListener()
  {
    if (!h) {
      return;
    }
    h = false;
    AudioTriggerer.removeEventListener(g);
  }
  
  @JavascriptInterface
  public void vibrate()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(26), null));
    if (!imWebView.isViewable())
    {
      imWebView.raiseError("Creative not visible. Will not vibrate.", "vibrate");
      return;
    }
    if (supports("vibrate"))
    {
      ((Vibrator)imWebView.getActivity().getSystemService("vibrator")).vibrate(2000L);
      new Timer().schedule(new JSUtilityController.g(this), 2000L);
      return;
    }
    Log.internal("[InMobi]-[RE]-4.4.1", "vibrate called even if it is not supported");
  }
  
  @JavascriptInterface
  public void vibrate(String paramString, int paramInt)
  {
    Vibrator localVibrator;
    try
    {
      ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(26), null));
      if (!imWebView.isViewable())
      {
        imWebView.raiseError("Creative not visible. Will not vibrate.", "vibrate");
        return;
      }
      if (!supports("vibrate")) {
        break label338;
      }
      localVibrator = (Vibrator)imWebView.getActivity().getSystemService("vibrator");
      paramString = paramString.replaceAll("\\[", "").replaceAll("\\]", "");
      if ((paramString == null) || ("".equals(paramString.trim())))
      {
        localVibrator.cancel();
        return;
      }
    }
    catch (Exception paramString)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "vibrate exception", paramString);
      return;
    }
    paramString = paramString.split(",");
    int j = paramString.length;
    long[] arrayOfLong;
    int k;
    if (j > Initializer.getConfigParams().getMaxVibPatternLength())
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "vibration pattern exceeds max length. Will be truncated to max " + Initializer.getConfigParams().getMaxVibPatternLength() + "ms");
      j = Initializer.getConfigParams().getMaxVibPatternLength();
      arrayOfLong = new long[j];
      k = 0;
    }
    for (;;)
    {
      if (k < j) {
        try
        {
          arrayOfLong[k] = Long.parseLong(paramString[k]);
          if (arrayOfLong[k] > Initializer.getConfigParams().getMaxVibDuration())
          {
            Log.internal("[InMobi]-[RE]-4.4.1", "vibration duration exceeds max. Will only vibrate for max " + Initializer.getConfigParams().getMaxVibDuration() + "ms");
            arrayOfLong[k] = Initializer.getConfigParams().getMaxVibDuration();
          }
          if (arrayOfLong[k] >= 0L) {
            break label365;
          }
          imWebView.raiseError("Negative duration not allowed in vibration .", "vibrate");
        }
        catch (NumberFormatException paramString)
        {
          imWebView.raiseError("Invalid values of pattern in vibration .", "vibrate");
          return;
        }
      }
      if (arrayOfLong.length != 0)
      {
        localVibrator.vibrate(arrayOfLong, paramInt);
        return;
        label338:
        imWebView.raiseError("Vibrate called even if it is not supported.", "vibrate");
        Log.internal("[InMobi]-[RE]-4.4.1", "vibrate called even if it is not supported");
        return;
        break;
      }
      return;
      label365:
      k += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSUtilityController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */