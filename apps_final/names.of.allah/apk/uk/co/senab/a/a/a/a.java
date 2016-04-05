package uk.co.senab.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import uk.co.senab.a.b.c;

public final class a
  extends c
{
  Animation a;
  private Animation c;
  
  protected final Drawable a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= super.d()) {
      return super.a(paramContext);
    }
    paramContext = a(paramContext, h.actionBarStyle, j.SherlockActionBar);
    try
    {
      Drawable localDrawable = paramContext.getDrawable(2);
      return localDrawable;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public final void a(Activity paramActivity, View paramView)
  {
    super.a(paramActivity, paramView);
    c = AnimationUtils.loadAnimation(paramActivity, g.fade_in);
    a = AnimationUtils.loadAnimation(paramActivity, g.fade_out);
    if ((a != null) || (c != null))
    {
      paramActivity = new b(this);
      if (a != null) {
        a.setAnimationListener(paramActivity);
      }
    }
  }
  
  public final boolean a()
  {
    boolean bool2;
    if (Build.VERSION.SDK_INT >= super.d())
    {
      bool2 = super.a();
      return bool2;
    }
    View localView = b;
    if ((localView != null) && (localView.getVisibility() != 0)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      if (c != null) {
        localView.startAnimation(c);
      }
      localView.setVisibility(0);
      return bool1;
    }
  }
  
  protected final int b(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= super.d()) {
      return super.b(paramContext);
    }
    paramContext = paramContext.obtainStyledAttributes(j.SherlockTheme);
    try
    {
      int i = paramContext.getDimensionPixelSize(7, 0);
      return i;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public final boolean b()
  {
    boolean bool2;
    if (Build.VERSION.SDK_INT >= super.d())
    {
      bool2 = super.b();
      return bool2;
    }
    View localView = b;
    if ((localView != null) && (localView.getVisibility() != 8)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      if (a == null) {
        break label65;
      }
      localView.startAnimation(a);
      return bool1;
    }
    label65:
    localView.setVisibility(8);
    e();
    return bool1;
  }
  
  protected final int c(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= super.d()) {
      return super.c(paramContext);
    }
    paramContext = a(paramContext, h.actionBarStyle, j.SherlockActionBar);
    try
    {
      int i = paramContext.getResourceId(0, 0);
      return i;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public final void c()
  {
    if (Build.VERSION.SDK_INT >= super.d()) {
      super.c();
    }
    View localView;
    do
    {
      return;
      localView = b.findViewById(i.ptr_content);
    } while (localView == null);
    localView.startAnimation(AnimationUtils.loadAnimation(localView.getContext(), g.fade_out));
    localView.setVisibility(4);
  }
  
  protected final int d()
  {
    return 7;
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */