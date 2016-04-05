package mobi.monaca.framework.nativeui.component;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class LabelComponent
  extends ToolbarComponent
{
  protected static final String[] LABEL_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_component), MonacaApplication.getStringFromResource(R.string.nc_key_id) };
  protected static final String[] STYLE_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_style_text) };
  protected TextView view;
  
  public LabelComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    view = new TextView(paramUIContext);
    view.setGravity(16);
    style();
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_label);
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.label();
  }
  
  public String[] getValidKeys()
  {
    return LABEL_VALID_KEYS;
  }
  
  public View getView()
  {
    return view;
  }
  
  protected void style()
    throws NativeUIException
  {
    view.setBackgroundColor(0);
    if (style.has(MonacaApplication.getStringFromResource(R.string.nc_style_text))) {
      view.setText(style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_text), ""));
    }
    TextView localTextView = view;
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true)) {}
    for (int i = 0;; i = 4)
    {
      localTextView.setVisibility(i);
      i = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white), style);
      view.setTextColor(i);
      float f = UIValidator.parseAndValidateFloat(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_float_one), style, 0.0F, 1.0F);
      view.setTextColor(view.getTextColors().withAlpha(UIUtil.buildOpacity(f)));
      view.setShadowLayer(1.0F, 0.0F, -1.0F, -872415232);
      view.setTextSize(0, uiContext.getFontSizeFromDip(14));
      view.setPadding(UIUtil.dip2px(uiContext, 3), UIUtil.dip2px(uiContext, 4), UIUtil.dip2px(uiContext, 3), UIUtil.dip2px(uiContext, 4));
      if (!style.has(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor))) {
        break;
      }
      i = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white), style);
      view.setBackgroundColor(i);
      view.getBackground().setAlpha(UIUtil.buildOpacity(f));
      return;
    }
    view.setBackgroundColor(0);
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.LabelComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */