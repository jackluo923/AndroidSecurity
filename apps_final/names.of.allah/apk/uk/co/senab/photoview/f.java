package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.Log;
import android.widget.ImageView;

final class f
  implements Runnable
{
  private final j b;
  private int c;
  private int d;
  
  public f(b paramb, Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 9) {}
    for (paramb = new l(paramContext);; paramb = new k(paramContext))
    {
      b = paramb;
      return;
    }
  }
  
  public final void a()
  {
    if (b.a) {
      Log.d("PhotoViewAttacher", "Cancel Fling");
    }
    b.b();
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    RectF localRectF = a.b();
    if (localRectF == null) {
      return;
    }
    int i = Math.round(-left);
    int j;
    label52:
    int k;
    int m;
    if (paramInt1 < localRectF.width())
    {
      j = Math.round(localRectF.width() - paramInt1);
      paramInt1 = 0;
      k = Math.round(-top);
      if (paramInt2 >= localRectF.height()) {
        break label205;
      }
      m = Math.round(localRectF.height() - paramInt2);
      paramInt2 = 0;
    }
    for (;;)
    {
      c = i;
      d = k;
      if (b.a) {
        Log.d("PhotoViewAttacher", "fling. StartX:" + i + " StartY:" + k + " MaxX:" + j + " MaxY:" + m);
      }
      if ((i == j) && (k == m)) {
        break;
      }
      b.a(i, k, paramInt3, paramInt4, paramInt1, j, paramInt2, m);
      return;
      paramInt1 = i;
      j = i;
      break label52;
      label205:
      paramInt2 = k;
      m = k;
    }
  }
  
  public final void run()
  {
    ImageView localImageView = a.c();
    if ((localImageView != null) && (b.a()))
    {
      int i = b.c();
      int j = b.d();
      if (b.a) {
        Log.d("PhotoViewAttacher", "fling run(). CurrentX:" + c + " CurrentY:" + d + " NewX:" + i + " NewY:" + j);
      }
      b.c(a).postTranslate(c - i, d - j);
      b.a(a, a.j());
      c = i;
      d = j;
      a.a(localImageView, this);
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */