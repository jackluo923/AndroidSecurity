package uk.co.senab.a.b;

import android.view.ViewGroup;

final class k
  implements Runnable
{
  k(j paramj, ViewGroup paramViewGroup) {}
  
  public final void run()
  {
    if (a.getWindowToken() != null)
    {
      b.a(b.d);
      return;
    }
    a.post(this);
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */