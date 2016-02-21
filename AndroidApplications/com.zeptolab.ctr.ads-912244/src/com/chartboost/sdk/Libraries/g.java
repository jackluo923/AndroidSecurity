package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Bundle;
import com.chartboost.sdk.c;
import com.chartboost.sdk.impl.n;
import com.chartboost.sdk.impl.n.b;
import com.google.android.gms.plus.PlusShare;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;

public final class g {
    private a a;
    private c b;
    private float c;
    private b d;

    public static class a {
        private int a;
        private String b;
        private File c;
        private Bitmap d;
        private int e;
        private int f;

        public a(String str, File file) {
            this.e = -1;
            this.f = -1;
            this.c = file;
            this.b = str;
            this.d = null;
            this.a = 1;
        }

        private void f() {
            if (this.d != null) {
                this.e = this.d.getWidth();
                this.f = this.d.getHeight();
            } else {
                try {
                    Options options = new Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(this.c.getAbsolutePath(), options);
                    this.e = options.outWidth;
                    this.f = options.outHeight;
                } catch (Exception e) {
                    CBLogging.a("MemoryBitmap", "Error decoding file size", e);
                }
            }
        }

        public Bitmap a_() {
            if (this.d == null) {
                b();
            }
            return this.d;
        }

        public void b() {
            BufferedInputStream bufferedInputStream;
            Options options;
            Throwable th;
            byte[] bArr = null;
            if (this.d == null) {
                Options options2;
                CBLogging.a("MemoryBitmap", "Loading image '" + this.b + "' from cache");
                try {
                    long length;
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(this.c));
                    try {
                        length = this.c.length();
                    } catch (IOException e) {
                        th = e;
                        try {
                            CBLogging.a("MemoryBitmap", "IO Exception while decoding bitmap", th);
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e2) {
                                    CBLogging.a("MemoryBitmap", "IO Exception while closing the stream ", e2);
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e3) {
                                    CBLogging.a("MemoryBitmap", "IO Exception while closing the stream ", e3);
                                }
                            }
                            throw th;
                        }
                        if (bArr == null) {
                            CBLogging.b("MemoryBitmap", "decode() - bitmap not found");
                        } else {
                            options = new Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                            options2 = new Options();
                            options2.inJustDecodeBounds = false;
                            options2.inDither = false;
                            options2.inPurgeable = true;
                            options2.inInputShareable = true;
                            options2.inTempStorage = new byte[32768];
                            options2.inSampleSize = 1;
                            while (options2.inSampleSize < 32) {
                                this.d = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
                                break;
                                break;
                                break;
                            }
                            this.a = options2.inSampleSize;
                        }
                    }
                    if (length > 2147483647L) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e4) {
                        }
                        throw new IOException("Cannot read files larger than 2147483647 bytes");
                    } else {
                        int i = (int) length;
                        bArr = new byte[i];
                        bufferedInputStream.read(bArr, 0, i);
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e5) {
                                CBLogging.a("MemoryBitmap", "IO Exception while closing the stream ", e5);
                            }
                        }
                        if (bArr == null) {
                            CBLogging.b("MemoryBitmap", "decode() - bitmap not found");
                        } else {
                            options = new Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                            options2 = new Options();
                            options2.inJustDecodeBounds = false;
                            options2.inDither = false;
                            options2.inPurgeable = true;
                            options2.inInputShareable = true;
                            options2.inTempStorage = new byte[32768];
                            options2.inSampleSize = 1;
                            while (options2.inSampleSize < 32) {
                                try {
                                    this.d = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
                                    break;
                                    break;
                                    break;
                                } catch (OutOfMemoryError e6) {
                                    CBLogging.a("MemoryBitmap", "OutOfMemoryError suppressed - trying larger sample size", e6);
                                    options2.inSampleSize *= 2;
                                } catch (Exception e7) {
                                    CBLogging.a("MemoryBitmap", "Exception raised decoding bitmap", e7);
                                }
                            }
                            this.a = options2.inSampleSize;
                        }
                    }
                } catch (IOException e8) {
                    th = e8;
                    bufferedInputStream = null;
                    CBLogging.a("MemoryBitmap", "IO Exception while decoding bitmap", th);
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (bArr == null) {
                        options = new Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        options2 = new Options();
                        options2.inJustDecodeBounds = false;
                        options2.inDither = false;
                        options2.inPurgeable = true;
                        options2.inInputShareable = true;
                        options2.inTempStorage = new byte[32768];
                        options2.inSampleSize = 1;
                        while (options2.inSampleSize < 32) {
                            this.d = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
                            break;
                            break;
                            break;
                        }
                        this.a = options2.inSampleSize;
                    } else {
                        CBLogging.b("MemoryBitmap", "decode() - bitmap not found");
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream = null;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    throw th;
                }
            }
        }

        public void c() {
            try {
                if (!(this.d == null || this.d.isRecycled())) {
                    this.d.recycle();
                }
            } catch (Exception e) {
            }
            this.d = null;
        }

        public int d() {
            if (this.d != null) {
                return this.d.getWidth();
            }
            if (this.e >= 0) {
                return this.e;
            }
            f();
            return this.e;
        }

        public int e() {
            if (this.d != null) {
                return this.d.getHeight();
            }
            if (this.f >= 0) {
                return this.f;
            }
            f();
            return this.f;
        }
    }

    public g(c cVar) {
        this.c = 1.0f;
        this.d = new b() {
            public void a(com.chartboost.sdk.Libraries.g.a aVar, Bundle bundle) {
                g.this = aVar;
                g.this.b.a(g.this);
            }
        };
        this.b = cVar;
    }

    public int a() {
        return this.a.d() * this.a.a;
    }

    public void a(String str) {
        a(this.b.g(), str, new Bundle());
    }

    public void a(JSONObject jSONObject, String str, Bundle bundle) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            this.b.a();
            String optString = optJSONObject.optString(PlusShare.KEY_CALL_TO_ACTION_URL);
            String optString2 = optJSONObject.optString("checksum");
            this.c = (float) optJSONObject.optDouble("scale", 1.0d);
            n.a().a(optString, optString2, this.d, null, bundle == null ? new Bundle() : bundle);
        } else {
            this.b.a(null);
        }
    }

    public int b() {
        return this.a.e() * this.a.a;
    }

    public void c() {
        if (this.a != null) {
            this.a.c();
        }
    }

    public boolean d() {
        return this.a != null;
    }

    public Bitmap e() {
        return this.a != null ? this.a.a() : null;
    }

    public float f() {
        return this.c;
    }
}