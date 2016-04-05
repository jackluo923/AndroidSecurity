package com.appyet.c;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.a.a.b.a.l;
import com.a.a.b.c.b;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

final class aa
  extends l
{
  static final List<String> a = Collections.synchronizedList(new LinkedList());
  
  public final void a(String paramString, View paramView, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      paramView = (ImageView)paramView;
      if (paramView.getVisibility() == 0) {
        if (a.contains(paramString)) {
          break label54;
        }
      }
    }
    label54:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        b.a(paramView, 500);
        a.add(paramString);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */