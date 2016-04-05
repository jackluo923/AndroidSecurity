package mobi.monaca.framework.nativeui.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import java.io.IOException;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.ComponentEventer;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.NonScaleBitmapDrawable;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.component.view.MonacaButton;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.NativeUIIOException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class ButtonComponent
  extends ToolbarComponent
{
  protected static final String[] BUTTON_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_key_component), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_id), MonacaApplication.getStringFromResource(R.string.nc_key_event) };
  protected static final String[] STYLE_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_style_visibility), MonacaApplication.getStringFromResource(R.string.nc_style_disable), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_style_image), MonacaApplication.getStringFromResource(R.string.nc_style_innerimage), MonacaApplication.getStringFromResource(R.string.nc_style_text) };
  protected MonacaButton button;
  protected ComponentEventer eventer;
  protected MonacaImageButton imageButton;
  protected FrameLayout layout;
  
  public ButtonComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    UIValidator.validateKey(paramUIContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), style, getStyleValidKeys());
    buildEventer();
    initView();
  }
  
  private void buildEventer()
    throws NativeUIException, JSONException
  {
    eventer = new ComponentEventer(uiContext, getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_event)));
  }
  
  private Bitmap readImage(String paramString)
    throws NativeUIIOException
  {
    String str = style.optString(paramString);
    if (!TextUtils.isEmpty(str)) {
      try
      {
        Bitmap localBitmap = uiContext.readScaledBitmap(str);
        return localBitmap;
      }
      catch (IOException localIOException)
      {
        throw new NativeUIIOException(getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), paramString, str, localIOException.getMessage());
      }
    }
    return null;
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    imageButton.setBackgroundDrawable(null);
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_button);
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.button();
  }
  
  protected String[] getStyleValidKeys()
  {
    return STYLE_VALID_KEYS;
  }
  
  public ComponentEventer getUIEventer()
  {
    return eventer;
  }
  
  public String[] getValidKeys()
  {
    return BUTTON_VALID_KEYS;
  }
  
  public View getView()
  {
    return layout;
  }
  
  protected void initView()
    throws NativeUIException
  {
    layout = new FrameLayout(uiContext);
    layout.setClickable(true);
    button = new MonacaButton(uiContext);
    button.getButton().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        eventer.onTap();
      }
    });
    button.getInnerImageButton().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        eventer.onTap();
      }
    });
    imageButton = new MonacaImageButton(uiContext);
    imageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        eventer.onTap();
      }
    });
    layout.addView(button);
    layout.addView(imageButton);
    style();
  }
  
  protected void style()
    throws NativeUIException
  {
    if (style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_image)).length() > 0)
    {
      button.setVisibility(8);
      imageButton.setVisibility(0);
      styleImageButton();
      return;
    }
    button.setVisibility(0);
    imageButton.setVisibility(8);
    styleButton();
  }
  
  protected void styleButton()
    throws NativeUIException
  {
    button.updateStyle(style);
    button.style();
    Bitmap localBitmap = readImage(MonacaApplication.getStringFromResource(R.string.nc_style_innerimage));
    if (localBitmap != null) {
      button.getInnerImageButton().setImageBitmap(localBitmap);
    }
  }
  
  protected void styleImageButton()
    throws NativeUIIOException
  {
    Object localObject = imageButton;
    int i;
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true))
    {
      i = 0;
      ((MonacaImageButton)localObject).setVisibility(i);
      imageButton.setBackgroundColor(0);
      localObject = imageButton;
      if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false)) {
        break label151;
      }
    }
    label151:
    for (boolean bool = true;; bool = false)
    {
      ((MonacaImageButton)localObject).setEnabled(bool);
      Bitmap localBitmap = readImage(MonacaApplication.getStringFromResource(R.string.nc_style_image));
      if (localBitmap == null) {
        break label157;
      }
      localObject = localBitmap;
      if (imageButton.getHeight() > 0) {
        localObject = UIUtil.resizeBitmap(localBitmap, imageButton.getHeight());
      }
      localObject = new ImageButtonDrawable(new NonScaleBitmapDrawable((Bitmap)localObject), null);
      imageButton.setBackgroundDrawable((Drawable)localObject);
      imageButton.setPadding(0, 0, 0, 0);
      return;
      i = 8;
      break;
    }
    label157:
    imageButton.setBackgroundDrawable(null);
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
  
  public static class ButtonDrawable
    extends LayerDrawable
  {
    protected int backgroundColor;
    protected int pressedBackgroundColor;
    
    private ButtonDrawable(Drawable paramDrawable)
    {
      super();
    }
    
    public boolean isStateful()
    {
      return true;
    }
    
    protected boolean onStateChange(int[] paramArrayOfInt)
    {
      int j = paramArrayOfInt.length;
      int i = 0;
      if (i < j)
      {
        if (paramArrayOfInt[i] == 16842919) {
          super.setColorFilter(1711276032, PorterDuff.Mode.MULTIPLY);
        }
        for (;;)
        {
          i += 1;
          break;
          super.clearColorFilter();
        }
      }
      return super.onStateChange(paramArrayOfInt);
    }
  }
  
  public class ImageButtonDrawable
    extends StateListDrawable
  {
    protected int backgroundColor;
    protected int pressedBackgroundColor;
    
    private ImageButtonDrawable(Drawable paramDrawable)
    {
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(uiContext.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
      this$1 = new BitmapDrawable(uiContext.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
      addState(new int[] { 16842919 }, localBitmapDrawable);
      addState(new int[] { -16842910 }, ButtonComponent.this);
      this$1 = paramDrawable.mutate();
      addState(new int[0], ButtonComponent.this);
    }
  }
  
  public class MonacaImageButton
    extends Button
  {
    public MonacaImageButton(Context paramContext)
    {
      super();
    }
    
    private void resizeImage()
      throws NativeUIIOException
    {
      Bitmap localBitmap = ButtonComponent.this.readImage(MonacaApplication.getStringFromResource(R.string.nc_style_image));
      if (localBitmap != null)
      {
        Object localObject = localBitmap;
        if (getMeasuredHeight() > 0) {
          localObject = UIUtil.resizeBitmap(localBitmap, getMeasuredHeight());
        }
        localObject = new ButtonComponent.ImageButtonDrawable(ButtonComponent.this, new NonScaleBitmapDrawable((Bitmap)localObject), null);
        imageButton.setBackgroundDrawable((Drawable)localObject);
        imageButton.setPadding(0, 0, 0, 0);
        return;
      }
      imageButton.setBackgroundDrawable(null);
    }
    
    protected void onMeasure(int paramInt1, int paramInt2)
    {
      try
      {
        Bitmap localBitmap = ButtonComponent.this.readImage(MonacaApplication.getStringFromResource(R.string.nc_style_image));
        if (localBitmap != null)
        {
          int i = localBitmap.getWidth();
          int j = localBitmap.getHeight();
          setMeasuredDimension(resolveSize(i, paramInt1), resolveSize(j, paramInt2));
          return;
        }
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
      catch (NativeUIIOException localNativeUIIOException)
      {
        localNativeUIIOException.printStackTrace();
        super.onMeasure(paramInt1, paramInt2);
      }
    }
    
    protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      try
      {
        resizeImage();
        super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
      catch (NativeUIIOException localNativeUIIOException)
      {
        for (;;)
        {
          localNativeUIIOException.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.ButtonComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */