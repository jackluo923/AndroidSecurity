package uk.co.senab.photoview;

import android.content.Context;
import android.widget.Scroller;

final class l
  extends j
{
  private Scroller a;
  
  public l(Context paramContext)
  {
    a = new Scroller(paramContext);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    a.fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public final boolean a()
  {
    return a.computeScrollOffset();
  }
  
  public final void b()
  {
    a.forceFinished(true);
  }
  
  public final int c()
  {
    return a.getCurrX();
  }
  
  public final int d()
  {
    return a.getCurrY();
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */