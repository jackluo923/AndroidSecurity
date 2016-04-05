package com.a.a.b.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class a
  implements c
{
  protected final Context a;
  protected final int b;
  protected final int c;
  
  public a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    b = 5000;
    c = 20000;
  }
  
  private HttpURLConnection a(String paramString)
  {
    paramString = (HttpURLConnection)new URL(Uri.encode(paramString, "@#&=*+-_.,:!?()/~'%")).openConnection();
    paramString.setConnectTimeout(b);
    paramString.setReadTimeout(c);
    return paramString;
  }
  
  public final InputStream a(String paramString, Object paramObject)
  {
    int i = 0;
    switch (b.a[d.a(paramString).ordinal()])
    {
    default: 
      throw new UnsupportedOperationException(String.format("UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))", new Object[] { paramString }));
    case 1: 
    case 2: 
      paramString = a(paramString);
      while ((paramString.getResponseCode() / 100 == 3) && (i < 5))
      {
        paramString = a(paramString.getHeaderField("Location"));
        i += 1;
      }
      return new BufferedInputStream(paramString.getInputStream(), 32768);
    case 3: 
      return new BufferedInputStream(new FileInputStream(d.c.c(paramString)), 32768);
    case 4: 
      return a.getContentResolver().openInputStream(Uri.parse(paramString));
    case 5: 
      paramString = d.e.c(paramString);
      return a.getAssets().open(paramString);
    }
    i = Integer.parseInt(d.f.c(paramString));
    paramString = ((BitmapDrawable)a.getResources().getDrawable(i)).getBitmap();
    paramObject = new ByteArrayOutputStream();
    paramString.compress(Bitmap.CompressFormat.PNG, 0, (OutputStream)paramObject);
    return new ByteArrayInputStream(((ByteArrayOutputStream)paramObject).toByteArray());
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */