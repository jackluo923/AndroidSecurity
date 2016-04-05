package mobi.monaca.framework.nativeui;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class ComponentEventer
  extends Component
{
  protected static final String[] VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_key_ontap), MonacaApplication.getStringFromResource(R.string.nc_key_onsearch), MonacaApplication.getStringFromResource(R.string.nc_key_onchange) };
  protected UIContext context;
  protected JSONObject event;
  
  public ComponentEventer(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    context = paramUIContext;
    paramUIContext = paramJSONObject;
    if (paramJSONObject == null) {
      paramUIContext = new JSONObject();
    }
    event = paramUIContext;
  }
  
  public String getComponentName()
  {
    return ComponentEventer.class.getSimpleName();
  }
  
  public JSONObject getDefaultStyle()
  {
    return null;
  }
  
  public String[] getValidKeys()
  {
    return VALID_KEYS;
  }
  
  public View getView()
  {
    return null;
  }
  
  public void onChange()
  {
    try
    {
      context.react(MonacaApplication.getStringFromResource(R.string.js_scheme) + event.getString(MonacaApplication.getStringFromResource(R.string.nc_key_onchange)));
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onSearch(View paramView, String paramString)
  {
    ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    try
    {
      paramView = new JSONObject();
      paramView.put(MonacaApplication.getStringFromResource(R.string.nc_key_word), paramString);
      context.react(String.format(MonacaApplication.getStringFromResource(R.string.nc_script_onsearch_insert), new Object[] { paramView.toString() }));
      context.react(MonacaApplication.getStringFromResource(R.string.js_scheme) + event.getString(MonacaApplication.getStringFromResource(R.string.nc_key_onsearch)));
      return;
    }
    catch (Exception paramView) {}
  }
  
  public void onTap()
  {
    try
    {
      context.react(MonacaApplication.getStringFromResource(R.string.js_scheme) + event.getString("onTap"));
      return;
    }
    catch (Exception localException) {}
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.ComponentEventer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */