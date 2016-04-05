package mobi.monaca.framework.nativeui;

import android.content.Context;
import java.util.Iterator;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.exception.ConversionException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.ValueNotInRangeException;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.utils.TimeStamp;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;
import org.json.JSONObject;

public class UIValidator
{
  public static int parseAndValidateColor(Context paramContext, String paramString1, String paramString2, String paramString3, JSONObject paramJSONObject)
    throws ConversionException
  {
    paramContext = paramJSONObject.optString(paramString2, paramString3);
    try
    {
      int i = UIUtil.buildColor(paramContext);
      return i;
    }
    catch (IllegalArgumentException paramString3)
    {
      throw new ConversionException(paramString1, paramString2, paramContext, MonacaApplication.getStringFromResource(R.string.nc_color));
    }
  }
  
  public static float parseAndValidateFloat(Context paramContext, String paramString1, String paramString2, String paramString3, JSONObject paramJSONObject, float paramFloat1, float paramFloat2)
    throws ValueNotInRangeException, ConversionException
  {
    paramContext = paramString3;
    if (paramJSONObject.has(paramString2)) {
      paramContext = paramJSONObject.optString(paramString2);
    }
    float f;
    try
    {
      f = Float.parseFloat(paramContext);
      if ((f < paramFloat1) || (f > paramFloat2)) {
        throw new ValueNotInRangeException(paramString1, paramString2, paramContext, MonacaApplication.getStringFromResource(R.string.nc_bracket_left) + paramFloat1 + MonacaApplication.getStringFromResource(R.string.nc_dash) + paramFloat2 + MonacaApplication.getStringFromResource(R.string.nc_bracket_right));
      }
    }
    catch (IllegalArgumentException paramString3)
    {
      throw new ConversionException(paramString1, paramString2, paramContext, MonacaApplication.getStringFromResource(R.string.nc_float));
    }
    return f;
  }
  
  public static int parseAndValidateInt(Context paramContext, String paramString1, String paramString2, String paramString3, JSONObject paramJSONObject, int paramInt1, int paramInt2)
    throws ValueNotInRangeException, ConversionException
  {
    paramContext = paramString3;
    if (paramJSONObject.has(paramString2)) {
      paramContext = paramJSONObject.optString(paramString2);
    }
    int i;
    try
    {
      i = Integer.parseInt(paramContext);
      if ((i < paramInt1) || (i > paramInt2)) {
        throw new ValueNotInRangeException(paramString1, paramString2, paramContext, MonacaApplication.getStringFromResource(R.string.nc_bracket_left) + paramInt1 + MonacaApplication.getStringFromResource(R.string.nc_dash) + paramInt2 + MonacaApplication.getStringFromResource(R.string.nc_bracket_right));
      }
    }
    catch (IllegalArgumentException paramString3)
    {
      throw new ConversionException(paramString1, paramString2, paramContext, MonacaApplication.getStringFromResource(R.string.nc_integer));
    }
    return i;
  }
  
  public static void reportException(Context paramContext, NativeUIException paramNativeUIException)
  {
    paramNativeUIException.printStackTrace();
    MyLog.sendBroadcastDebugLog(paramContext, new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, MonacaApplication.getStringFromResource(R.string.nc_report_exception_prefix) + paramNativeUIException.getMessage(), "", 0));
  }
  
  public static void validateKey(Context paramContext, String paramString, JSONObject paramJSONObject, String[] paramArrayOfString)
    throws KeyNotValidException
  {
    paramContext = paramJSONObject.keys();
    while (paramContext.hasNext())
    {
      int j = 0;
      paramJSONObject = (String)paramContext.next();
      int i = 0;
      while (i < paramArrayOfString.length)
      {
        if (paramJSONObject.equalsIgnoreCase(paramArrayOfString[i])) {
          j = 1;
        }
        i += 1;
      }
      if (j == 0) {
        throw new KeyNotValidException(paramString, paramJSONObject, paramArrayOfString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.UIValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */