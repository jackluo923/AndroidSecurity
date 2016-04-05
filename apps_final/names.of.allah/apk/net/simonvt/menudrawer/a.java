package net.simonvt.menudrawer;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.FrameLayout;

class a
  extends FrameLayout
{
  private boolean a;
  private boolean b = true;
  private boolean c;
  private boolean d = true;
  
  public a(Context paramContext)
  {
    super(paramContext);
    if (MenuDrawer.q) {
      setLayerType(2, null);
    }
  }
  
  final void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((a) && (MenuDrawer.q))
    {
      post(new c(this));
      a = false;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    c = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    c = false;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((MenuDrawer.q) && (b)) {
      post(new b(this));
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */