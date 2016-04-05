package mobi.monaca.framework.nativeui.component.view;

import android.view.View;
import android.view.View.MeasureSpec;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.psedo.R.drawable;

public class ContainerShadowView
  extends View
{
  public ContainerShadowView(UIContext paramUIContext, boolean paramBoolean)
  {
    super(paramUIContext);
    if (paramBoolean)
    {
      setBackgroundResource(R.drawable.shadow_bg);
      return;
    }
    setBackgroundResource(R.drawable.shadow_bg_reverse);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    if ((i == 0) || (i == Integer.MIN_VALUE))
    {
      setMeasuredDimension(resolveSize(400, paramInt1), resolveSize(UIUtil.dip2px(getContext(), 3), paramInt2));
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.view.ContainerShadowView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */