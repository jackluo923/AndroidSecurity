package com.a.a.b.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Build.VERSION;
import com.a.a.b.a.f;
import com.a.a.b.a.m;
import java.io.IOException;
import java.io.InputStream;

public final class a
  implements d
{
  protected final boolean a;
  
  public a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private static Bitmap a(InputStream paramInputStream, BitmapFactory.Options paramOptions)
  {
    try
    {
      paramOptions = BitmapFactory.decodeStream(paramInputStream, null, paramOptions);
      return paramOptions;
    }
    finally
    {
      com.a.a.c.c.a(paramInputStream);
    }
  }
  
  private static b a(String paramString1, String paramString2)
  {
    int j = 0;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool1 = true;
    if (("image/jpeg".equalsIgnoreCase(paramString2)) && (com.a.a.b.d.d.a(paramString1) == com.a.a.b.d.d.c)) {}
    try
    {
      int k = new ExifInterface(com.a.a.b.d.d.c.c(paramString1)).getAttributeInt("Orientation", 1);
      i = j;
      switch (k)
      {
      }
    }
    catch (IOException paramString2)
    {
      for (;;)
      {
        int i;
        com.a.a.c.d.c("Can't read EXIF tags from file [%s]", new Object[] { paramString1 });
      }
    }
    bool1 = false;
    i = j;
    for (;;)
    {
      return new b(i, bool1);
      bool2 = false;
      i = 90;
      bool1 = bool2;
      continue;
      bool3 = false;
      i = 180;
      bool1 = bool3;
      continue;
      bool4 = false;
      i = 270;
      bool1 = bool4;
    }
  }
  
  private static c a(InputStream paramInputStream, String paramString)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    for (;;)
    {
      try
      {
        BitmapFactory.decodeStream(paramInputStream, null, localOptions);
        com.a.a.c.c.a(paramInputStream);
        if (Build.VERSION.SDK_INT >= 5)
        {
          paramInputStream = a(paramString, outMimeType);
          return new c(new f(outWidth, outHeight, a), paramInputStream);
        }
      }
      finally
      {
        com.a.a.c.c.a(paramInputStream);
      }
      paramInputStream = new b();
    }
  }
  
  private static InputStream b(e parame)
  {
    return f.a(b, g);
  }
  
  public final Bitmap a(e parame)
  {
    Object localObject2 = a(b(parame), b);
    Object localObject1 = a;
    Object localObject4 = d;
    Object localObject3 = c;
    int i = 1;
    int k;
    int j;
    int i1;
    int i2;
    int n;
    int i3;
    int i4;
    if (localObject4 != com.a.a.b.a.e.a)
    {
      if (localObject4 != com.a.a.b.a.e.b) {
        break label278;
      }
      k = 1;
      localObject4 = e;
      i = a;
      j = b;
      i1 = a;
      i2 = b;
      n = 1;
      m = 1;
      i3 = i / i1;
      i4 = j / i2;
      switch (com.a.a.c.b.a[localObject4.ordinal()])
      {
      default: 
        j = m;
        i = j;
      }
    }
    for (;;)
    {
      j = i;
      if (i <= 0) {
        j = 1;
      }
      i = j;
      if (a)
      {
        com.a.a.c.d.a("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", new Object[] { localObject1, new f(a / j, b / j), Integer.valueOf(j), a });
        i = j;
      }
      localObject1 = h;
      inSampleSize = i;
      localObject1 = a(b(parame), (BitmapFactory.Options)localObject1);
      if (localObject1 != null) {
        break label435;
      }
      com.a.a.c.d.d("Image can't be decoded [%s]", new Object[] { a });
      return (Bitmap)localObject1;
      label278:
      k = 0;
      break;
      if (k != 0)
      {
        n = 1;
        m = i;
        k = j;
        j = n;
        for (;;)
        {
          if (m / 2 < i1)
          {
            i = j;
            if (k / 2 < i2) {
              break;
            }
          }
          m /= 2;
          k /= 2;
          j *= 2;
        }
      }
      i = Math.max(i3, i4);
      continue;
      if (k != 0)
      {
        m = i;
        k = j;
        i = n;
        for (;;)
        {
          j = i;
          if (m / 2 < i1) {
            break;
          }
          j = i;
          if (k / 2 < i2) {
            break;
          }
          m /= 2;
          k /= 2;
          i *= 2;
        }
      }
      i = Math.min(i3, i4);
    }
    label435:
    int m = b.a;
    boolean bool = b.b;
    localObject2 = new Matrix();
    localObject3 = d;
    float f2;
    if ((localObject3 == com.a.a.b.a.e.d) || (localObject3 == com.a.a.b.a.e.e))
    {
      localObject4 = new f(((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight(), m);
      f localf = c;
      m localm = e;
      if (localObject3 != com.a.a.b.a.e.e) {
        break label851;
      }
      i = 1;
      n = a;
      i1 = b;
      j = a;
      k = b;
      f1 = n / j;
      f2 = i1 / k;
      if (((localm != m.a) || (f1 < f2)) && ((localm != m.b) || (f1 >= f2))) {
        break label857;
      }
      k = (int)(i1 / f1);
      label610:
      if (((i != 0) || (j >= n) || (k >= i1)) && ((i == 0) || (j == n) || (k == i1))) {
        break label868;
      }
    }
    label851:
    label857:
    label868:
    for (float f1 = j / n;; f1 = 1.0F)
    {
      if (Float.compare(f1, 1.0F) != 0)
      {
        ((Matrix)localObject2).setScale(f1, f1);
        if (a) {
          com.a.a.c.d.a("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", new Object[] { localObject4, new f((int)(a * f1), (int)(b * f1)), Float.valueOf(f1), a });
        }
      }
      if (bool)
      {
        ((Matrix)localObject2).postScale(-1.0F, 1.0F);
        if (a) {
          com.a.a.c.d.a("Flip image horizontally [%s]", new Object[] { a });
        }
      }
      if (m != 0)
      {
        ((Matrix)localObject2).postRotate(m);
        if (a) {
          com.a.a.c.d.a("Rotate image on %1$d° [%2$s]", new Object[] { Integer.valueOf(m), a });
        }
      }
      parame = Bitmap.createBitmap((Bitmap)localObject1, 0, 0, ((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight(), (Matrix)localObject2, true);
      if (parame != localObject1) {
        ((Bitmap)localObject1).recycle();
      }
      return parame;
      i = 0;
      break;
      j = (int)(n / f2);
      break label610;
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */