package com.google.zxing.client.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.ClipboardManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.FakeR;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.camera.CameraManager;
import com.google.zxing.client.android.history.HistoryActivity;
import com.google.zxing.client.android.history.HistoryItem;
import com.google.zxing.client.android.history.HistoryManager;
import com.google.zxing.client.android.result.ResultButtonListener;
import com.google.zxing.client.android.result.ResultHandler;
import com.google.zxing.client.android.result.ResultHandlerFactory;
import com.google.zxing.client.android.result.supplement.SupplementalInfoRetriever;
import com.google.zxing.client.android.share.ShareActivity;
import com.google.zxing.client.result.ParsedResultType;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class CaptureActivity
  extends Activity
  implements SurfaceHolder.Callback
{
  private static final long BULK_MODE_SCAN_DELAY_MS = 1000L;
  private static final long DEFAULT_INTENT_RESULT_DURATION_MS = 1500L;
  private static final Set<ResultMetadataType> DISPLAYABLE_METADATA_TYPES = EnumSet.of(ResultMetadataType.ISSUE_NUMBER, ResultMetadataType.SUGGESTED_PRICE, ResultMetadataType.ERROR_CORRECTION_LEVEL, ResultMetadataType.POSSIBLE_COUNTRY);
  public static final int HISTORY_REQUEST_CODE = 47820;
  private static final String PACKAGE_NAME = "com.google.zxing.client.android";
  private static final String PRODUCT_SEARCH_URL_PREFIX = "http://www.google";
  private static final String PRODUCT_SEARCH_URL_SUFFIX = "/m/products/scan";
  private static final String RAW_PARAM = "raw";
  private static final String RETURN_CODE_PLACEHOLDER = "{CODE}";
  private static final String RETURN_URL_PARAM = "ret";
  private static final String TAG = CaptureActivity.class.getSimpleName();
  private static final String[] ZXING_URLS = { "http://zxing.appspot.com/scan", "zxing://scan/" };
  private static FakeR fakeR;
  private BeepManager beepManager;
  private CameraManager cameraManager;
  private String characterSet;
  private boolean copyToClipboard;
  private Collection<BarcodeFormat> decodeFormats;
  private CaptureActivityHandler handler;
  private boolean hasSurface;
  private HistoryManager historyManager;
  private InactivityTimer inactivityTimer;
  private Result lastResult;
  private View resultView;
  private boolean returnRaw;
  private String returnUrlTemplate;
  private Result savedResultToShow;
  private IntentSource source;
  private String sourceUrl;
  private TextView statusView;
  private ViewfinderView viewfinderView;
  
  private void decodeOrStoreSavedBitmap(Bitmap paramBitmap, Result paramResult)
  {
    if (handler == null)
    {
      savedResultToShow = paramResult;
      return;
    }
    if (paramResult != null) {
      savedResultToShow = paramResult;
    }
    if (savedResultToShow != null)
    {
      paramBitmap = Message.obtain(handler, fakeR.getId("id", "decode_succeeded"), savedResultToShow);
      handler.sendMessage(paramBitmap);
    }
    savedResultToShow = null;
  }
  
  private void displayFrameworkBugMessageAndExit()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(getString(fakeR.getId("string", "app_name")));
    localBuilder.setMessage(getString(fakeR.getId("string", "msg_camera_framework_bug")));
    localBuilder.setPositiveButton(fakeR.getId("string", "button_ok"), new FinishListener(this));
    localBuilder.setOnCancelListener(new FinishListener(this));
    localBuilder.show();
  }
  
  private static void drawLine(Canvas paramCanvas, Paint paramPaint, ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    paramCanvas.drawLine(paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint2.getX(), paramResultPoint2.getY(), paramPaint);
  }
  
  private void drawResultPoints(Bitmap paramBitmap, Result paramResult)
  {
    ResultPoint[] arrayOfResultPoint = paramResult.getResultPoints();
    Paint localPaint;
    if ((arrayOfResultPoint != null) && (arrayOfResultPoint.length > 0))
    {
      paramBitmap = new Canvas(paramBitmap);
      localPaint = new Paint();
      localPaint.setColor(getResources().getColor(fakeR.getId("color", "result_points")));
      if (arrayOfResultPoint.length != 2) {
        break label80;
      }
      localPaint.setStrokeWidth(4.0F);
      drawLine(paramBitmap, localPaint, arrayOfResultPoint[0], arrayOfResultPoint[1]);
    }
    for (;;)
    {
      return;
      label80:
      if ((arrayOfResultPoint.length == 4) && ((paramResult.getBarcodeFormat() == BarcodeFormat.UPC_A) || (paramResult.getBarcodeFormat() == BarcodeFormat.EAN_13)))
      {
        drawLine(paramBitmap, localPaint, arrayOfResultPoint[0], arrayOfResultPoint[1]);
        drawLine(paramBitmap, localPaint, arrayOfResultPoint[2], arrayOfResultPoint[3]);
        return;
      }
      localPaint.setStrokeWidth(10.0F);
      int j = arrayOfResultPoint.length;
      int i = 0;
      while (i < j)
      {
        paramResult = arrayOfResultPoint[i];
        paramBitmap.drawPoint(paramResult.getX(), paramResult.getY(), localPaint);
        i += 1;
      }
    }
  }
  
  private void handleDecodeExternally(Result paramResult, ResultHandler paramResultHandler, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      viewfinderView.drawResultBitmap(paramBitmap);
    }
    if (getIntent() == null) {}
    int i;
    for (long l = 1500L;; l = getIntent().getLongExtra("RESULT_DISPLAY_DURATION_MS", 1500L))
    {
      if (l > 0L) {
        statusView.setText(getString(paramResultHandler.getDisplayTitle()));
      }
      if ((copyToClipboard) && (!paramResultHandler.areContentsSecure()))
      {
        paramBitmap = (ClipboardManager)getSystemService("clipboard");
        CharSequence localCharSequence = paramResultHandler.getDisplayContents();
        if (localCharSequence != null) {
          paramBitmap.setText(localCharSequence);
        }
      }
      if (source != IntentSource.NATIVE_APP_INTENT) {
        break label386;
      }
      paramResultHandler = new Intent(getIntent().getAction());
      paramResultHandler.addFlags(524288);
      paramResultHandler.putExtra("SCAN_RESULT", paramResult.toString());
      paramResultHandler.putExtra("SCAN_RESULT_FORMAT", paramResult.getBarcodeFormat().toString());
      paramBitmap = paramResult.getRawBytes();
      if ((paramBitmap != null) && (paramBitmap.length > 0)) {
        paramResultHandler.putExtra("SCAN_RESULT_BYTES", paramBitmap);
      }
      paramResult = paramResult.getResultMetadata();
      if (paramResult == null) {
        break;
      }
      if (paramResult.containsKey(ResultMetadataType.UPC_EAN_EXTENSION)) {
        paramResultHandler.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", paramResult.get(ResultMetadataType.UPC_EAN_EXTENSION).toString());
      }
      paramBitmap = (Integer)paramResult.get(ResultMetadataType.ORIENTATION);
      if (paramBitmap != null) {
        paramResultHandler.putExtra("SCAN_RESULT_ORIENTATION", paramBitmap.intValue());
      }
      paramBitmap = (String)paramResult.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
      if (paramBitmap != null) {
        paramResultHandler.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", paramBitmap);
      }
      paramResult = (Iterable)paramResult.get(ResultMetadataType.BYTE_SEGMENTS);
      if (paramResult == null) {
        break;
      }
      i = 0;
      paramResult = paramResult.iterator();
      while (paramResult.hasNext())
      {
        paramBitmap = (byte[])paramResult.next();
        paramResultHandler.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i, paramBitmap);
        i += 1;
      }
    }
    sendReplyMessage(fakeR.getId("id", "return_scan_result"), paramResultHandler, l);
    label386:
    do
    {
      return;
      if (source == IntentSource.PRODUCT_SEARCH_LINK)
      {
        i = sourceUrl.lastIndexOf("/scan");
        paramResult = sourceUrl.substring(0, i) + "?q=" + paramResultHandler.getDisplayContents() + "&source=zxing";
        sendReplyMessage(fakeR.getId("id", "launch_product_query"), paramResult, l);
        return;
      }
    } while ((source != IntentSource.ZXING_LINK) || (returnUrlTemplate == null));
    if (returnRaw) {}
    for (paramResult = paramResult.getText();; paramResult = paramResultHandler.getDisplayContents())
    {
      try
      {
        paramResultHandler = URLEncoder.encode(paramResult.toString(), "UTF-8");
        paramResult = paramResultHandler;
      }
      catch (UnsupportedEncodingException paramResultHandler)
      {
        for (;;) {}
      }
      paramResult = returnUrlTemplate.replace("{CODE}", paramResult);
      sendReplyMessage(fakeR.getId("id", "launch_product_query"), paramResult, l);
      return;
    }
  }
  
  private void handleDecodeInternally(Result paramResult, ResultHandler paramResultHandler, Bitmap paramBitmap)
  {
    statusView.setVisibility(8);
    viewfinderView.setVisibility(8);
    resultView.setVisibility(0);
    Object localObject1 = (ImageView)findViewById(fakeR.getId("id", "barcode_image_view"));
    if (paramBitmap == null) {
      ((ImageView)localObject1).setImageBitmap(BitmapFactory.decodeResource(getResources(), fakeR.getId("drawable", "launcher_icon")));
    }
    for (;;)
    {
      ((TextView)findViewById(fakeR.getId("id", "format_text_view"))).setText(paramResult.getBarcodeFormat().toString());
      ((TextView)findViewById(fakeR.getId("id", "type_text_view"))).setText(paramResultHandler.getType().toString());
      paramBitmap = DateFormat.getDateTimeInstance(3, 3).format(new Date(paramResult.getTimestamp()));
      ((TextView)findViewById(fakeR.getId("id", "time_text_view"))).setText(paramBitmap);
      paramBitmap = (TextView)findViewById(fakeR.getId("id", "meta_text_view"));
      localObject1 = findViewById(fakeR.getId("id", "meta_text_view_label"));
      paramBitmap.setVisibility(8);
      ((View)localObject1).setVisibility(8);
      Object localObject2 = paramResult.getResultMetadata();
      if (localObject2 == null) {
        break label358;
      }
      paramResult = new StringBuilder(20);
      localObject2 = ((Map)localObject2).entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        if (DISPLAYABLE_METADATA_TYPES.contains(localEntry.getKey())) {
          paramResult.append(localEntry.getValue()).append('\n');
        }
      }
      ((ImageView)localObject1).setImageBitmap(paramBitmap);
    }
    if (paramResult.length() > 0)
    {
      paramResult.setLength(paramResult.length() - 1);
      paramBitmap.setText(paramResult);
      paramBitmap.setVisibility(0);
      ((View)localObject1).setVisibility(0);
    }
    label358:
    paramBitmap = (TextView)findViewById(fakeR.getId("id", "contents_text_view"));
    paramResult = paramResultHandler.getDisplayContents();
    paramBitmap.setText(paramResult);
    paramBitmap.setTextSize(2, Math.max(22, 32 - paramResult.length() / 4));
    paramBitmap = (TextView)findViewById(fakeR.getId("id", "contents_supplement_text_view"));
    paramBitmap.setText("");
    paramBitmap.setOnClickListener(null);
    if (PreferenceManager.getDefaultSharedPreferences(this).getBoolean("preferences_supplemental", true)) {
      SupplementalInfoRetriever.maybeInvokeRetrieval(paramBitmap, paramResultHandler.getResult(), historyManager, this);
    }
    int j = paramResultHandler.getButtonCount();
    paramBitmap = (ViewGroup)findViewById(fakeR.getId("id", "result_button_view"));
    paramBitmap.requestFocus();
    int i = 0;
    if (i < 4)
    {
      localObject1 = (TextView)paramBitmap.getChildAt(i);
      if (i < j)
      {
        ((TextView)localObject1).setVisibility(0);
        ((TextView)localObject1).setText(paramResultHandler.getButtonText(i));
        ((TextView)localObject1).setOnClickListener(new ResultButtonListener(paramResultHandler, i));
      }
      for (;;)
      {
        i += 1;
        break;
        ((TextView)localObject1).setVisibility(8);
      }
    }
    if ((copyToClipboard) && (!paramResultHandler.areContentsSecure()))
    {
      paramResultHandler = (ClipboardManager)getSystemService("clipboard");
      if (paramResult != null) {
        paramResultHandler.setText(paramResult);
      }
    }
  }
  
  private void initCamera(SurfaceHolder paramSurfaceHolder)
  {
    if (paramSurfaceHolder == null) {
      throw new IllegalStateException("No SurfaceHolder provided");
    }
    if (cameraManager.isOpen())
    {
      Log.w(TAG, "initCamera() while already open -- late SurfaceView callback?");
      return;
    }
    try
    {
      cameraManager.openDriver(paramSurfaceHolder);
      if (handler == null) {
        handler = new CaptureActivityHandler(this, decodeFormats, characterSet, cameraManager);
      }
      decodeOrStoreSavedBitmap(null, null);
      return;
    }
    catch (IOException paramSurfaceHolder)
    {
      Log.w(TAG, paramSurfaceHolder);
      displayFrameworkBugMessageAndExit();
      return;
    }
    catch (RuntimeException paramSurfaceHolder)
    {
      Log.w(TAG, "Unexpected error initializing camera", paramSurfaceHolder);
      displayFrameworkBugMessageAndExit();
    }
  }
  
  private static boolean isZXingURL(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = ZXING_URLS;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (paramString.startsWith(arrayOfString[i])) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  private void resetStatusView()
  {
    resultView.setVisibility(8);
    statusView.setText(fakeR.getId("string", "msg_default_status"));
    statusView.setVisibility(0);
    viewfinderView.setVisibility(0);
    lastResult = null;
  }
  
  private void sendReplyMessage(int paramInt, Object paramObject, long paramLong)
  {
    paramObject = Message.obtain(handler, paramInt, paramObject);
    if (paramLong > 0L)
    {
      handler.sendMessageDelayed((Message)paramObject, paramLong);
      return;
    }
    handler.sendMessage((Message)paramObject);
  }
  
  private boolean showHelpOnFirstLaunch()
  {
    try
    {
      int i = getPackageManagergetPackageInfo"com.google.zxing.client.android"0versionCode;
      Object localObject = PreferenceManager.getDefaultSharedPreferences(this);
      int j = ((SharedPreferences)localObject).getInt("preferences_help_version_shown", 0);
      if (i > j)
      {
        ((SharedPreferences)localObject).edit().putInt("preferences_help_version_shown", i).commit();
        Intent localIntent = new Intent(this, HelpActivity.class);
        localIntent.addFlags(524288);
        if (j == 0) {}
        for (localObject = "index.html";; localObject = "whatsnew.html")
        {
          localIntent.putExtra("requested_page_key", (String)localObject);
          startActivity(localIntent);
          return true;
        }
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.w(TAG, localNameNotFoundException);
    }
  }
  
  public void drawViewfinder()
  {
    viewfinderView.drawViewfinder();
  }
  
  CameraManager getCameraManager()
  {
    return cameraManager;
  }
  
  public Handler getHandler()
  {
    return handler;
  }
  
  ViewfinderView getViewfinderView()
  {
    return viewfinderView;
  }
  
  public void handleDecode(Result paramResult, Bitmap paramBitmap)
  {
    inactivityTimer.onActivity();
    lastResult = paramResult;
    ResultHandler localResultHandler = ResultHandlerFactory.makeResultHandler(this, paramResult);
    if (paramBitmap != null) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        historyManager.addHistoryItem(paramResult, localResultHandler);
        beepManager.playBeepSoundAndVibrate();
        drawResultPoints(paramBitmap, paramResult);
      }
      switch (source)
      {
      default: 
        return;
      }
    }
    handleDecodeExternally(paramResult, localResultHandler, paramBitmap);
    return;
    if (returnUrlTemplate == null)
    {
      handleDecodeInternally(paramResult, localResultHandler, paramBitmap);
      return;
    }
    handleDecodeExternally(paramResult, localResultHandler, paramBitmap);
    return;
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
    if ((i != 0) && (localSharedPreferences.getBoolean("preferences_bulk_mode", false)))
    {
      Toast.makeText(this, getResources().getString(fakeR.getId("string", "msg_bulk_mode_scanned")) + " (" + paramResult.getText() + ')', 0).show();
      restartPreviewAfterDelay(1000L);
      return;
    }
    handleDecodeInternally(paramResult, localResultHandler, paramBitmap);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 == -1) && (paramInt1 == 47820))
    {
      paramInt1 = paramIntent.getIntExtra("ITEM_NUMBER", -1);
      if (paramInt1 >= 0) {
        decodeOrStoreSavedBitmap(null, historyManager.buildHistoryItem(paramInt1).getResult());
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    fakeR = new FakeR(this);
    getWindow().addFlags(128);
    setContentView(fakeR.getId("layout", "capture"));
    hasSurface = false;
    historyManager = new HistoryManager(this);
    historyManager.trimHistory();
    inactivityTimer = new InactivityTimer(this);
    beepManager = new BeepManager(this);
    PreferenceManager.setDefaultValues(this, fakeR.getId("xml", "preferences"), false);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(fakeR.getId("menu", "capture"), paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    inactivityTimer.shutdown();
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default: 
    case 27: 
    case 80: 
    case 4: 
      do
      {
        bool = super.onKeyDown(paramInt, paramKeyEvent);
        return bool;
        if (source == IntentSource.NATIVE_APP_INTENT)
        {
          setResult(0);
          finish();
          return true;
        }
      } while (((source != IntentSource.NONE) && (source != IntentSource.ZXING_LINK)) || (lastResult == null));
      restartPreviewAfterDelay(0L);
      return true;
    case 25: 
      cameraManager.setTorch(false);
      return true;
    }
    cameraManager.setTorch(true);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(524288);
    int i = paramMenuItem.getItemId();
    if (i == fakeR.getId("id", "menu_share"))
    {
      localIntent.setClassName(this, ShareActivity.class.getName());
      startActivity(localIntent);
    }
    for (;;)
    {
      return true;
      if (i == fakeR.getId("id", "menu_history"))
      {
        localIntent.setClassName(this, HistoryActivity.class.getName());
        startActivityForResult(localIntent, 47820);
      }
      else if (i == fakeR.getId("id", "menu_settings"))
      {
        localIntent.setClassName(this, PreferencesActivity.class.getName());
        startActivity(localIntent);
      }
      else
      {
        if (i != fakeR.getId("id", "menu_help")) {
          break;
        }
        localIntent.setClassName(this, HelpActivity.class.getName());
        startActivity(localIntent);
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    if (handler != null)
    {
      handler.quitSynchronously();
      handler = null;
    }
    inactivityTimer.onPause();
    cameraManager.closeDriver();
    if (!hasSurface) {
      ((SurfaceView)findViewById(fakeR.getId("id", "preview_view"))).getHolder().removeCallback(this);
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    cameraManager = new CameraManager(getApplication());
    viewfinderView = ((ViewfinderView)findViewById(fakeR.getId("id", "viewfinder_view")));
    viewfinderView.setCameraManager(cameraManager);
    resultView = findViewById(fakeR.getId("id", "result_view"));
    statusView = ((TextView)findViewById(fakeR.getId("id", "status_view")));
    handler = null;
    lastResult = null;
    resetStatusView();
    Object localObject1 = ((SurfaceView)findViewById(fakeR.getId("id", "preview_view"))).getHolder();
    label194:
    String str;
    if (hasSurface)
    {
      initCamera((SurfaceHolder)localObject1);
      beepManager.updatePrefs();
      inactivityTimer.onResume();
      localObject1 = getIntent();
      if ((!PreferenceManager.getDefaultSharedPreferences(this).getBoolean("preferences_copy_to_clipboard", true)) || ((localObject1 != null) && (!((Intent)localObject1).getBooleanExtra("SAVE_HISTORY", true)))) {
        break label366;
      }
      bool = true;
      copyToClipboard = bool;
      source = IntentSource.NATIVE_APP_INTENT;
      decodeFormats = null;
      characterSet = null;
      if (localObject1 != null)
      {
        localObject2 = ((Intent)localObject1).getAction();
        str = ((Intent)localObject1).getDataString();
        if (!"com.google.zxing.client.android.SCAN".equals(localObject2)) {
          break label372;
        }
        source = IntentSource.NATIVE_APP_INTENT;
        decodeFormats = DecodeFormatManager.parseDecodeFormats((Intent)localObject1);
        if ((((Intent)localObject1).hasExtra("SCAN_WIDTH")) && (((Intent)localObject1).hasExtra("SCAN_HEIGHT")))
        {
          int i = ((Intent)localObject1).getIntExtra("SCAN_WIDTH", 0);
          int j = ((Intent)localObject1).getIntExtra("SCAN_HEIGHT", 0);
          if ((i > 0) && (j > 0)) {
            cameraManager.setManualFramingRect(i, j);
          }
        }
        localObject2 = ((Intent)localObject1).getStringExtra("PROMPT_MESSAGE");
        if (localObject2 != null) {
          statusView.setText((CharSequence)localObject2);
        }
      }
    }
    label366:
    label372:
    label416:
    do
    {
      for (;;)
      {
        characterSet = ((Intent)localObject1).getStringExtra("CHARACTER_SET");
        return;
        ((SurfaceHolder)localObject1).addCallback(this);
        ((SurfaceHolder)localObject1).setType(3);
        break;
        bool = false;
        break label194;
        if ((str == null) || (!str.contains("http://www.google")) || (!str.contains("/m/products/scan"))) {
          break label416;
        }
        source = IntentSource.PRODUCT_SEARCH_LINK;
        sourceUrl = str;
        decodeFormats = DecodeFormatManager.PRODUCT_FORMATS;
      }
    } while (!isZXingURL(str));
    source = IntentSource.ZXING_LINK;
    sourceUrl = str;
    Object localObject2 = Uri.parse(sourceUrl);
    returnUrlTemplate = ((Uri)localObject2).getQueryParameter("ret");
    if (((Uri)localObject2).getQueryParameter("raw") != null) {}
    for (boolean bool = true;; bool = false)
    {
      returnRaw = bool;
      decodeFormats = DecodeFormatManager.parseDecodeFormats((Uri)localObject2);
      break;
    }
  }
  
  public void restartPreviewAfterDelay(long paramLong)
  {
    if (handler != null) {
      handler.sendEmptyMessageDelayed(fakeR.getId("id", "restart_preview"), paramLong);
    }
    resetStatusView();
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (paramSurfaceHolder == null) {
      Log.e(TAG, "*** WARNING *** surfaceCreated() gave us a null surface!");
    }
    if (!hasSurface)
    {
      hasSurface = true;
      initCamera(paramSurfaceHolder);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    hasSurface = false;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.CaptureActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */