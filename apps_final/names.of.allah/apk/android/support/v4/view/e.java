package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.h;
import android.view.View;
import android.view.View.AccessibilityDelegate;

final class e
  extends b
{
  public final h a(Object paramObject, View paramView)
  {
    paramObject = ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
    if (paramObject != null) {
      return new h(paramObject);
    }
    return null;
  }
  
  public final Object a(a parama)
  {
    return new l(new f(this, parama));
  }
  
  public final boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */