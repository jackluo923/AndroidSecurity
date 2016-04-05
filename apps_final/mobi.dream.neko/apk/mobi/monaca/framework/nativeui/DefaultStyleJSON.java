package mobi.monaca.framework.nativeui;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONObject;

public class DefaultStyleJSON
{
  public static JSONObject backButton()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_default_activetextcolor));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_text), "");
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_forcevisibility), false);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject button()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_default_activetextcolor));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_text), "");
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject label()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_text), "");
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject page()
  {
    return new JSONObject();
  }
  
  public static JSONObject searchBox()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_focus), false);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_placeholder), "");
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject segment()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_activeindex), 0);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject tabbar()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_activeindex), 0);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject tabbarItem()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_text), "");
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public static JSONObject toolbar()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_title), "");
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_subtitle), "");
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_titlecolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_subtitlecolor), MonacaApplication.getStringFromResource(R.string.nc_default_white));
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_titlefontscale), 1.0D);
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_subtitlefontscale), 1.0D);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.DefaultStyleJSON
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */