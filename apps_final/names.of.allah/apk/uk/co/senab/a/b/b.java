package uk.co.senab.a.b;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import uk.co.senab.a.b.b.c;

public final class b
{
  public h a;
  public uk.co.senab.a.b.a.b b;
  public ViewGroup c;
  public HashMap<Class, c> d;
  private final Activity e;
  private int[] f;
  private View[] g;
  
  private b(Activity paramActivity)
  {
    e = paramActivity;
  }
  
  public final b a(int... paramVarArgs)
  {
    f = paramVarArgs;
    g = null;
    return this;
  }
  
  public final void a(n paramn)
  {
    j localj = paramn.a(e, a);
    b = b;
    Object localObject2;
    Object localObject1;
    if (c != null)
    {
      localObject2 = c;
      for (localObject1 = ((ViewGroup)localObject2).getChildAt(0); localObject1 != null; localObject1 = ((ViewGroup)localObject2).getChildAt(0))
      {
        ((ViewGroup)localObject2).removeViewAt(0);
        paramn.addView((View)localObject1);
      }
      ((ViewGroup)localObject2).addView(paramn, -1, -1);
    }
    paramn.setPullToRefreshAttacher(localj);
    if (f != null) {
      paramn.a(f);
    }
    while (d != null)
    {
      paramn = d.entrySet().iterator();
      while (paramn.hasNext())
      {
        localObject2 = (Map.Entry)paramn.next();
        localObject1 = (Class)((Map.Entry)localObject2).getKey();
        localObject2 = (c)((Map.Entry)localObject2).getValue();
        Iterator localIterator = m.keySet().iterator();
        while (localIterator.hasNext())
        {
          View localView = (View)localIterator.next();
          if (((Class)localObject1).isInstance(localView)) {
            m.put(localView, localObject2);
          }
        }
      }
      if (g != null) {
        paramn.a(g);
      } else {
        paramn.b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */