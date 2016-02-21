package me.kiip.internal.b;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import me.kiip.internal.a.d;
import me.kiip.internal.a.i;
import me.kiip.internal.a.k;
import me.kiip.internal.a.l;
import me.kiip.internal.a.n;
import me.kiip.internal.a.n.a;
import me.kiip.internal.a.n.b;
import me.kiip.internal.a.t;

public class h extends l {
    private static final Object e;
    private final b a;
    private final Config b;
    private final int c;
    private final int d;

    static {
        e = new Object();
    }

    public h(String str, b bVar, int i, int i2, Config config, a aVar) {
        super(0, str, aVar);
        a(new d(1000, 2, 2.0f));
        this.a = bVar;
        this.b = config;
        this.c = i;
        this.d = i2;
    }

    static int a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (((double) (f * 2.0f)) <= Math.min(((double) i) / ((double) i3), ((double) i2) / ((double) i4))) {
            f *= 2.0f;
        }
        return (int) f;
    }

    private static int b(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (i == 0) {
            return (int) ((((double) i2) / ((double) i4)) * ((double) i3));
        }
        if (i2 == 0) {
            return i;
        }
        double d = ((double) i4) / ((double) i3);
        return ((double) i) * d > ((double) i2) ? (int) (((double) i2) / d) : i;
    }

    private n b(i iVar) {
        Object decodeByteArray;
        byte[] bArr = iVar.b;
        Options options = new Options();
        if (this.c == 0 && this.d == 0) {
            options.inPreferredConfig = this.b;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int b = b(this.c, this.d, i, i2);
            int b2 = b(this.d, this.c, i2, i);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i, i2, b, b2);
            Bitmap decodeByteArray2 = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray2 == null || (decodeByteArray2.getWidth() <= b && decodeByteArray2.getHeight() <= b2)) {
                Bitmap bitmap = decodeByteArray2;
            } else {
                decodeByteArray = Bitmap.createScaledBitmap(decodeByteArray2, b, b2, true);
                decodeByteArray2.recycle();
            }
        }
        return decodeByteArray == null ? n.a(new k()) : n.a(decodeByteArray, e.a(iVar));
    }

    protected n a(i iVar) {
        n b;
        synchronized (e) {
            try {
                b = b(iVar);
            } catch (OutOfMemoryError e) {
                Throwable th = e;
                t.c("Caught OOM for %d byte image, url=%s", new Object[]{Integer.valueOf(iVar.b.length), c()});
                b = n.a(new k(th));
            }
        }
        return b;
    }

    protected void a(Bitmap bitmap) {
        this.a.a(bitmap);
    }

    public l.a q() {
        return l.a.a;
    }
}