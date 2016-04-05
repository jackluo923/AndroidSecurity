package mobi.monaca.framework.nativeui;

import android.view.View;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class UIEventer
  extends Component
{
  protected static final String[] validKeys = { MonacaApplication.getStringFromResource(R.string.nc_key_ontapbackbutton), MonacaApplication.getStringFromResource(R.string.nc_key_ontap) };
  protected JSONObject event;
  
  public UIEventer(UIContext paramUIContext, JSONObject paramJSONObject)
    throws KeyNotValidException, DuplicateIDException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    event = paramJSONObject;
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_key_event);
  }
  
  public JSONObject getDefaultStyle()
  {
    return null;
  }
  
  public String[] getValidKeys()
  {
    return validKeys;
  }
  
  public View getView()
  {
    return null;
  }
  
  public boolean hasOnTapBackButtonAction()
  {
    return !event.optString(MonacaApplication.getStringFromResource(R.string.nc_key_ontapbackbutton), "").equals("");
  }
  
  public void onTapBackButton()
  {
    String str = event.optString(MonacaApplication.getStringFromResource(R.string.nc_key_ontapbackbutton), "");
    if (!str.equals("")) {
      uiContext.react(MonacaApplication.getStringFromResource(R.string.js_scheme) + str);
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.UIEventer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */