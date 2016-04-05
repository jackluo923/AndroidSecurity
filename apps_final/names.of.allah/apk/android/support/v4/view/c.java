package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class c
  implements j
{
  c(b paramb, a parama) {}
  
  public final void a(View paramView, int paramInt)
  {
    a locala = a;
    a.a(paramView, paramInt);
  }
  
  public final void a(View paramView, Object paramObject)
  {
    a.a(paramView, new android.support.v4.view.a.a(paramObject));
  }
  
  public final boolean a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a locala = a;
    return a.b(paramView, paramAccessibilityEvent);
  }
  
  public final boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a locala = a;
    return a.a(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public final void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.d(paramView, paramAccessibilityEvent);
  }
  
  public final void c(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a locala = a;
    a.c(paramView, paramAccessibilityEvent);
  }
  
  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a locala = a;
    a.a(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */