package mobi.monaca.framework.nativeui.component;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
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
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.psedo.R.drawable;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

class SegmentComponent$SegmentComponentView
  extends FrameLayout
  implements View.OnClickListener
{
  protected SegmentComponent.SegmentItemView currentItemView = null;
  protected boolean disabled = false;
  protected ArrayList<SegmentComponent.SegmentItemView> items = new ArrayList();
  protected LinearLayout layout;
  
  public SegmentComponent$SegmentComponentView(SegmentComponent paramSegmentComponent, Context paramContext)
  {
    super(paramContext);
    layout = new LinearLayout(paramContext);
    layout.setOrientation(0);
    paramSegmentComponent = new FrameLayout.LayoutParams(-2, -1);
    addView(layout, paramSegmentComponent);
    addView(createFrameView(), paramSegmentComponent);
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
    FrameLayout localFrameLayout = new FrameLayout(this$0.uiContext);
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
        this$0.style.put(MonacaApplication.getStringFromResource(R.string.nc_style_activeindex), i);
        this$0.uiContext.react(MonacaApplication.getStringFromResource(R.string.nc_script_segmentindex) + j + MonacaApplication.getStringFromResource(R.string.semicolon));
        if (paramView == currentItemView) {
          this$0.eventer.onTap();
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
          this$0.eventer.onChange();
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

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SegmentComponent.SegmentComponentView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */