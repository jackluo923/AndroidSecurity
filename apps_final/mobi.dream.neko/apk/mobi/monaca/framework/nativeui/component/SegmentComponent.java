package mobi.monaca.framework.nativeui.component;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.ComponentEventer;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.RequiredKeyNotFoundException;
import mobi.monaca.framework.psedo.R.drawable;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SegmentComponent
  extends ToolbarComponent
{
  protected static final String[] SEGMENT_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_key_component), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_id), MonacaApplication.getStringFromResource(R.string.nc_key_event) };
  protected static final String[] STYLE_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_style_visibility), MonacaApplication.getStringFromResource(R.string.nc_style_disable), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_style_texts), MonacaApplication.getStringFromResource(R.string.nc_style_activeindex) };
  protected int backgroundColor = -11184811;
  protected ComponentEventer eventer;
  protected int pressedBackgroundColor;
  protected SegmentComponentView view;
  
  public SegmentComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    view = new SegmentComponentView(paramUIContext);
    UIValidator.validateKey(paramUIContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), style, STYLE_VALID_KEYS);
    buildEventer();
    style();
  }
  
  private void buildEventer()
    throws NativeUIException, JSONException
  {
    eventer = new ComponentEventer(uiContext, getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_event)));
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
  }
  
  public String getComponentName()
  {
    return "Segment";
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.segment();
  }
  
  public String[] getValidKeys()
  {
    return SEGMENT_VALID_KEYS;
  }
  
  public View getView()
  {
    return view;
  }
  
  protected void style()
    throws NativeUIException
  {
    JSONArray localJSONArray = style.optJSONArray("texts");
    if (localJSONArray == null) {
      throw new RequiredKeyNotFoundException(getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_texts));
    }
    backgroundColor = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_red), style);
    int j = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white), style);
    int k = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_activetextcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white), style);
    if (localJSONArray != null)
    {
      view.removeAllSegmentItemViews();
      i = 0;
      if (i < localJSONArray.length())
      {
        localObject = new SegmentItemView(uiContext, localJSONArray.optString(i), backgroundColor, j, k);
        if (i == 0) {
          ((SegmentItemView)localObject).setAsLeft();
        }
        for (;;)
        {
          view.addSegmentItemView((SegmentItemView)localObject);
          i += 1;
          break;
          if (i == localJSONArray.length() - 1) {
            ((SegmentItemView)localObject).setAsRight();
          } else {
            ((SegmentItemView)localObject).setAsCenter();
          }
        }
      }
      if (localJSONArray.length() == 1) {
        view.setAsSingle();
      }
    }
    Object localObject = view;
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true)) {}
    for (int i = 0;; i = 4)
    {
      ((SegmentComponentView)localObject).setVisibility(i);
      view.setDisable(style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false));
      i = UIValidator.parseAndValidateInt(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_activeindex), "0", style, 0, localJSONArray.length() - 1);
      view.setActiveIndex(i);
      view.updateSegmentItemsWidth();
      return;
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
  
  class SegmentComponentView
    extends FrameLayout
    implements View.OnClickListener
  {
    protected SegmentComponent.SegmentItemView currentItemView = null;
    protected boolean disabled = false;
    protected ArrayList<SegmentComponent.SegmentItemView> items = new ArrayList();
    protected LinearLayout layout;
    
    public SegmentComponentView(Context paramContext)
    {
      super();
      layout = new LinearLayout(paramContext);
      layout.setOrientation(0);
      this$1 = new FrameLayout.LayoutParams(-2, -1);
      addView(layout, SegmentComponent.this);
      addView(createFrameView(), SegmentComponent.this);
    }
    
    protected void addSegmentItemView(SegmentComponent.SegmentItemView paramSegmentItemView)
    {
      items.add(paramSegmentItemView);
      layout.addView(paramSegmentItemView, new LinearLayout.LayoutParams(0, -1, 1.0F));
      if (items.size() == 1)
      {
        paramSegmentItemView.switchToSelected();
        currentItemView = paramSegmentItemView;
      }
      for (;;)
      {
        paramSegmentItemView.setOnClickListener(this);
        return;
        paramSegmentItemView.switchToUnselected();
      }
    }
    
    public View createFrameView()
    {
      FrameLayout localFrameLayout = new FrameLayout(uiContext);
      localFrameLayout.setBackgroundResource(R.drawable.monaca_button_frame);
      localFrameLayout.getBackground().setAlpha(204);
      return localFrameLayout;
    }
    
    public List<SegmentComponent.SegmentItemView> getAllSegmentItems()
    {
      return items;
    }
    
    public void onClick(View paramView)
    {
      int k;
      int i;
      if (!disabled)
      {
        paramView = (SegmentComponent.SegmentItemView)paramView;
        paramView.switchToSelected();
        k = 0;
        i = 0;
      }
      for (;;)
      {
        int j = k;
        if (i < items.size())
        {
          if (items.get(i) != paramView) {
            break label158;
          }
          j = i;
        }
        try
        {
          style.put(MonacaApplication.getStringFromResource(R.string.nc_style_activeindex), i);
          uiContext.react(MonacaApplication.getStringFromResource(R.string.nc_script_segmentindex) + j + MonacaApplication.getStringFromResource(R.string.semicolon));
          if (paramView == currentItemView) {
            eventer.onTap();
          }
          for (;;)
          {
            if ((currentItemView != null) && (currentItemView != paramView)) {
              currentItemView.switchToUnselected();
            }
            currentItemView = paramView;
            return;
            label158:
            i += 1;
            break;
            eventer.onChange();
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;) {}
        }
      }
    }
    
    public void removeAllSegmentItemViews()
    {
      layout.removeAllViews();
      items = new ArrayList();
    }
    
    public void setActiveIndex(int paramInt)
    {
      if (currentItemView != null) {
        currentItemView.switchToUnselected();
      }
      if ((paramInt >= 0) && (paramInt < items.size()))
      {
        currentItemView = ((SegmentComponent.SegmentItemView)items.get(paramInt));
        currentItemView.switchToSelected();
        return;
      }
      currentItemView = null;
    }
    
    public void setAsSingle()
    {
      ((SegmentComponent.SegmentItemView)items.get(0)).setAsSingle();
    }
    
    public void setDisable(boolean paramBoolean)
    {
      disabled = paramBoolean;
    }
    
    protected void updateSegmentItemsWidth()
    {
      Object localObject1 = new ArrayList();
      Object localObject2 = items.iterator();
      Object localObject3;
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (SegmentComponent.SegmentItemView)((Iterator)localObject2).next();
        ((SegmentComponent.SegmentItemView)localObject3).measure(0, 0);
        ((SegmentComponent.SegmentItemView)localObject3).getMeasuredWidth();
        ((ArrayList)localObject1).add(Integer.valueOf(((SegmentComponent.SegmentItemView)localObject3).getMeasuredWidth()));
      }
      int j = ((Integer)Collections.max((Collection)localObject1)).intValue();
      int i = j;
      if (Build.VERSION.SDK_INT >= 11) {
        i = j - UIUtil.dip2px(getContext(), 15);
      }
      localObject1 = items.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (SegmentComponent.SegmentItemView)((Iterator)localObject1).next();
        localObject3 = (LinearLayout.LayoutParams)((SegmentComponent.SegmentItemView)localObject2).getLayoutParams();
        width = i;
        ((SegmentComponent.SegmentItemView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      }
      localObject1 = getChildAt(1);
      localObject2 = (FrameLayout.LayoutParams)((View)localObject1).getLayoutParams();
      width = (items.size() * i);
      ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    }
  }
  
  public class SegmentItemView
    extends FrameLayout
  {
    protected int activeTextColor;
    protected SegmentBackgroundDrawable background;
    protected Button button;
    protected boolean isSelected = true;
    protected int textColor;
    protected int tint;
    
    public SegmentItemView(UIContext paramUIContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
    {
      super();
      tint = paramInt1;
      textColor = paramInt2;
      activeTextColor = paramInt3;
      button = new Button(paramUIContext);
      button.setText(paramString);
      button.setGravity(17);
      button.setTextColor(textColor);
      button.setTextSize(0, paramUIContext.getFontSizeFromDip(14));
      button.setShadowLayer(1.0F, 0.0F, -1.0F, -872415232);
      addView(button, new FrameLayout.LayoutParams(-1, -1));
      setAsSingle();
      switchToUnselected();
    }
    
    public boolean isSelected()
    {
      return isSelected;
    }
    
    public void setAsCenter()
    {
      background = new SegmentBackgroundDrawable(uiContext, SegmentBackgroundDrawable.Type.CENTER, tint);
      button.setBackgroundDrawable(background);
    }
    
    public void setAsLeft()
    {
      background = new SegmentBackgroundDrawable(uiContext, SegmentBackgroundDrawable.Type.LEFT, tint);
      button.setBackgroundDrawable(background);
    }
    
    public void setAsRight()
    {
      background = new SegmentBackgroundDrawable(uiContext, SegmentBackgroundDrawable.Type.RIGHT, tint);
      button.setBackgroundDrawable(background);
    }
    
    public void setAsSingle()
    {
      background = new SegmentBackgroundDrawable(uiContext, SegmentBackgroundDrawable.Type.SINGLE, tint);
      button.setBackgroundDrawable(background);
    }
    
    public void setOnClickListener(final View.OnClickListener paramOnClickListener)
    {
      button.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramOnClickListener.onClick(SegmentComponent.SegmentItemView.this);
        }
      });
    }
    
    public void switchToSelected()
    {
      background.setSelected(true);
      isSelected = true;
      button.setTextColor(activeTextColor);
      invalidate();
    }
    
    public void switchToUnselected()
    {
      background.setSelected(false);
      isSelected = false;
      button.setTextColor(textColor);
      invalidate();
    }
    
    protected void updateSwitchingEffect()
    {
      if (isSelected)
      {
        switchToSelected();
        return;
      }
      switchToUnselected();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SegmentComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */