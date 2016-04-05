package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import com.google.android.youtube.player.YouTubeThumbnailLoader;
import com.google.android.youtube.player.YouTubeThumbnailLoader.ErrorReason;
import com.google.android.youtube.player.YouTubeThumbnailLoader.OnThumbnailLoadedListener;
import com.google.android.youtube.player.YouTubeThumbnailView;
import java.util.NoSuchElementException;

public abstract class a
  implements YouTubeThumbnailLoader
{
  private final YouTubeThumbnailView a;
  private YouTubeThumbnailLoader.OnThumbnailLoadedListener b;
  private boolean c;
  private boolean d;
  
  public a(YouTubeThumbnailView paramYouTubeThumbnailView)
  {
    a = ((YouTubeThumbnailView)ac.a(paramYouTubeThumbnailView, "thumbnailView cannot be null"));
  }
  
  private void h()
  {
    if (!a()) {
      throw new IllegalStateException("This YouTubeThumbnailLoader has been released");
    }
  }
  
  public final void a(Bitmap paramBitmap, String paramString)
  {
    if (a())
    {
      a.setImageBitmap(paramBitmap);
      if (b != null) {
        b.onThumbnailLoaded(a, paramString);
      }
    }
  }
  
  public abstract void a(String paramString);
  
  public abstract void a(String paramString, int paramInt);
  
  protected boolean a()
  {
    return !d;
  }
  
  public abstract void b();
  
  public final void b(String paramString)
  {
    if ((a()) && (b != null)) {}
    try
    {
      paramString = YouTubeThumbnailLoader.ErrorReason.valueOf(paramString);
      b.onThumbnailError(a, paramString);
      return;
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;)
      {
        paramString = YouTubeThumbnailLoader.ErrorReason.UNKNOWN;
      }
    }
    catch (NullPointerException paramString)
    {
      for (;;)
      {
        paramString = YouTubeThumbnailLoader.ErrorReason.UNKNOWN;
      }
    }
  }
  
  public abstract void c();
  
  public abstract void d();
  
  public abstract boolean e();
  
  public abstract boolean f();
  
  public final void first()
  {
    h();
    if (!c) {
      throw new IllegalStateException("Must call setPlaylist first");
    }
    d();
  }
  
  public abstract void g();
  
  public final boolean hasNext()
  {
    h();
    return e();
  }
  
  public final boolean hasPrevious()
  {
    h();
    return f();
  }
  
  public final void next()
  {
    h();
    if (!c) {
      throw new IllegalStateException("Must call setPlaylist first");
    }
    if (!e()) {
      throw new NoSuchElementException("Called next at end of playlist");
    }
    b();
  }
  
  public final void previous()
  {
    h();
    if (!c) {
      throw new IllegalStateException("Must call setPlaylist first");
    }
    if (!f()) {
      throw new NoSuchElementException("Called previous at start of playlist");
    }
    c();
  }
  
  public final void release()
  {
    if (a())
    {
      d = true;
      b = null;
      g();
    }
  }
  
  public final void setOnThumbnailLoadedListener(YouTubeThumbnailLoader.OnThumbnailLoadedListener paramOnThumbnailLoadedListener)
  {
    h();
    b = paramOnThumbnailLoadedListener;
  }
  
  public final void setPlaylist(String paramString)
  {
    setPlaylist(paramString, 0);
  }
  
  public final void setPlaylist(String paramString, int paramInt)
  {
    h();
    c = true;
    a(paramString, paramInt);
  }
  
  public final void setVideo(String paramString)
  {
    h();
    c = false;
    a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */