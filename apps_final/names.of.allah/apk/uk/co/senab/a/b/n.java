package uk.co.senab.a.b;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.WeakHashMap;
import uk.co.senab.a.b.a.a;
import uk.co.senab.a.b.b.c;

public class n
  extends FrameLayout
{
  private j a;
  
  public n(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private n(Context paramContext, byte paramByte)
  {
    this(paramContext, '\000');
  }
  
  private n(Context paramContext, char paramChar)
  {
    super(paramContext, null, 0);
  }
  
  private void a(View paramView)
  {
    j localj;
    int i;
    if (a != null)
    {
      localj = a;
      if ((paramView == null) || (!(paramView.getLayoutParams() instanceof o))) {
        break label157;
      }
      localObject2 = ((o)paramView.getLayoutParams()).a();
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label157;
      }
      i = ((String)localObject2).indexOf('.');
      if (i != -1) {
        break label122;
      }
      localObject1 = getContext().getPackageName() + "." + (String)localObject2;
    }
    label122:
    label157:
    for (Object localObject1 = (c)g.a(getContext(), (String)localObject1);; localObject1 = null)
    {
      if (!localj.f())
      {
        if (paramView != null) {
          break label162;
        }
        Log.i("PullToRefreshAttacher", "Refreshable View is null.");
      }
      return;
      localObject1 = localObject2;
      if (i != 0) {
        break;
      }
      localObject1 = getContext().getPackageName() + (String)localObject2;
      break;
    }
    label162:
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = g.a(paramView);
    }
    m.put(paramView, localObject2);
  }
  
  private void c()
  {
    if (a == null) {
      throw new IllegalStateException("You need to setup the PullToRefreshLayout before using it");
    }
  }
  
  protected j a(Activity paramActivity, h paramh)
  {
    if (paramh != null) {}
    for (;;)
    {
      return new j(paramActivity, paramh);
      paramh = new h();
    }
  }
  
  public final void a()
  {
    c();
    a.a(false, false);
  }
  
  final void a(int[] paramArrayOfInt)
  {
    int i = 0;
    int j = paramArrayOfInt.length;
    while (i < j)
    {
      if (findViewById(paramArrayOfInt[i]) != null) {
        a(findViewById(paramArrayOfInt[i]));
      }
      i += 1;
    }
  }
  
  final void a(View[] paramArrayOfView)
  {
    int i = 0;
    int j = paramArrayOfView.length;
    while (i < j)
    {
      if (paramArrayOfView[i] != null) {
        a(paramArrayOfView[i]);
      }
      i += 1;
    }
  }
  
  final void b()
  {
    c();
    int i = 0;
    int j = getChildCount();
    while (i < j)
    {
      a(getChildAt(i));
      i += 1;
    }
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new o(getContext(), paramAttributeSet);
  }
  
  public f getHeaderTransformer()
  {
    c();
    return a.a;
  }
  
  public final View getHeaderView()
  {
    c();
    return a.d;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (a != null)
    {
      j localj = a;
      a.a(c);
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onDetachedFromWindow()
  {
    if (a != null) {
      a.c();
    }
    super.onDetachedFromWindow();
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((isEnabled()) && (a != null) && (getChildCount() > 0)) {
      return a.a(paramMotionEvent);
    }
    return false;
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if ((isEnabled()) && (a != null))
    {
      j localj = a;
      if (paramMotionEvent.getAction() == 0) {
        k = true;
      }
      if ((k) && (!i)) {
        localj.a(paramMotionEvent);
      }
      for (;;)
      {
        boolean bool1 = true;
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (l == null);
          switch (paramMotionEvent.getAction())
          {
          default: 
            break;
          case 1: 
          case 3: 
            paramMotionEvent = l;
            if ((i) && (n) && (paramMotionEvent != null) && (g - h >= localj.d(paramMotionEvent))) {
              localj.a(true, true);
            }
            if (i) {
              localj.e();
            }
            localj.d();
            break;
          case 2: 
            bool1 = bool2;
          }
        } while (j);
        float f1 = paramMotionEvent.getY();
        if ((i) && (f1 != g))
        {
          float f2 = f1 - g;
          if (f2 >= -f)
          {
            float f3 = localj.d(l);
            float f4 = f1 - h;
            if (f4 < f3) {
              a.a(f4 / f3);
            }
            for (;;)
            {
              if (f2 <= 0.0F) {
                break label325;
              }
              g = f1;
              break;
              if (n) {
                a.g();
              } else {
                localj.a(true, true);
              }
            }
          }
          else
          {
            label325:
            localj.e();
            localj.d();
          }
        }
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public final void setHeaderViewListener(a parama)
  {
    c();
    a.e = parama;
  }
  
  void setPullToRefreshAttacher(j paramj)
  {
    if (a != null) {
      a.c();
    }
    a = paramj;
  }
  
  public final void setRefreshing(boolean paramBoolean)
  {
    c();
    a.a(paramBoolean, false);
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */