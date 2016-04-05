package mobi.monaca.framework.nativeui.container;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import mobi.monaca.framework.InternalSettings;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.psedo.R.drawable;
import org.json.JSONException;
import org.json.JSONObject;

public class TabbarContainer$TabbarContainerView
  extends LinearLayout
  implements View.OnClickListener
{
  protected LinearLayout content;
  protected TabbarItem.TabbarItemView currentItemView = null;
  protected ArrayList<TabbarItem.TabbarItemView> items = new ArrayList();
  
  public TabbarContainer$TabbarContainerView(TabbarContainer paramTabbarContainer, UIContext paramUIContext)
  {
    super(paramUIContext);
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
    int i = TabbarContainer.access$100(this$0).optInt("activeIndex", 0);
    if (items.size() - 1 == i)
    {
      paramTabbarItemView.initializeSelected();
      currentItemView = paramTabbarItemView;
    }
    paramTabbarItemView.setOnClickListener(this);
  }
  
  protected View createBorderView()
  {
    FrameLayout localFrameLayout = new FrameLayout(TabbarContainer.access$000(this$0));
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
      TabbarContainer.access$200(this$0).put("activeIndex", i);
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

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.TabbarContainer.TabbarContainerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */