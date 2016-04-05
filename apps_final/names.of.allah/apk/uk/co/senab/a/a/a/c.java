package uk.co.senab.a.a.a;

import android.app.Activity;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.FrameLayout;
import uk.co.senab.a.b.e;
import uk.co.senab.a.b.f;
import uk.co.senab.a.b.h;
import uk.co.senab.a.b.j;

final class c
  extends j
{
  private FrameLayout o;
  
  protected c(Activity paramActivity, h paramh)
  {
    super(paramActivity, paramh);
  }
  
  protected final e a()
  {
    return new d();
  }
  
  protected final void a(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.a(paramView);
      return;
    }
    o = new FrameLayout(c);
    o.addView(paramView);
    super.a(o);
  }
  
  protected final f b()
  {
    return new a();
  }
  
  protected final void b(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.b(paramView);
      return;
    }
    super.b(o);
  }
  
  protected final void c(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.c(paramView);
    }
    while (o == null) {
      return;
    }
    super.c(o);
    o = null;
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */