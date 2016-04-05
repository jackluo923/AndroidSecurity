package mobi.monaca.framework.nativeui.component;

import android.view.View;
import android.widget.FrameLayout;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class NullComponent
  extends ToolbarComponent
{
  protected View view;
  
  public NullComponent(UIContext paramUIContext)
    throws KeyNotValidException, DuplicateIDException, JSONException
  {
    super(paramUIContext, new JSONObject());
    view = new FrameLayout(paramUIContext);
    view.setVisibility(8);
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_null);
  }
  
  public JSONObject getDefaultStyle()
  {
    return null;
  }
  
  public String[] getValidKeys()
  {
    return null;
  }
  
  public View getView()
  {
    return view;
  }
  
  public void updateStyle(JSONObject paramJSONObject) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.NullComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */