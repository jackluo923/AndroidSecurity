package mobi.monaca.framework.nativeui.component.view;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.component.ButtonBackgroundDrawable;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONObject;

public class MonacaButton
  extends FrameLayout
{
  protected MonacaTextButton button;
  protected Context context;
  protected ImageButton innerImageButton;
  protected JSONObject style;
  
  public MonacaButton(Context paramContext)
    throws NativeUIException
  {
    super(paramContext);
    context = paramContext;
    style = new JSONObject();
    button = new MonacaTextButton(paramContext);
    innerImageButton = new ImageButton(paramContext);
    addView(button);
    addView(innerImageButton);
    style();
  }
  
  public MonacaButton(Context paramContext, AttributeSet paramAttributeSet)
    throws NativeUIException
  {
    super(paramContext);
    context = paramContext;
    style = new JSONObject();
    button = new MonacaTextButton(paramContext, paramAttributeSet);
    innerImageButton = new ImageButton(paramContext);
    addView(button);
    addView(innerImageButton);
    style();
  }
  
  public Button getButton()
  {
    return button;
  }
  
  public ImageButton getInnerImageButton()
  {
    return innerImageButton;
  }
  
  public void style()
    throws NativeUIException
  {
    if (style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_innerImage), "").equals(""))
    {
      button.setVisibility(0);
      innerImageButton.setVisibility(8);
      button.updateStyle(style);
      return;
    }
    innerImageButton.setVisibility(0);
    button.setVisibility(8);
    styleInnerImageButton();
  }
  
  protected void styleInnerImageButton()
    throws NativeUIException
  {
    boolean bool = false;
    int i = UIValidator.parseAndValidateColor(context, MonacaApplication.getStringFromResource(R.string.nc_parse_buttonstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black), style);
    Object localObject = new ButtonBackgroundDrawable(context, i);
    ((ButtonBackgroundDrawable)localObject).setAlpha(UIUtil.buildOpacity(UIValidator.parseAndValidateFloat(context, MonacaApplication.getStringFromResource(R.string.nc_parse_buttonstyle), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_float_one), style, 0.0F, 1.0F)));
    innerImageButton.setBackgroundDrawable(new ButtonDrawable((Drawable)localObject));
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true)) {}
    for (i = 0;; i = 8)
    {
      setVisibility(i);
      localObject = innerImageButton;
      if (!style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false)) {
        bool = true;
      }
      ((ImageButton)localObject).setEnabled(bool);
      return;
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
  
  public class ImageButtonDrawable
    extends StateListDrawable
  {
    protected int backgroundColor;
    protected int pressedBackgroundColor;
    
    private ImageButtonDrawable(Drawable paramDrawable)
    {
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(context.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
      this$1 = new BitmapDrawable(context.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
      addState(new int[] { 16842919 }, localBitmapDrawable);
      addState(new int[] { -16842910 }, MonacaButton.this);
      this$1 = paramDrawable.mutate();
      addState(new int[0], MonacaButton.this);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.view.MonacaButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */