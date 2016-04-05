package mobi.monaca.framework.nativeui.component;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import mobi.monaca.framework.nativeui.UIContext;

public class SegmentComponent$SegmentItemView
  extends FrameLayout
{
  protected int activeTextColor;
  protected SegmentBackgroundDrawable background;
  protected Button button;
  protected boolean isSelected = true;
  protected int textColor;
  protected int tint;
  
  public SegmentComponent$SegmentItemView(SegmentComponent paramSegmentComponent, UIContext paramUIContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramUIContext);
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
    background = new SegmentBackgroundDrawable(this$0.uiContext, SegmentBackgroundDrawable.Type.CENTER, tint);
    button.setBackgroundDrawable(background);
  }
  
  public void setAsLeft()
  {
    background = new SegmentBackgroundDrawable(this$0.uiContext, SegmentBackgroundDrawable.Type.LEFT, tint);
    button.setBackgroundDrawable(background);
  }
  
  public void setAsRight()
  {
    background = new SegmentBackgroundDrawable(this$0.uiContext, SegmentBackgroundDrawable.Type.RIGHT, tint);
    button.setBackgroundDrawable(background);
  }
  
  public void setAsSingle()
  {
    background = new SegmentBackgroundDrawable(this$0.uiContext, SegmentBackgroundDrawable.Type.SINGLE, tint);
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

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SegmentComponent.SegmentItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */