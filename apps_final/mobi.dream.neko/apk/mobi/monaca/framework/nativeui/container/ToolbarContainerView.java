package mobi.monaca.framework.nativeui.container;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import mobi.monaca.framework.InternalSettings;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.component.SearchBoxComponent;
import mobi.monaca.framework.nativeui.component.ToolbarComponent;
import mobi.monaca.framework.psedo.R.string;

public class ToolbarContainerView
  extends LinearLayout
{
  protected static final int SUBTITLE_ID = 1;
  private static final String TAG = ToolbarContainerView.class.getSimpleName();
  protected static final int TITLE_ID = 0;
  private static int mContentViewId = 10000;
  protected LinearLayout center;
  protected FrameLayout content;
  protected UIContext context;
  boolean isTop = true;
  protected LinearLayout left;
  private int mDefaultSubtitleFontSize;
  private int mDefaultTitleFontSize;
  protected LinearLayout right;
  private TextView subTitleMainTitleView;
  private TextView subtitleView;
  private ImageView titleImageView;
  protected LinearLayout titleImageWrapper;
  protected LinearLayout titleSubtitleWrapper;
  private TextView titleView;
  protected LinearLayout titleWrapper;
  
  @TargetApi(11)
  public ToolbarContainerView(UIContext paramUIContext, boolean paramBoolean)
  {
    super(paramUIContext);
    context = paramUIContext;
    isTop = paramBoolean;
    setOrientation(1);
    setFocusable(true);
    setFocusableInTouchMode(true);
    content = new FrameLayout(paramUIContext);
    mContentViewId += 1;
    setId(mContentViewId);
    if (getSettingsdisableUIContainerBorder) {}
    for (int i = 0;; i = 1)
    {
      addView(createBorderView(), new LinearLayout.LayoutParams(-1, i));
      addView(content, new LinearLayout.LayoutParams(-1, -2));
      addView(createBorderView(), new LinearLayout.LayoutParams(-1, i));
      left = new LinearLayout(paramUIContext);
      left.setOrientation(0);
      left.setGravity(19);
      center = new LinearLayout(paramUIContext);
      center.setOrientation(0);
      center.setGravity(17);
      right = new LinearLayout(paramUIContext);
      right.setOrientation(0);
      right.setGravity(21);
      titleView = new TextView(paramUIContext);
      titleView.setId(0);
      titleView.setTextColor(-1);
      titleView.setShadowLayer(1.0F, 0.0F, -1.0F, -872415232);
      titleView.setTypeface(null, 1);
      mDefaultTitleFontSize = paramUIContext.getFontSizeFromDip(18);
      titleView.setTextSize(0, mDefaultTitleFontSize);
      titleImageView = new ImageView(paramUIContext);
      titleWrapper = new LinearLayout(paramUIContext);
      titleWrapper.setOrientation(0);
      titleWrapper.setVisibility(8);
      titleWrapper.setGravity(17);
      titleWrapper.addView(titleView);
      titleImageWrapper = new LinearLayout(paramUIContext);
      titleImageWrapper.setOrientation(0);
      titleImageWrapper.setVisibility(8);
      titleImageWrapper.setGravity(17);
      titleImageWrapper.addView(titleImageView, new LinearLayout.LayoutParams(-2, -2, 17.0F));
      subTitleMainTitleView = new TextView(paramUIContext);
      subTitleMainTitleView.setId(0);
      subTitleMainTitleView.setTextColor(-1);
      subTitleMainTitleView.setShadowLayer(1.0F, 0.0F, -1.0F, -872415232);
      subTitleMainTitleView.setTypeface(null, 1);
      subTitleMainTitleView.setPadding(0, 0, 0, 0);
      subTitleMainTitleView.setTextSize(0, mDefaultTitleFontSize);
      mDefaultSubtitleFontSize = paramUIContext.getFontSizeFromDip(12);
      subtitleView = new TextView(paramUIContext);
      subtitleView.setId(1);
      subtitleView.setTextColor(-1);
      subtitleView.setShadowLayer(1.0F, 0.0F, -1.0F, -872415232);
      subtitleView.setPadding(0, 0, 0, 0);
      subtitleView.setTextSize(0, mDefaultSubtitleFontSize);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1, 17.0F);
      titleSubtitleWrapper = new LinearLayout(paramUIContext);
      titleSubtitleWrapper.setOrientation(1);
      titleSubtitleWrapper.setVisibility(8);
      titleSubtitleWrapper.setGravity(17);
      titleSubtitleWrapper.addView(subTitleMainTitleView, localLayoutParams);
      titleSubtitleWrapper.addView(subtitleView, localLayoutParams);
      paramUIContext = new FrameLayout.LayoutParams(-1, -2, 17);
      content.addView(left, new FrameLayout.LayoutParams(-2, -1, 19));
      content.addView(right, new FrameLayout.LayoutParams(-2, -1, 21));
      content.addView(center, new FrameLayout.LayoutParams(-2, -1, 17));
      center.setGravity(17);
      content.addView(titleImageWrapper, paramUIContext);
      content.addView(titleWrapper, paramUIContext);
      content.addView(titleSubtitleWrapper, paramUIContext);
      return;
    }
  }
  
  protected View createBorderView()
  {
    FrameLayout localFrameLayout = new FrameLayout(context);
    localFrameLayout.setBackgroundColor(-16777216);
    return localFrameLayout;
  }
  
  public View getContentView()
  {
    return content;
  }
  
  protected int measureInnerWidth(LinearLayout paramLinearLayout)
  {
    int j = 0;
    int i = 0;
    while (i < paramLinearLayout.getChildCount())
    {
      j += paramLinearLayout.getChildAt(i).getMeasuredWidth();
      i += 1;
    }
    return j;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      if (paramInt1 != 0) {
        prepareCenterLayoutWidth();
      }
      return;
    }
  }
  
  protected void prepareCenterLayoutWidth()
  {
    int i = measureInnerWidth(left);
    int j = measureInnerWidth(right);
    int k = UIUtil.dip2px(context, 2);
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)center.getLayoutParams();
    localMarginLayoutParams.setMargins(i + k, 0, j + k, 0);
    center.setLayoutParams(localMarginLayoutParams);
  }
  
  public void setCenterView(List<ToolbarComponent> paramList, boolean paramBoolean)
  {
    center.removeAllViews();
    Object localObject2;
    Object localObject1;
    if (paramBoolean)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject2 = (ToolbarComponent)paramList.next();
        localObject1 = new FrameLayout(context);
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -1);
        gravity = 17;
        ((FrameLayout)localObject1).addView(((Component)localObject2).getView(), localLayoutParams);
        localObject2 = new LinearLayout.LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams)localObject2).setMargins(UIUtil.dip2px(context, 2), 0, UIUtil.dip2px(context, 2), 0);
        weight = 1.0F;
        center.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
      }
      content.removeView(left);
      content.removeView(right);
    }
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject1 = (ToolbarComponent)paramList.next();
        localObject2 = new LinearLayout.LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams)localObject2).setMargins(UIUtil.dip2px(context, 2), 0, UIUtil.dip2px(context, 2), 0);
        if ((localObject1 instanceof SearchBoxComponent)) {
          width = -1;
        }
        center.addView(((Component)localObject1).getView(), (ViewGroup.LayoutParams)localObject2);
      }
    }
  }
  
  public void setLeftView(List<ToolbarComponent> paramList)
  {
    left.removeAllViews();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ToolbarComponent localToolbarComponent = (ToolbarComponent)paramList.next();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      gravity = 19;
      localLayoutParams.setMargins(0, 0, UIUtil.dip2px(context, 4), 0);
      left.addView(localToolbarComponent.getView(), localLayoutParams);
    }
  }
  
  public void setRightView(List<ToolbarComponent> paramList)
  {
    right.removeAllViews();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ToolbarComponent localToolbarComponent = (ToolbarComponent)paramList.next();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      gravity = 21;
      localLayoutParams.setMargins(UIUtil.dip2px(context, 4), 0, 0, 0);
      right.addView(localToolbarComponent.getView(), localLayoutParams);
    }
  }
  
  public void setSubitleFontScale(String paramString)
  {
    if (paramString == "") {}
    float f;
    do
    {
      return;
      f = Float.parseFloat(paramString);
    } while (subtitleView == null);
    subtitleView.setTextSize(mDefaultSubtitleFontSize * f);
  }
  
  public void setSubtitleColor(String paramString)
  {
    String str = paramString;
    if (!paramString.startsWith(MonacaApplication.getStringFromResource(R.string.sharp))) {
      str = MonacaApplication.getStringFromResource(R.string.sharp) + paramString;
    }
    subtitleView.setTextColor(Color.parseColor(str));
  }
  
  public void setTitleColor(String paramString)
  {
    String str = paramString;
    if (!paramString.startsWith(MonacaApplication.getStringFromResource(R.string.sharp))) {
      str = MonacaApplication.getStringFromResource(R.string.sharp) + paramString;
    }
    if (titleView != null) {
      titleView.setTextColor(Color.parseColor(str));
    }
    if (subTitleMainTitleView != null) {
      subTitleMainTitleView.setTextColor(Color.parseColor(str));
    }
  }
  
  public void setTitleFontScale(String paramString)
  {
    if (paramString == "") {}
    float f;
    do
    {
      return;
      f = Float.parseFloat(paramString);
      if (titleView != null) {
        titleView.setTextSize(0, mDefaultTitleFontSize * f);
      }
    } while (subTitleMainTitleView == null);
    subTitleMainTitleView.setTextSize(0, mDefaultTitleFontSize * f);
  }
  
  public void setTitleSubtitle(String paramString1, String paramString2, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      titleImageWrapper.setVisibility(0);
      titleSubtitleWrapper.setVisibility(8);
      titleWrapper.setVisibility(8);
      center.setVisibility(8);
    }
    for (;;)
    {
      ((TextView)titleWrapper.findViewById(0)).setText(paramString1);
      ((TextView)titleSubtitleWrapper.findViewById(0)).setText(paramString1);
      ((TextView)titleSubtitleWrapper.findViewById(1)).setText(paramString2);
      if (paramBitmap != null) {
        titleImageView.setImageBitmap(paramBitmap);
      }
      return;
      if (paramString2.length() > 0)
      {
        titleSubtitleWrapper.setVisibility(0);
        titleWrapper.setVisibility(8);
        center.setVisibility(8);
        titleImageWrapper.setVisibility(8);
      }
      else if (paramString1.length() > 0)
      {
        titleWrapper.setVisibility(0);
        center.setVisibility(8);
        titleSubtitleWrapper.setVisibility(8);
        titleImageWrapper.setVisibility(8);
      }
      else
      {
        titleWrapper.setVisibility(8);
        center.setVisibility(0);
        titleSubtitleWrapper.setVisibility(8);
        titleImageWrapper.setVisibility(8);
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.ToolbarContainerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */