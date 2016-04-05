package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.u;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class az
  extends a
{
  az(ViewPager paramViewPager) {}
  
  private boolean b()
  {
    return (ViewPager.access$200(b) != null) && (ViewPager.access$200(b).getCount() > 1);
  }
  
  public final void a(View paramView, android.support.v4.view.a.a parama)
  {
    super.a(paramView, parama);
    parama.a(ViewPager.class.getName());
    parama.a(b());
    if (b.canScrollHorizontally(1)) {
      parama.a(4096);
    }
    if (b.canScrollHorizontally(-1)) {
      parama.a(8192);
    }
  }
  
  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if (b.canScrollHorizontally(1))
      {
        b.setCurrentItem(ViewPager.access$300(b) + 1);
        return true;
      }
      return false;
    }
    if (b.canScrollHorizontally(-1))
    {
      b.setCurrentItem(ViewPager.access$300(b) - 1);
      return true;
    }
    return false;
  }
  
  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = u.a();
    paramView.a(b());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.access$200(b) != null))
    {
      paramView.a(ViewPager.access$200(b).getCount());
      paramView.b(ViewPager.access$300(b));
      paramView.c(ViewPager.access$300(b));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */