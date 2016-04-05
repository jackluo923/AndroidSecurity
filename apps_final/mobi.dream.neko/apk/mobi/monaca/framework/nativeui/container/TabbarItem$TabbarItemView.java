package mobi.monaca.framework.nativeui.container;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.psedo.R.drawable;

public class TabbarItem$TabbarItemView
  extends LinearLayout
{
  protected TextView badgeTextView;
  protected ImageView imageView;
  protected boolean isSelected = true;
  protected TextView textView;
  
  public TabbarItem$TabbarItemView(TabbarItem paramTabbarItem, UIContext paramUIContext)
  {
    super(paramUIContext);
    setOrientation(1);
    paramTabbarItem = new FrameLayout(paramUIContext);
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
    paramTabbarItem.addView(imageView, new FrameLayout.LayoutParams(-2, -2));
    paramTabbarItem.addView(badgeTextView, new FrameLayout.LayoutParams(-2, -2, 5));
    setGravity(17);
    addView(paramTabbarItem, new LinearLayout.LayoutParams(-2, -2, 17.0F));
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
      TabbarItem.access$200(this$0).changeCurrentUri(this$0.link);
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
    paramBitmap = UIUtil.resizeBitmap(paramBitmap, UIUtil.dip2px(TabbarItem.access$000(this$0), 28));
    paramBitmap = new BitmapDrawable(TabbarItem.access$100(this$0).getResources(), paramBitmap);
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
      this$0.handler.post(new Runnable()
      {
        public void run()
        {
          TabbarItem.access$300(this$0).loadRelativePathWithoutUIFile(this$0.link);
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

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.TabbarItem.TabbarItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */