package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.internal.gu;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.gx.a;
import com.google.android.gms.internal.gy;

public abstract class a
{
  final a.a Fj;
  protected int Fk = 0;
  protected int Fl = 0;
  private boolean Fm = true;
  private boolean Fn = false;
  protected int Fo;
  
  public a(Uri paramUri, int paramInt)
  {
    Fj = new a.a(paramUri);
    Fl = paramInt;
  }
  
  private Drawable a(Context paramContext, gx paramgx, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    if (Fo > 0)
    {
      gx.a locala = new gx.a(paramInt, Fo);
      Drawable localDrawable = (Drawable)paramgx.get(locala);
      paramContext = localDrawable;
      if (localDrawable == null)
      {
        localDrawable = localResources.getDrawable(paramInt);
        paramContext = localDrawable;
        if ((Fo & 0x1) != 0) {
          paramContext = a(localResources, localDrawable);
        }
        paramgx.put(locala, paramContext);
      }
      return paramContext;
    }
    return localResources.getDrawable(paramInt);
  }
  
  protected Drawable a(Resources paramResources, Drawable paramDrawable)
  {
    return gv.a(paramResources, paramDrawable);
  }
  
  protected gu a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    if (paramDrawable1 != null)
    {
      localDrawable = paramDrawable1;
      if (!(paramDrawable1 instanceof gu)) {}
    }
    for (Drawable localDrawable = ((gu)paramDrawable1).fb();; localDrawable = null) {
      return new gu(localDrawable, paramDrawable2);
    }
  }
  
  void a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean)
  {
    gy.c(paramBitmap);
    Bitmap localBitmap = paramBitmap;
    if ((Fo & 0x1) != 0) {
      localBitmap = gv.a(paramBitmap);
    }
    a(new BitmapDrawable(paramContext.getResources(), localBitmap), paramBoolean, false, true);
  }
  
  void a(Context paramContext, gx paramgx)
  {
    Drawable localDrawable = null;
    if (Fk != 0) {
      localDrawable = a(paramContext, paramgx, Fk);
    }
    a(localDrawable, false, true, false);
  }
  
  void a(Context paramContext, gx paramgx, boolean paramBoolean)
  {
    Drawable localDrawable = null;
    if (Fl != 0) {
      localDrawable = a(paramContext, paramgx, Fl);
    }
    a(localDrawable, paramBoolean, false, false);
  }
  
  protected abstract void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public void aj(int paramInt)
  {
    Fl = paramInt;
  }
  
  protected boolean b(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (Fm) && (!paramBoolean2) && ((!paramBoolean1) || (Fn));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */