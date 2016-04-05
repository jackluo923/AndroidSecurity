package mobi.monaca.framework.nativeui.container;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.io.IOException;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.NativeUIIOException;
import mobi.monaca.framework.psedo.R.drawable;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class TabbarItem
  extends Component
{
  protected static final String[] STYLE_VALID_KYES = { MonacaApplication.getStringFromResource(R.string.nc_style_text), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_image), MonacaApplication.getStringFromResource(R.string.nc_style_badgetext) };
  protected static final String[] TABBAR_ITEM_VALID_KYES = { MonacaApplication.getStringFromResource(R.string.nc_key_component), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.transition_link), MonacaApplication.getStringFromResource(R.string.nc_key_id), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle) };
  protected Drawable drawable;
  protected Handler handler;
  protected String link;
  protected TabbarItemView view;
  
  public TabbarItem(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    UIValidator.validateKey(paramUIContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), style, STYLE_VALID_KYES);
    view = new TabbarItemView(paramUIContext);
    link = paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.transition_link));
    handler = new Handler();
    style();
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
  
  public String getComponentName()
  {
    return TabbarItem.class.getSimpleName();
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.tabbarItem();
  }
  
  public String[] getValidKeys()
  {
    return TABBAR_ITEM_VALID_KYES;
  }
  
  public TabbarItemView getView()
  {
    return view;
  }
  
  protected void style()
    throws NativeUIIOException
  {
    view.setText(style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_text)));
    view.setBadgeText(style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_badgetext)));
    Bitmap localBitmap = readImage(MonacaApplication.getStringFromResource(R.string.nc_style_image));
    if (localBitmap != null) {
      view.setIconBitmap(localBitmap);
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIIOException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
  
  public class TabbarItemView
    extends LinearLayout
  {
    protected TextView badgeTextView;
    protected ImageView imageView;
    protected boolean isSelected = true;
    protected TextView textView;
    
    public TabbarItemView(UIContext paramUIContext)
    {
      super();
      setOrientation(1);
      this$1 = new FrameLayout(paramUIContext);
      setBackgroundResource(R.drawable.monaca_selected_tab_bg);
      textView = new TextView(paramUIContext);
      textView.setGravity(17);
      textView.setTextColor(-1);
      textView.setTextSize(0, paramUIContext.getFontSizeFromDip(14));
      textView.setShadowLayer(1.0F, 0.0F, -1.0F, -872415232);
      imageView = new ImageView(paramUIContext);
      imageView.setPadding(UIUtil.dip2px(paramUIContext, 16), 0, UIUtil.dip2px(paramUIContext, 16), 0);
      imageView.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
      badgeTextView = new TextView(paramUIContext);
      badgeTextView.setGravity(17);
      badgeTextView.setVisibility(8);
      badgeTextView.setBackgroundColor(-6750208);
      badgeTextView.setTextColor(-1);
      badgeTextView.setTextSize(0, paramUIContext.getFontSizeFromDip(9));
      badgeTextView.setShadowLayer(1.0F, 0.0F, 1.0F, -1728053248);
      badgeTextView.setTypeface(Typeface.DEFAULT_BOLD);
      badgeTextView.setBackgroundDrawable(paramUIContext.getResources().getDrawable(R.drawable.monaca_tab_badge));
      addView(imageView, new FrameLayout.LayoutParams(-2, -2));
      addView(badgeTextView, new FrameLayout.LayoutParams(-2, -2, 5));
      setGravity(17);
      addView(TabbarItem.this, new LinearLayout.LayoutParams(-2, -2, 17.0F));
      addView(textView, new LinearLayout.LayoutParams(-2, -2, 17.0F));
      switchToUnselected();
    }
    
    protected void finalize()
      throws Throwable
    {
      super.finalize();
      imageView.setImageDrawable(null);
    }
    
    public void initializeSelected()
    {
      if (!isSelected)
      {
        getBackground().setAlpha(51);
        textView.setTextColor(-1);
        isSelected = true;
        uiContext.changeCurrentUri(link);
      }
      imageView.setAlpha(255);
      invalidate();
    }
    
    public boolean isSelected()
    {
      return isSelected;
    }
    
    public void setBadgeText(String paramString)
    {
      badgeTextView.setText(paramString);
      if (paramString.length() == 0)
      {
        badgeTextView.setVisibility(8);
        return;
      }
      badgeTextView.setVisibility(0);
    }
    
    public void setIconBitmap(Bitmap paramBitmap)
    {
      paramBitmap = UIUtil.resizeBitmap(paramBitmap, UIUtil.dip2px(uiContext, 28));
      paramBitmap = new BitmapDrawable(uiContext.getResources(), paramBitmap);
      if (isSelected()) {}
      for (int i = -1;; i = -1711276033)
      {
        paramBitmap.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        imageView.setImageDrawable(paramBitmap);
        return;
      }
    }
    
    public void setText(String paramString)
    {
      textView.setText(paramString);
    }
    
    public void setTextColor(int paramInt)
    {
      textView.setTextColor(paramInt);
    }
    
    public void switchToSelected()
    {
      if (!isSelected)
      {
        getBackground().setAlpha(51);
        textView.setTextColor(-1);
        isSelected = true;
        handler.post(new Runnable()
        {
          public void run()
          {
            uiContext.loadRelativePathWithoutUIFile(link);
          }
        });
      }
      imageView.setAlpha(255);
      invalidate();
    }
    
    public void switchToUnselected()
    {
      if (isSelected)
      {
        getBackground().setAlpha(0);
        textView.setTextColor(-1711276033);
        isSelected = false;
      }
      imageView.setAlpha(102);
      invalidate();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.TabbarItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */