package mobi.monaca.framework.nativeui.component;

import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ToolbarComponent
  extends Component
{
  public ToolbarComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws KeyNotValidException, DuplicateIDException, JSONException
  {
    super(paramUIContext, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.ToolbarComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */