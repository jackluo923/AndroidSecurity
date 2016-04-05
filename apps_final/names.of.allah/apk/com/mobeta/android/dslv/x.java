package com.mobeta.android.dslv;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;

public class x
  implements p
{
  int a = -16777216;
  private Bitmap b;
  private ImageView c;
  private ListView d;
  
  public x(ListView paramListView)
  {
    d = paramListView;
  }
  
  public final View a(int paramInt)
  {
    View localView = d.getChildAt(d.getHeaderViewsCount() + paramInt - d.getFirstVisiblePosition());
    if (localView == null) {
      return null;
    }
    localView.setPressed(false);
    localView.setDrawingCacheEnabled(true);
    b = Bitmap.createBitmap(localView.getDrawingCache());
    localView.setDrawingCacheEnabled(false);
    if (c == null) {
      c = new ImageView(d.getContext());
    }
    c.setBackgroundColor(a);
    c.setPadding(0, 0, 0, 0);
    c.setImageBitmap(b);
    c.setLayoutParams(new ViewGroup.LayoutParams(localView.getWidth(), localView.getHeight()));
    return c;
  }
  
  public void a(Point paramPoint) {}
  
  public final void a(View paramView)
  {
    ((ImageView)paramView).setImageDrawable(null);
    b.recycle();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */