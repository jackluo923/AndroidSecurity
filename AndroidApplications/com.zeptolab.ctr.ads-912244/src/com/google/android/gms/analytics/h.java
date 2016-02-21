package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.cast.Cast;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

class h implements m {
    private static final Object qI;
    private static h qW;
    private final Context mContext;
    private String qX;
    private boolean qY;
    private final Object qZ;

    class AnonymousClass_1 extends Thread {
        AnonymousClass_1(String str) {
            super(str);
        }

        public void run() {
            synchronized (h.this.qZ) {
                h.this.qX = h.this.by();
                h.this.qY = true;
                h.this.qZ.notifyAll();
            }
        }
    }

    static {
        qI = new Object();
    }

    protected h(Context context) {
        this.qY = false;
        this.qZ = new Object();
        this.mContext = context;
        bx();
    }

    public static h bu() {
        h hVar;
        synchronized (qI) {
            hVar = qW;
        }
        return hVar;
    }

    private String bv() {
        if (!this.qY) {
            synchronized (this.qZ) {
                if (!this.qY) {
                    aa.v("Waiting for clientId to load");
                    do {
                        try {
                            this.qZ.wait();
                        } catch (InterruptedException e) {
                            aa.t("Exception while waiting for clientId: " + e);
                        }
                    } while (!this.qY);
                }
            }
        }
        aa.v("Loaded clientId");
        return this.qX;
    }

    private void bx() {
        new AnonymousClass_1("client_id_fetcher").start();
    }

    public static void n(Context context) {
        synchronized (qI) {
            if (qW == null) {
                qW = new h(context);
            }
        }
    }

    private boolean y(String str) {
        boolean z = false;
        try {
            aa.v("Storing clientId.");
            FileOutputStream openFileOutput = this.mContext.openFileOutput("gaClientId", 0);
            openFileOutput.write(str.getBytes());
            openFileOutput.close();
            return true;
        } catch (FileNotFoundException e) {
            aa.t("Error creating clientId file.");
            return z;
        } catch (IOException e2) {
            aa.t("Error writing to clientId file.");
            return z;
        }
    }

    protected String bw() {
        String toLowerCase = UUID.randomUUID().toString().toLowerCase();
        try {
            return y(toLowerCase) ? toLowerCase : "0";
        } catch (Exception e) {
            return null;
        }
    }

    String by() {
        String str = null;
        try {
            FileInputStream openFileInput = this.mContext.openFileInput("gaClientId");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, Cast.MAX_NAMESPACE_LENGTH);
            if (openFileInput.available() > 0) {
                aa.t("clientId file seems corrupted, deleting it.");
                openFileInput.close();
                this.mContext.deleteFile("gaClientId");
            } else if (read <= 0) {
                aa.t("clientId file seems empty, deleting it.");
                openFileInput.close();
                this.mContext.deleteFile("gaClientId");
            } else {
                String str2 = new String(bArr, 0, read);
                try {
                    openFileInput.close();
                    str = str2;
                } catch (FileNotFoundException e) {
                    str = str2;
                } catch (IOException e2) {
                    str = str2;
                    aa.t("Error reading clientId file, deleting it.");
                    this.mContext.deleteFile("gaClientId");
                }
            }
        } catch (FileNotFoundException e3) {
        } catch (IOException e4) {
            aa.t("Error reading clientId file, deleting it.");
            this.mContext.deleteFile("gaClientId");
        }
        return str == null ? bw() : str;
    }

    public String getValue(String str) {
        return "&cid".equals(str) ? bv() : null;
    }

    public boolean x(String str) {
        return "&cid".equals(str);
    }
}