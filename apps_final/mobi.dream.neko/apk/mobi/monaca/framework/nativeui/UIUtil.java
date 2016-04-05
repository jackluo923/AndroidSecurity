package mobi.monaca.framework.nativeui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;
import android.util.TypedValue;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.utils.TimeStamp;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;
import org.json.JSONException;
import org.json.JSONObject;

public class UIUtil
{
  protected static Pattern colorPattern = Pattern.compile(MonacaApplication.getStringFromResource(R.string.nc_color_pattern));
  protected static SparseIntArray computedFontSizeCache = new SparseIntArray();
  
  public static int buildColor(String paramString)
    throws IllegalArgumentException
  {
    return buildColor(paramString, 1.0D);
  }
  
  public static int buildColor(String paramString, double paramDouble)
    throws IllegalArgumentException
  {
    double d = paramDouble;
    if (paramDouble > 1.0D) {
      d = 1.0D;
    }
    if (colorPattern.matcher(paramString).matches())
    {
      int i = Integer.parseInt(paramString.substring(1, 7), 16);
      long l = Math.round(d / 1.0D * 255.0D);
      return (int)(i + ((l & 0xFF) << 24));
    }
    throw new IllegalArgumentException(MonacaApplication.getStringFromResource(R.string.exception_buildcolor_forward) + paramString + MonacaApplication.getStringFromResource(R.string.exception_buildcolor_backward));
  }
  
  public static int buildOpacity(double paramDouble)
  {
    if (paramDouble < 1.0D) {}
    for (;;)
    {
      return Math.round((int)(paramDouble / 1.0D * 255.0D));
      paramDouble = 1.0D;
    }
  }
  
  protected static int computeFontSizeFromFontHeightDip(Context paramContext, int paramInt)
  {
    int i = dip2px(paramContext, paramInt);
    float f2 = 0.0F;
    float f1 = 0.0F;
    paramInt = 0;
    while (paramInt < 100)
    {
      paramContext = new Paint();
      paramContext.setTextSize(paramInt);
      paramContext = paramContext.getFontMetrics();
      float f3 = descent - ascent;
      if (Math.abs(i - f1) > Math.abs(i - f3)) {
        f2 = paramInt;
      }
      f1 = f3;
      paramInt += 1;
    }
    return (int)f2;
  }
  
  public static Bitmap createBitmapFromDrawable(Drawable paramDrawable)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    paramDrawable.setBounds(0, 0, i, j);
    paramDrawable.draw(new Canvas(localBitmap));
    return localBitmap;
  }
  
  public static Bitmap createBitmapWithColorFilter(Bitmap paramBitmap, ColorFilter paramColorFilter)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight()).copy(Bitmap.Config.ARGB_8888, true);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    localPaint.setShader(new BitmapShader(paramBitmap, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT));
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
    localPaint.setColorFilter(paramColorFilter);
    localCanvas.drawPaint(localPaint);
    return localBitmap;
  }
  
  public static Bitmap createBitmapWithColorFilter(Drawable paramDrawable, ColorFilter paramColorFilter)
  {
    return createBitmapWithColorFilter(createBitmapFromDrawable(paramDrawable), paramColorFilter);
  }
  
  public static int dip2px(Context paramContext, int paramInt)
  {
    return Math.round(TypedValue.applyDimension(1, paramInt, paramContext.getResources().getDisplayMetrics()));
  }
  
  public static int getFontSizeFromDip(Context paramContext, int paramInt)
  {
    if (computedFontSizeCache.get(paramInt, -1) != -1) {
      return computedFontSizeCache.get(paramInt);
    }
    return Integer.valueOf(computeFontSizeFromFontHeightDip(paramContext, paramInt)).intValue();
  }
  
  public static int multiplyColor(int paramInt1, int paramInt2)
  {
    return -16777216 + ((Math.round((paramInt1 & 0xFF) * (paramInt2 & 0xFF) / 255) & 0xFF) + ((Math.round((paramInt1 >> 8 & 0xFF) * (paramInt2 >> 8 & 0xFF) / 255) & 0xFF) << 8) + ((Math.round((paramInt1 >> 16 & 0xFF) * (paramInt2 >> 16 & 0xFF) / 255) & 0xFF) << 16));
  }
  
  public static void reportIgnoredStyleProperty(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_ignoredstyleproperty) + paramString, "", 0));
  }
  
  public static void reportInvalidComponent(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_invalidcomponent) + paramString, "", 0));
  }
  
  public static void reportInvalidContainer(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_invalidcontainer) + paramString, "", 0));
  }
  
  public static void reportInvalidJSONStructure(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_invalidjsonstructure) + paramString, "", 0));
  }
  
  public static void reportInvalidStyleProperty(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_invalidstyleproperty) + paramString, "", 0));
  }
  
  public static void reportJSONParseError(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_jsonparsererror) + paramString, "", 0));
  }
  
  public static void reportUndefinedProperty(Context paramContext, String paramString)
  {
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_undefinedproperty) + paramString, "", 0));
  }
  
  public static Bitmap resizeBitmap(Bitmap paramBitmap, int paramInt)
  {
    Matrix localMatrix = new Matrix();
    float f = paramInt / paramBitmap.getHeight();
    localMatrix.postScale(f, f);
    return Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
  }
  
  public static Bitmap resizeBitmap(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
    return Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
  }
  
  public static Bitmap resizeButtonImageBitmap(DisplayMetrics paramDisplayMetrics, Bitmap paramBitmap)
  {
    Bitmap localBitmap;
    if (densityDpi == 240) {
      localBitmap = resizeBitmap(paramBitmap, (int)Math.round(paramBitmap.getWidth() * 0.75D), (int)Math.round(paramBitmap.getHeight() * 0.75D));
    }
    do
    {
      return localBitmap;
      if (densityDpi == 160) {
        return resizeBitmap(paramBitmap, (int)Math.round(paramBitmap.getWidth() * 0.5D), (int)Math.round(paramBitmap.getHeight() * 0.5D));
      }
      localBitmap = paramBitmap;
    } while (densityDpi != 120);
    return resizeBitmap(paramBitmap, (int)Math.round(paramBitmap.getWidth() * 0.375D), (int)Math.round(paramBitmap.getHeight() * 0.375D));
  }
  
  public static void updateJSONObject(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    Iterator localIterator = paramJSONObject2.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        paramJSONObject1.put(str, paramJSONObject2.get(str));
      }
      catch (JSONException localJSONException) {}
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.UIUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */