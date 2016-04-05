package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import android.os.Handler;

final class p$a
  extends j.a
{
  private p$a(p paramp) {}
  
  public final void a(Bitmap paramBitmap, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    p.a(a).post(new p.a.1(this, paramBoolean1, paramBoolean2, paramBitmap, paramString));
  }
  
  public final void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    p.a(a).post(new p.a.2(this, paramBoolean1, paramBoolean2, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.p.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */