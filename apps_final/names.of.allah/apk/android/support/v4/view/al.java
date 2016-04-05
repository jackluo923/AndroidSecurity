package android.support.v4.view;

import android.view.View;

class al
  extends ak
{
  public final void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.postInvalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public final void a(View paramView, Runnable paramRunnable)
  {
    paramView.postOnAnimation(paramRunnable);
  }
  
  public final void b(View paramView)
  {
    paramView.postInvalidateOnAnimation();
  }
  
  public void b(View paramView, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 4) {
      i = 2;
    }
    paramView.setImportantForAccessibility(i);
  }
  
  public final int c(View paramView)
  {
    return paramView.getImportantForAccessibility();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */