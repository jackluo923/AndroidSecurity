package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.lang.ref.WeakReference;

public final class a$c
  extends a
{
  private WeakReference<ImageManager.OnImageLoadedListener> Fq;
  
  public a$c(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
  {
    super(paramUri, 0);
    gy.c(paramOnImageLoadedListener);
    Fq = new WeakReference(paramOnImageLoadedListener);
  }
  
  protected final void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (!paramBoolean2)
    {
      ImageManager.OnImageLoadedListener localOnImageLoadedListener = (ImageManager.OnImageLoadedListener)Fq.get();
      if (localOnImageLoadedListener != null) {
        localOnImageLoadedListener.onImageLoaded(Fj.uri, paramDrawable, paramBoolean3);
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (c)paramObject;
    ImageManager.OnImageLoadedListener localOnImageLoadedListener1 = (ImageManager.OnImageLoadedListener)Fq.get();
    ImageManager.OnImageLoadedListener localOnImageLoadedListener2 = (ImageManager.OnImageLoadedListener)Fq.get();
    return (localOnImageLoadedListener2 != null) && (localOnImageLoadedListener1 != null) && (hl.equal(localOnImageLoadedListener2, localOnImageLoadedListener1)) && (hl.equal(Fj, Fj));
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Fj });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */