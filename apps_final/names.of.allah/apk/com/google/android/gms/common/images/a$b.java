package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.internal.gu;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.lang.ref.WeakReference;

public final class a$b
  extends a
{
  private WeakReference<ImageView> Fp;
  
  public a$b(ImageView paramImageView, int paramInt)
  {
    super(null, paramInt);
    gy.c(paramImageView);
    Fp = new WeakReference(paramImageView);
  }
  
  public a$b(ImageView paramImageView, Uri paramUri)
  {
    super(paramUri, 0);
    gy.c(paramImageView);
    Fp = new WeakReference(paramImageView);
  }
  
  private void a(ImageView paramImageView, Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if ((!paramBoolean2) && (!paramBoolean3)) {}
    for (int i = 1; (i != 0) && ((paramImageView instanceof gw)); i = 0)
    {
      int j = ((gw)paramImageView).fd();
      if ((Fl == 0) || (j != Fl)) {
        break;
      }
      return;
    }
    paramBoolean1 = b(paramBoolean1, paramBoolean2);
    if (paramBoolean1) {
      paramDrawable = a(paramImageView.getDrawable(), paramDrawable);
    }
    for (;;)
    {
      paramImageView.setImageDrawable(paramDrawable);
      gw localgw;
      if ((paramImageView instanceof gw))
      {
        localgw = (gw)paramImageView;
        if (!paramBoolean3) {
          break label149;
        }
        paramImageView = Fj.uri;
        label110:
        localgw.f(paramImageView);
        if (i == 0) {
          break label154;
        }
      }
      label149:
      label154:
      for (i = Fl;; i = 0)
      {
        localgw.al(i);
        if (!paramBoolean1) {
          break;
        }
        ((gu)paramDrawable).startTransition(250);
        return;
        paramImageView = null;
        break label110;
      }
    }
  }
  
  protected final void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    ImageView localImageView = (ImageView)Fp.get();
    if (localImageView != null) {
      a(localImageView, paramDrawable, paramBoolean1, paramBoolean2, paramBoolean3);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    Object localObject = (b)paramObject;
    paramObject = (ImageView)Fp.get();
    localObject = (ImageView)Fp.get();
    return (localObject != null) && (paramObject != null) && (hl.equal(localObject, paramObject));
  }
  
  public final int hashCode()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */