package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.iq;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager
{
  private static final Object EU = new Object();
  private static HashSet<Uri> EV = new HashSet();
  private static ImageManager EW;
  private static ImageManager EX;
  private final ExecutorService EY;
  private final ImageManager.b EZ;
  private final gx Fa;
  private final Map<a, ImageManager.ImageReceiver> Fb;
  private final Map<Uri, ImageManager.ImageReceiver> Fc;
  private final Map<Uri, Long> Fd;
  private final Context mContext;
  private final Handler mHandler;
  
  private ImageManager(Context paramContext, boolean paramBoolean)
  {
    mContext = paramContext.getApplicationContext();
    mHandler = new Handler(Looper.getMainLooper());
    EY = Executors.newFixedThreadPool(4);
    if (paramBoolean)
    {
      EZ = new ImageManager.b(mContext);
      if (iq.ga()) {
        eX();
      }
    }
    for (;;)
    {
      Fa = new gx();
      Fb = new HashMap();
      Fc = new HashMap();
      Fd = new HashMap();
      return;
      EZ = null;
    }
  }
  
  private Bitmap a(a.a parama)
  {
    if (EZ == null) {
      return null;
    }
    return (Bitmap)EZ.get(parama);
  }
  
  public static ImageManager a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (EX == null) {
        EX = new ImageManager(paramContext, true);
      }
      return EX;
    }
    if (EW == null) {
      EW = new ImageManager(paramContext, false);
    }
    return EW;
  }
  
  public static ImageManager create(Context paramContext)
  {
    return a(paramContext, false);
  }
  
  private void eX()
  {
    mContext.registerComponentCallbacks(new ImageManager.e(EZ));
  }
  
  public final void a(a parama)
  {
    gy.ay("ImageManager.loadImage() must be called in the main thread");
    new ImageManager.d(this, parama).run();
  }
  
  public final void loadImage(ImageView paramImageView, int paramInt)
  {
    a(new a.b(paramImageView, paramInt));
  }
  
  public final void loadImage(ImageView paramImageView, Uri paramUri)
  {
    a(new a.b(paramImageView, paramUri));
  }
  
  public final void loadImage(ImageView paramImageView, Uri paramUri, int paramInt)
  {
    paramImageView = new a.b(paramImageView, paramUri);
    paramImageView.aj(paramInt);
    a(paramImageView);
  }
  
  public final void loadImage(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
  {
    a(new a.c(paramOnImageLoadedListener, paramUri));
  }
  
  public final void loadImage(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri, int paramInt)
  {
    paramOnImageLoadedListener = new a.c(paramOnImageLoadedListener, paramUri);
    paramOnImageLoadedListener.aj(paramInt);
    a(paramOnImageLoadedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */