package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.h;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class f
  implements m
{
  f(e parame, a parama) {}
  
  public final Object a(View paramView)
  {
    a locala = a;
    paramView = a.a(paramView);
    if (paramView != null) {
      return paramView.a();
    }
    return null;
  }
  
  public final void a(View paramView, int paramInt)
  {
    a locala = a;
    a.a(paramView, paramInt);
  }
  
  public final void a(View paramView, Object paramObject)
  {
    a.a(paramView, new android.support.v4.view.a.a(paramObject));
  }
  
  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    return a.a(paramView, paramInt, paramBundle);
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
 * Qualified Name:     android.support.v4.view.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */