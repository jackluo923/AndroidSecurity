package mobi.monaca.framework.nativeui.component;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class BackButtonComponent
  extends ButtonComponent
{
  protected static final String[] STYLE_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_style_visibility), MonacaApplication.getStringFromResource(R.string.nc_style_disable), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_style_image), MonacaApplication.getStringFromResource(R.string.nc_style_innerImage), MonacaApplication.getStringFromResource(R.string.nc_style_text), MonacaApplication.getStringFromResource(R.string.nc_style_forcevisibility) };
  
  public BackButtonComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    try
    {
      style.put(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_forcevisibility), false));
      style();
      uiContext.getPageComponent().setBackButtonEventer(eventer);
      return;
    }
    catch (JSONException paramUIContext)
    {
      throw new RuntimeException(paramUIContext);
    }
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_backbutton);
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.backButton();
  }
  
  protected String[] getStyleValidKeys()
  {
    return STYLE_VALID_KEYS;
  }
  
  protected void style()
    throws NativeUIException
  {
    super.style();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.BackButtonComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */