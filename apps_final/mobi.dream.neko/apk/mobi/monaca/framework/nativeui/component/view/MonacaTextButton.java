package mobi.monaca.framework.nativeui.component.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.component.ButtonBackgroundDrawable;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class MonacaTextButton
  extends Button
{
  protected Context context;
  protected JSONObject style;
  
  public MonacaTextButton(Context paramContext)
  {
    super(paramContext);
    context = paramContext;
    style = new JSONObject();
  }
  
  public MonacaTextButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    context = paramContext;
    style = buildStyleFromAttributeSet(paramAttributeSet);
  }
  
  protected JSONObject buildStyleFromAttributeSet(AttributeSet paramAttributeSet)
  {
    JSONObject localJSONObject = new JSONObject();
    String str = paramAttributeSet.getAttributeValue(MonacaApplication.getStringFromResource(R.string.android_schemas_url), MonacaApplication.getStringFromResource(R.string.nc_style_text));
    if (str != null)
    {
      paramAttributeSet = str;
      if (str.startsWith(MonacaApplication.getStringFromResource(R.string.at))) {
        paramAttributeSet = context.getResources().getString(Integer.parseInt(str.substring(1), 10));
      }
    }
    try
    {
      localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_text), paramAttributeSet);
      return localJSONObject;
    }
    catch (JSONException paramAttributeSet) {}
    return localJSONObject;
  }
  
  protected void style()
    throws NativeUIException
  {
    int i = UIValidator.parseAndValidateColor(context, MonacaApplication.getStringFromResource(R.string.nc_parse_buttonstyle), MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_default_gray), style);
    int j = UIValidator.parseAndValidateColor(context, MonacaApplication.getStringFromResource(R.string.nc_parse_buttonstyle), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white), style);
    ColorStateList localColorStateList = new ColorStateList(new int[][] { { 16842919 }, { -16842919 } }, new int[] { i, j });
    i = UIValidator.parseAndValidateColor(context, MonacaApplication.getStringFromResource(R.string.nc_parse_buttonstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black), style);
    ButtonBackgroundDrawable localButtonBackgroundDrawable = new ButtonBackgroundDrawable(context, i);
    float f = UIValidator.parseAndValidateFloat(context, MonacaApplication.getStringFromResource(R.string.nc_parse_buttonstyle), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_float_one), style, 0.0F, 1.0F);
    localButtonBackgroundDrawable.setAlpha(UIUtil.buildOpacity(f));
    setBackgroundDrawable(new ButtonDrawable(localButtonBackgroundDrawable));
    setLayoutParams(new FrameLayout.LayoutParams(-2, localButtonBackgroundDrawable.getIntrinsicHeight()));
    setText(style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_text), ""));
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true))
    {
      i = 0;
      setVisibility(i);
      setTextSize(0, UIUtil.getFontSizeFromDip(context, 14));
      setTextColor(localColorStateList.withAlpha(UIUtil.buildOpacity(f)));
      if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false)) {
        break label380;
      }
    }
    label380:
    for (boolean bool = true;; bool = false)
    {
      setEnabled(bool);
      if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false))
      {
        setTextColor(-6710887);
        setTextColor(getTextColors().withAlpha(UIUtil.buildOpacity(f)));
      }
      setShadowLayer(1.0F, 0.0F, -1.0F, -16777216);
      return;
      i = 8;
      break;
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.view.MonacaTextButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */