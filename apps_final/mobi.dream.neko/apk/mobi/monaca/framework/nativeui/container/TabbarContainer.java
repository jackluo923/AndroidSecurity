package mobi.monaca.framework.nativeui.container;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import mobi.monaca.framework.InternalSettings;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.component.view.ContainerShadowView;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.RequiredKeyNotFoundException;
import mobi.monaca.framework.psedo.R.drawable;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TabbarContainer
  extends Container
{
  protected static final String[] STYLE_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_style_visibility), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_activeindex) };
  protected static final String[] TAB_BAR_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_key_container), MonacaApplication.getStringFromResource(R.string.nc_key_id), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_items) };
  protected static final int mContainerViewID = 1002;
  protected Integer oldActiveIndex = null;
  private ContainerShadowView shadowView;
  protected TabbarContainerView view;
  
  public TabbarContainer(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    UIValidator.validateKey(paramUIContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), style, STYLE_VALID_KEYS);
    view = new TabbarContainerView(paramUIContext);
    view.setId(1002);
    shadowView = new ContainerShadowView(paramUIContext, false);
    buildChildren();
    style();
  }
  
  private void buildChildren()
    throws NativeUIException, JSONException
  {
    JSONArray localJSONArray = componentJSON.optJSONArray(MonacaApplication.getStringFromResource(R.string.nc_key_items));
    if (localJSONArray != null)
    {
      int i = 0;
      while (i < localJSONArray.length())
      {
        TabbarItem localTabbarItem = new TabbarItem(uiContext, localJSONArray.optJSONObject(i));
        view.addTabbarItemView(localTabbarItem.getView());
        i += 1;
      }
    }
    throw new RequiredKeyNotFoundException(getComponentName(), MonacaApplication.getStringFromResource(R.string.nc_key_items));
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    if ((view != null) && (view.getContentView() != null)) {
      view.getContentView().setBackgroundDrawable(null);
    }
  }
  
  public String getComponentName()
  {
    return "TabBar";
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.tabbar();
  }
  
  public View getShadowView()
  {
    return shadowView;
  }
  
  public String[] getValidKeys()
  {
    return TAB_BAR_VALID_KEYS;
  }
  
  public View getView()
  {
    return view;
  }
  
  public boolean isTransparent()
  {
    return style.optDouble(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D) <= 0.999D;
  }
  
  protected void style()
    throws NativeUIException
  {
    view.resetBackground();
    Object localObject = view;
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true)) {}
    for (int i = 0;; i = 8)
    {
      ((TabbarContainerView)localObject).setVisibility(i);
      localObject = new PorterDuffColorFilter(UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black), style), PorterDuff.Mode.SCREEN);
      localObject = UIUtil.createBitmapWithColorFilter(view.getContentView().getBackground(), (ColorFilter)localObject);
      view.getContentView().setBackgroundResource(R.drawable.monaca_tabbar_bg);
      view.getContentView().setBackgroundDrawable(new BitmapDrawable(uiContext.getResources(), (Bitmap)localObject));
      float f = UIValidator.parseAndValidateFloat(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), "1.0", style, 0.0F, 1.0F);
      view.getContentView().getBackground().setAlpha(UIUtil.buildOpacity(f));
      i = UIValidator.parseAndValidateInt(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), "activeIndex", "0", style, 0, view.getItemSize() - 1);
      if ((oldActiveIndex != null) && (i != oldActiveIndex.intValue())) {
        view.setActiveIndex(style.optInt("activeIndex", 0));
      }
      double d = f * UIValidator.parseAndValidateFloat(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), "shadowOpacity", "0.3", style, 0.0F, 1.0F);
      getShadowView().getBackground().setAlpha(UIUtil.buildOpacity(d));
      return;
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    if (style.has(MonacaApplication.getStringFromResource(R.string.nc_style_activeindex))) {}
    for (Integer localInteger = Integer.valueOf(style.optInt(MonacaApplication.getStringFromResource(R.string.nc_style_activeindex), 0));; localInteger = null)
    {
      oldActiveIndex = localInteger;
      UIUtil.updateJSONObject(style, paramJSONObject);
      style();
      return;
    }
  }
  
  public class TabbarContainerView
    extends LinearLayout
    implements View.OnClickListener
  {
    protected LinearLayout content;
    protected TabbarItem.TabbarItemView currentItemView = null;
    protected ArrayList<TabbarItem.TabbarItemView> items = new ArrayList();
    
    public TabbarContainerView(UIContext paramUIContext)
    {
      super();
      setOrientation(1);
      content = new LinearLayout(paramUIContext);
      content.setOrientation(0);
      content.setGravity(17);
      content.setBackgroundResource(R.drawable.monaca_tabbar_bg);
      if (getSettingsdisableUIContainerBorder) {}
      for (;;)
      {
        addView(createBorderView(), new LinearLayout.LayoutParams(-1, i));
        addView(content, new LinearLayout.LayoutParams(-1, -2));
        return;
        i = 1;
      }
    }
    
    public void addTabbarItemView(TabbarItem.TabbarItemView paramTabbarItemView)
    {
      items.add(paramTabbarItemView);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      localLayoutParams.setMargins(0, 0, 0, 0);
      gravity = 16;
      weight = 1.0F;
      content.addView(paramTabbarItemView, localLayoutParams);
      int i = style.optInt("activeIndex", 0);
      if (items.size() - 1 == i)
      {
        paramTabbarItemView.initializeSelected();
        currentItemView = paramTabbarItemView;
      }
      paramTabbarItemView.setOnClickListener(this);
    }
    
    protected View createBorderView()
    {
      FrameLayout localFrameLayout = new FrameLayout(uiContext);
      localFrameLayout.setBackgroundColor(-16777216);
      return localFrameLayout;
    }
    
    public View getContentView()
    {
      return content;
    }
    
    public int getItemSize()
    {
      return items.size();
    }
    
    public void onClick(View paramView)
    {
      paramView = (TabbarItem.TabbarItemView)paramView;
      paramView.switchToSelected();
      paramView.requestFocus();
      int i;
      if (items.contains(paramView)) {
        i = items.indexOf(paramView);
      }
      try
      {
        style.put("activeIndex", i);
        if (currentItemView != null)
        {
          currentItemView.switchToUnselected();
          currentItemView = paramView;
          paramView.switchToSelected();
        }
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
    }
    
    public void resetBackground()
    {
      content.setBackgroundResource(R.drawable.monaca_tabbar_bg);
    }
    
    public void setActiveIndex(int paramInt)
    {
      int i = paramInt;
      if (items.size() <= paramInt) {
        i = 0;
      }
      if (currentItemView != null)
      {
        currentItemView.switchToUnselected();
        currentItemView = null;
      }
      if (items.size() - 1 >= i)
      {
        currentItemView = ((TabbarItem.TabbarItemView)items.get(i));
        currentItemView.switchToSelected();
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.TabbarContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */