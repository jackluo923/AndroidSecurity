package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;

public final class a
{
  private static final c a = new g();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new f();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new e();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new b();
      return;
    }
  }
  
  public a(Object paramObject)
  {
    b = paramObject;
  }
  
  public final Object a()
  {
    return b;
  }
  
  public final void a(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    a.a(b, paramCharSequence);
  }
  
  public final void a(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public final void b()
  {
    a.p(b);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (a)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public final int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Object localObject = new Rect();
    a.a(b, (Rect)localObject);
    localStringBuilder.append("; boundsInParent: " + localObject);
    a.b(b, (Rect)localObject);
    localStringBuilder.append("; boundsInScreen: " + localObject);
    localStringBuilder.append("; packageName: ").append(a.d(b));
    localStringBuilder.append("; className: ").append(a.b(b));
    localStringBuilder.append("; text: ").append(a.e(b));
    localStringBuilder.append("; contentDescription: ").append(a.c(b));
    localStringBuilder.append("; viewId: ").append(a.q(b));
    localStringBuilder.append("; checkable: ").append(a.f(b));
    localStringBuilder.append("; checked: ").append(a.g(b));
    localStringBuilder.append("; focusable: ").append(a.j(b));
    localStringBuilder.append("; focused: ").append(a.k(b));
    localStringBuilder.append("; selected: ").append(a.o(b));
    localStringBuilder.append("; clickable: ").append(a.h(b));
    localStringBuilder.append("; longClickable: ").append(a.l(b));
    localStringBuilder.append("; enabled: ").append(a.i(b));
    localStringBuilder.append("; password: ").append(a.m(b));
    localStringBuilder.append("; scrollable: " + a.n(b));
    localStringBuilder.append("; [");
    int i = a.a(b);
    if (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i = (j ^ 0xFFFFFFFF) & i;
      switch (j)
      {
      default: 
        localObject = "ACTION_UNKNOWN";
      }
      for (;;)
      {
        localStringBuilder.append((String)localObject);
        if (i != 0) {
          localStringBuilder.append(", ");
        }
        break;
        localObject = "ACTION_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_FOCUS";
        continue;
        localObject = "ACTION_SELECT";
        continue;
        localObject = "ACTION_CLEAR_SELECTION";
        continue;
        localObject = "ACTION_CLICK";
        continue;
        localObject = "ACTION_LONG_CLICK";
        continue;
        localObject = "ACTION_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_NEXT_HTML_ELEMENT";
        continue;
        localObject = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue;
        localObject = "ACTION_SCROLL_FORWARD";
        continue;
        localObject = "ACTION_SCROLL_BACKWARD";
        continue;
        localObject = "ACTION_CUT";
        continue;
        localObject = "ACTION_COPY";
        continue;
        localObject = "ACTION_PASTE";
        continue;
        localObject = "ACTION_SET_SELECTION";
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */