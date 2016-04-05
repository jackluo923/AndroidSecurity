package android.support.v4.view.a;

import android.graphics.Rect;
import android.view.accessibility.AccessibilityNodeInfo;

class b
  extends g
{
  public final int a(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getActions();
  }
  
  public final void a(Object paramObject, int paramInt)
  {
    ((AccessibilityNodeInfo)paramObject).addAction(paramInt);
  }
  
  public final void a(Object paramObject, Rect paramRect)
  {
    ((AccessibilityNodeInfo)paramObject).getBoundsInParent(paramRect);
  }
  
  public final void a(Object paramObject, CharSequence paramCharSequence)
  {
    ((AccessibilityNodeInfo)paramObject).setClassName(paramCharSequence);
  }
  
  public final void a(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setScrollable(paramBoolean);
  }
  
  public final CharSequence b(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getClassName();
  }
  
  public final void b(Object paramObject, Rect paramRect)
  {
    ((AccessibilityNodeInfo)paramObject).getBoundsInScreen(paramRect);
  }
  
  public final CharSequence c(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getContentDescription();
  }
  
  public final CharSequence d(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getPackageName();
  }
  
  public final CharSequence e(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getText();
  }
  
  public final boolean f(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isCheckable();
  }
  
  public final boolean g(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isChecked();
  }
  
  public final boolean h(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isClickable();
  }
  
  public final boolean i(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isEnabled();
  }
  
  public final boolean j(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isFocusable();
  }
  
  public final boolean k(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isFocused();
  }
  
  public final boolean l(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isLongClickable();
  }
  
  public final boolean m(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isPassword();
  }
  
  public final boolean n(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isScrollable();
  }
  
  public final boolean o(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isSelected();
  }
  
  public final void p(Object paramObject)
  {
    ((AccessibilityNodeInfo)paramObject).setParent(null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */