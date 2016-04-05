package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.internal.gy;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

final class ImageManager$ImageReceiver
  extends ResultReceiver
{
  private final ArrayList<a> Fe;
  private final Uri mUri;
  
  ImageManager$ImageReceiver(ImageManager paramImageManager, Uri paramUri)
  {
    super(new Handler(Looper.getMainLooper()));
    mUri = paramUri;
    Fe = new ArrayList();
  }
  
  public final void b(a parama)
  {
    gy.ay("ImageReceiver.addImageRequest() must be called in the main thread");
    Fe.add(parama);
  }
  
  public final void c(a parama)
  {
    gy.ay("ImageReceiver.removeImageRequest() must be called in the main thread");
    Fe.remove(parama);
  }
  
  public final void fa()
  {
    Intent localIntent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
    localIntent.putExtra("com.google.android.gms.extras.uri", mUri);
    localIntent.putExtra("com.google.android.gms.extras.resultReceiver", this);
    localIntent.putExtra("com.google.android.gms.extras.priority", 3);
    ImageManager.b(Ff).sendBroadcast(localIntent);
  }
  
  public final void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    paramBundle = (ParcelFileDescriptor)paramBundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
    ImageManager.f(Ff).execute(new ImageManager.c(Ff, mUri, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.ImageReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */