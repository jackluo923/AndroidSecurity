package mobi.monaca.framework.nativeui.component;

import android.text.TextUtils;
import android.view.View;
import java.util.Iterator;
import java.util.Map;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class Component
{
  public static final int BIG_TITLE_TEXT_DIP = 18;
  public static final int BUTTON_TEXT_DIP = 14;
  public static final int LABEL_TEXT_DIP = 14;
  public static final int SEGMENT_TEXT_DIP = 14;
  public static final int SPINNER_TEXT_DIP = 10;
  public static final int SUBTITLE_TEXT_DIP = 12;
  public static final int TAB_BADGE_TEXT_DIP = 9;
  public static final int TAB_TEXT_DIP = 14;
  public static final int TITLE_TEXT_DIP = 18;
  protected JSONObject componentJSON;
  protected JSONObject style;
  protected UIContext uiContext;
  
  public Component(UIContext paramUIContext, JSONObject paramJSONObject)
    throws KeyNotValidException, DuplicateIDException, JSONException
  {
    uiContext = paramUIContext;
    paramUIContext = paramJSONObject;
    if (paramJSONObject == null) {
      paramUIContext = new JSONObject();
    }
    componentJSON = paramUIContext;
    addIDtoComponentIDsMap();
    mixStyleWithDefault();
    validate();
  }
  
  private void mixStyleWithDefault()
    throws JSONException
  {
    style = getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_style));
    if (style != null) {}
    Object localObject2;
    JSONObject localJSONObject2;
    for (JSONObject localJSONObject1 = style;; localJSONObject2 = new JSONObject())
    {
      style = localJSONObject1;
      localJSONObject1 = getDefaultStyle();
      localObject1 = style.keys();
      for (;;)
      {
        if (!((Iterator)localObject1).hasNext()) {
          break label104;
        }
        localObject2 = (String)((Iterator)localObject1).next();
        try
        {
          localJSONObject1.put((String)localObject2, style.get((String)localObject2));
        }
        catch (JSONException localJSONException)
        {
          throw new RuntimeException(localJSONException);
        }
      }
    }
    label104:
    Object localObject1 = getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle));
    if (localObject1 != null)
    {
      localObject2 = ((JSONObject)localObject1).keys();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        localJSONObject2.put(str, ((JSONObject)localObject1).get(str));
      }
    }
    style = localJSONObject2;
  }
  
  private void validateKeyNotValid()
    throws KeyNotValidException
  {
    UIValidator.validateKey(uiContext, getComponentName(), componentJSON, getValidKeys());
  }
  
  protected void addIDtoComponentIDsMap()
    throws DuplicateIDException
  {
    Map localMap = uiContext.getComponentIDsMap();
    String str = getComponentJSON().optString(MonacaApplication.getStringFromResource(R.string.nc_key_id));
    if (!TextUtils.isEmpty(str))
    {
      if (!localMap.containsKey(str)) {
        localMap.put(str, this);
      }
    }
    else {
      return;
    }
    throw new DuplicateIDException(str, new String[] { ((Component)localMap.get(str)).getComponentName(), getComponentName() });
  }
  
  public JSONObject getComponentJSON()
  {
    return componentJSON;
  }
  
  public abstract String getComponentName();
  
  public abstract JSONObject getDefaultStyle();
  
  public JSONObject getStyle()
  {
    return style;
  }
  
  public abstract String[] getValidKeys();
  
  public abstract View getView();
  
  public abstract void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException;
  
  public void validate()
    throws KeyNotValidException
  {
    validateKeyNotValid();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.Component
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */