package mobi.monaca.framework.nativeui.container;

import android.view.View;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class Container
  extends Component
{
  public Container(UIContext paramUIContext, JSONObject paramJSONObject)
    throws KeyNotValidException, DuplicateIDException, JSONException
  {
    super(paramUIContext, paramJSONObject);
  }
  
  public abstract View getShadowView();
  
  public abstract View getView();
  
  public abstract boolean isTransparent();
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.Container
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */