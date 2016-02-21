package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.gms.internal.di;
import com.heyzap.http.AsyncHttpClient;
import com.zeptolab.ctr.ads.R;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class t extends Thread implements f {
    private static t sd;
    private volatile boolean mClosed;
    private final Context mContext;
    private volatile String qX;
    private final LinkedBlockingQueue rZ;
    private volatile boolean sa;
    private volatile List sb;
    private volatile String sc;
    private volatile ag se;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Map sf;

        AnonymousClass_1(Map map) {
            this.sf = map;
        }

        public void run() {
            if (TextUtils.isEmpty((CharSequence) this.sf.get("&cid"))) {
                this.sf.put("&cid", t.this.qX);
            }
            if (!GoogleAnalytics.getInstance(t.this.mContext).getAppOptOut() && !t.this.p(this.sf)) {
                if (!TextUtils.isEmpty(t.this.sc)) {
                    u.bR().r(true);
                    this.sf.putAll(new HitBuilder().setCampaignParamsFromUrl(t.this.sc).build());
                    u.bR().r(false);
                    t.this.sc = null;
                }
                t.this.r(this.sf);
                t.this.q(this.sf);
                t.this.se.b(y.s(this.sf), Long.valueOf((String) this.sf.get("&ht")).longValue(), t.this.o(this.sf), t.this.sb);
            }
        }
    }

    private t(Context context) {
        super("GAThread");
        this.rZ = new LinkedBlockingQueue();
        this.sa = false;
        this.mClosed = false;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        start();
    }

    static int C(String str) {
        int i = 1;
        if (!TextUtils.isEmpty(str)) {
            i = 0;
            int i2 = str.length() - 1;
            while (i2 >= 0) {
                char charAt = str.charAt(i2);
                i = (i << 6) & 268435455 + charAt + charAt << 14;
                int i3 = 266338304 & i;
                if (i3 != 0) {
                    i ^= i3 >> 21;
                }
                i2--;
            }
        }
        return i;
    }

    private String a(Throwable th) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        th.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    private String o(Map map) {
        if (!map.containsKey("useSecure")) {
            return "https:";
        }
        return ak.d((String) map.get("useSecure"), true) ? "https:" : "http:";
    }

    private boolean p(Map map) {
        if (map.get("&sf") == null) {
            return false;
        }
        double a = ak.a((String) map.get("&sf"), 100.0d);
        if (a >= 100.0d) {
            return false;
        }
        if (((double) (C((String) map.get("&cid")) % 10000)) < a * 100.0d) {
            return false;
        }
        String str;
        str = map.get("&t") == null ? DeviceInfo.ORIENTATION_UNKNOWN : (String) map.get("&t");
        aa.v(String.format("%s hit sampled out", new Object[]{str}));
        return true;
    }

    static t q(Context context) {
        if (sd == null) {
            sd = new t(context);
        }
        return sd;
    }

    private void q(Map map) {
        m m = a.m(this.mContext);
        ak.a(map, "&adid", m.getValue("&adid"));
        ak.a(map, "&ate", m.getValue("&ate"));
    }

    static String r(Context context) {
        String str = null;
        try {
            FileInputStream openFileInput = context.openFileInput("gaInstallData");
            byte[] bArr = new byte[8192];
            int read = openFileInput.read(bArr, 0, AsyncHttpClient.DEFAULT_SOCKET_BUFFER_SIZE);
            if (openFileInput.available() > 0) {
                aa.t("Too much campaign data, ignoring it.");
                openFileInput.close();
                context.deleteFile("gaInstallData");
                return str;
            } else {
                openFileInput.close();
                context.deleteFile("gaInstallData");
                if (read <= 0) {
                    aa.w("Campaign file is empty.");
                    return str;
                } else {
                    String str2 = new String(bArr, 0, read);
                    aa.u("Campaign found: " + str2);
                    return str2;
                }
            }
        } catch (FileNotFoundException e) {
            aa.u("No campaign data found.");
            return str;
        } catch (IOException e2) {
            aa.t("Error reading campaign data.");
            context.deleteFile("gaInstallData");
            return str;
        }
    }

    private void r(Map map) {
        m bt = g.bt();
        ak.a(map, "&an", bt.getValue("&an"));
        ak.a(map, "&av", bt.getValue("&av"));
        ak.a(map, "&aid", bt.getValue("&aid"));
        ak.a(map, "&aiid", bt.getValue("&aiid"));
        map.put("&v", "1");
    }

    void a(Runnable runnable) {
        this.rZ.add(runnable);
    }

    public void bk() {
        a(new Runnable() {
            public void run() {
                t.this.se.bk();
            }
        });
    }

    public void bp() {
        a(new Runnable() {
            public void run() {
                t.this.se.bp();
            }
        });
    }

    public void br() {
        a(new Runnable() {
            public void run() {
                t.this.se.br();
            }
        });
    }

    public LinkedBlockingQueue bs() {
        return this.rZ;
    }

    public Thread getThread() {
        return this;
    }

    protected void init() {
        this.se.bI();
        this.sb = new ArrayList();
        this.sb.add(new di("appendVersion", "&_v".substring(1), "ma4.0.0"));
        this.sb.add(new di("appendQueueTime", "&qt".substring(1), null));
        this.sb.add(new di("appendCacheBuster", "&z".substring(1), null));
    }

    public void n(Map map) {
        Map hashMap = new HashMap(map);
        String str = (String) map.get("&ht");
        if (str != null) {
            try {
                Long.valueOf(str);
            } catch (NumberFormatException e) {
                str = null;
            }
        }
        if (str == null) {
            hashMap.put("&ht", Long.toString(System.currentTimeMillis()));
        }
        a(new AnonymousClass_1(hashMap));
    }

    public void run() {
        Process.setThreadPriority(R.styleable.MapAttrs_uiZoomControls);
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            aa.w("sleep interrupted in GAThread initialize");
        }
        try {
            if (this.se == null) {
                this.se = new s(this.mContext, this);
            }
            init();
            this.qX = h.bu().getValue("&cid");
            if (this.qX == null) {
                this.sa = true;
            }
            this.sc = r(this.mContext);
            aa.v("Initialized GA Thread");
        } catch (Throwable th) {
            aa.t("Error initializing the GAThread: " + a(th));
            aa.t("Google Analytics will not start up.");
            this.sa = true;
        }
        while (!this.mClosed) {
            try {
                Runnable runnable = (Runnable) this.rZ.take();
                if (!this.sa) {
                    runnable.run();
                }
            } catch (InterruptedException e2) {
                try {
                    aa.u(e2.toString());
                } catch (Throwable th2) {
                    aa.t("Error on GAThread: " + a(th2));
                    aa.t("Google Analytics is shutting down.");
                    this.sa = true;
                }
            }
        }
    }
}