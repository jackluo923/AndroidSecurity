package com.appyet.c;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.a.a.b.a.a;
import com.a.a.b.a.l;

final class av
  extends l
{
  av(at paramat) {}
  
  public final void a()
  {
    at.b(a).setVisibility(0);
  }
  
  public final void a(a parama)
  {
    Object localObject = null;
    switch (ax.a[parama.a().ordinal()])
    {
    default: 
      parama = (a)localObject;
    }
    for (;;)
    {
      Toast.makeText(at.c(a), parama, 0).show();
      at.b(a).setVisibility(8);
      return;
      parama = "Input/Output error";
      continue;
      parama = "Image can't be decoded";
      continue;
      parama = "Downloads are denied";
      continue;
      parama = "Out Of Memory error";
      continue;
      parama = "Unknown error";
    }
  }
  
  public final void a(String paramString, View paramView, Bitmap paramBitmap)
  {
    at.b(a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */