package com.google.android.gms.maps;

import android.graphics.Bitmap;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.s.a;

class GoogleMap$5
  extends s.a
{
  GoogleMap$5(GoogleMap paramGoogleMap, GoogleMap.SnapshotReadyCallback paramSnapshotReadyCallback) {}
  
  public void g(d paramd)
  {
    Zd.onSnapshotReady((Bitmap)e.e(paramd));
  }
  
  public void onSnapshotReady(Bitmap paramBitmap)
  {
    Zd.onSnapshotReady(paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */