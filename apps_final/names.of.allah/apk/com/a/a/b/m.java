package com.a.a.b;

import android.widget.ImageView;
import com.a.a.b.a.a;
import com.a.a.b.a.b;
import java.lang.ref.Reference;

final class m
  implements Runnable
{
  m(l paraml, b paramb, Throwable paramThrowable) {}
  
  public final void run()
  {
    Object localObject = (ImageView)c.b.get();
    if (localObject != null) {
      if (c.c.c == 0) {
        break label89;
      }
    }
    label89:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        ((ImageView)localObject).setImageResource(c.c.c);
      }
      localObject = c.d;
      String str = c.a;
      ((com.a.a.b.a.d)localObject).a(new a(a, b));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */