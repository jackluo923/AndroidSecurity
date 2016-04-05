package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.WeakHashMap;

class ag
  implements ao
{
  WeakHashMap<View, ViewPropertyAnimatorCompat> a = null;
  
  public int a(View paramView)
  {
    return 2;
  }
  
  long a()
  {
    return 10L;
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint) {}
  
  public void a(View paramView, Paint paramPaint) {}
  
  public void a(View paramView, a parama) {}
  
  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, a());
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return false;
  }
  
  public void b(View paramView)
  {
    paramView.invalidate();
  }
  
  public void b(View paramView, int paramInt) {}
  
  public int c(View paramView)
  {
    return 0;
  }
  
  public int d(View paramView)
  {
    return 0;
  }
  
  public int e(View paramView)
  {
    return 0;
  }
  
  public boolean f(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */