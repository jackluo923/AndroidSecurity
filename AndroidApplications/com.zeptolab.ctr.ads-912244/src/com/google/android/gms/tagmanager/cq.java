package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.jd.a;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.ke;
import com.google.android.gms.tagmanager.cr.c;
import com.google.android.gms.tagmanager.cr.g;
import com.zeptolab.utils.HTMLEncoder;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

class cq implements f {
    private final String TM;
    private bg Wi;
    private final ExecutorService Wp;
    private final Context mContext;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ a Wr;

        AnonymousClass_2(a aVar) {
            this.Wr = aVar;
        }

        public void run() {
            cq.this.c(this.Wr);
        }
    }

    cq(Context context, String str) {
        this.mContext = context;
        this.TM = str;
        this.Wp = Executors.newSingleThreadExecutor();
    }

    private c a(ByteArrayOutputStream byteArrayOutputStream) {
        c cVar = null;
        try {
            return ba.br(byteArrayOutputStream.toString(HTMLEncoder.ENCODE_NAME_DEFAULT));
        } catch (UnsupportedEncodingException e) {
            bh.s("Tried to convert binary resource to string for JSON parsing; not UTF-8 format");
            return cVar;
        } catch (JSONException e2) {
            bh.w("Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return cVar;
        }
    }

    private c k(byte[] bArr) {
        c cVar = null;
        try {
            return cr.b(f.a(bArr));
        } catch (kd e) {
            bh.w("Resource doesn't contain a binary container");
            return cVar;
        } catch (g e2) {
            bh.w("Resource doesn't contain a binary container");
            return cVar;
        }
    }

    public void a(bg bgVar) {
        this.Wi = bgVar;
    }

    public void b(a aVar) {
        this.Wp.execute(new AnonymousClass_2(aVar));
    }

    public c bP(int i) {
        c cVar = null;
        bh.v("Atttempting to load container from resource ID " + i);
        try {
            InputStream openRawResource = this.mContext.getResources().openRawResource(i);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            cr.b(openRawResource, byteArrayOutputStream);
            c a = a(byteArrayOutputStream);
            return a != null ? a : k(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            bh.w("Error reading default container resource with ID " + i);
            return cVar;
        } catch (NotFoundException e2) {
            bh.w("No default container resource found.");
            return cVar;
        }
    }

    boolean c(a aVar) {
        boolean z = false;
        File jD = jD();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(jD);
            try {
                fileOutputStream.write(ke.d(aVar));
                z = true;
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    bh.w("error closing stream for writing resource to disk");
                }
            } catch (IOException e2) {
                try {
                    bh.w("Error writing resource to disk. Removing resource from disk.");
                    jD.delete();
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        bh.w("error closing stream for writing resource to disk");
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        bh.w("error closing stream for writing resource to disk");
                    }
                }
            }
        } catch (FileNotFoundException e5) {
            bh.t("Error opening resource file for writing");
        }
        return z;
    }

    public void iN() {
        this.Wp.execute(new Runnable() {
            public void run() {
                cq.this.jC();
            }
        });
    }

    void jC() {
        if (this.Wi == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        this.Wi.iM();
        bh.v("Start loading resource from disk ...");
        if ((ce.ju().jv() == a.VX || ce.ju().jv() == a.VY) && this.TM.equals(ce.ju().getContainerId())) {
            this.Wi.a(bg.a.VA);
        } else {
            try {
                InputStream fileInputStream = new FileInputStream(jD());
                try {
                    OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    cr.b(fileInputStream, byteArrayOutputStream);
                    this.Wi.i(a.l(byteArrayOutputStream.toByteArray()));
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                        bh.w("error closing stream for reading resource from disk");
                    }
                } catch (IOException e2) {
                    try {
                        bh.w("error reading resource from disk");
                        this.Wi.a(bg.a.VB);
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            bh.w("error closing stream for reading resource from disk");
                        }
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                            bh.w("error closing stream for reading resource from disk");
                        }
                    }
                }
                bh.v("Load resource from disk finished.");
            } catch (FileNotFoundException e5) {
                bh.s("resource not on disk");
                this.Wi.a(bg.a.VA);
            }
        }
    }

    File jD() {
        return new File(this.mContext.getDir("google_tagmanager", 0), "resource_" + this.TM);
    }

    public synchronized void release() {
        this.Wp.shutdown();
    }
}