package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.brightcove.player.media.MediaService;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError.CBClickError;
import com.chartboost.sdk.Model.a.b;
import com.google.android.gms.drive.DriveFile;
import com.zeptolab.zbuild.ZBuildConfig;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public final class m {
    private static m c;
    private a a;
    private com.chartboost.sdk.Model.a b;

    public static interface a {
        void a_(com.chartboost.sdk.Model.a aVar, boolean z, String str, CBClickError cBClickError);
    }

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ Activity b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String a;

            AnonymousClass_1(String str) {
                this.a = str;
            }

            public void run() {
                AnonymousClass_1.this.c.a(this.a, AnonymousClass_1.this);
            }
        }

        AnonymousClass_1(String str, Activity activity) {
            this.a = str;
            this.b = activity;
        }

        public void a(String str) {
            Runnable anonymousClass_1 = new AnonymousClass_1(str);
            if (this.b != null) {
                this.b.runOnUiThread(anonymousClass_1);
            } else {
                new Handler().post(anonymousClass_1);
            }
        }

        public void run() {
            HttpURLConnection httpURLConnection;
            String str;
            Throwable th;
            String str2 = this.a;
            if (l.a()) {
                HttpURLConnection httpURLConnection2 = null;
                try {
                    CBPreferences instance = CBPreferences.getInstance();
                    httpURLConnection = (HttpURLConnection) new URL(this.a).openConnection();
                    try {
                        httpURLConnection.setInstanceFollowRedirects(false);
                        httpURLConnection.setConnectTimeout(instance.getTimeout());
                        httpURLConnection.setReadTimeout(instance.getTimeout());
                        String headerField = httpURLConnection.getHeaderField("Location");
                        if (headerField != null) {
                            str2 = headerField;
                        }
                    } catch (Exception e) {
                        httpURLConnection2 = httpURLConnection;
                        th = e;
                        CBLogging.a("CBURLOpener", "Exception raised while opening a HTTP Conection", th);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                            str = str2;
                            a(str);
                        }
                        str = str2;
                        a(str);
                    } catch (Throwable th2) {
                        httpURLConnection2 = httpURLConnection;
                        th = th2;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    th = e2;
                    try {
                        CBLogging.a("CBURLOpener", "Exception raised while opening a HTTP Conection", th);
                    } catch (Throwable th3) {
                        th = th3;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        throw th;
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                        str = str2;
                        a(str);
                    }
                    str = str2;
                    a(str);
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    str = str2;
                    a(str);
                }
            }
            str = str2;
            a(str);
        }
    }

    private m(a aVar) {
        this.a = aVar;
    }

    public static m a(a aVar) {
        if (c == null) {
            c = new m(aVar);
        }
        return c;
    }

    private void a(String str, Context context) {
        Intent intent;
        this.b.c = b.g;
        if (context == null) {
            context = Chartboost.sharedChartboost().getContext();
        }
        if (context != null) {
            try {
                intent = new Intent("android.intent.action.VIEW");
                if (!context instanceof Activity) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                }
                intent.setData(Uri.parse(str));
                context.startActivity(intent);
            } catch (Exception e) {
                if (str.startsWith("market://")) {
                    try {
                        str = "http://market.android.com/" + str.substring(ZBuildConfig.$minsdk);
                        intent = new Intent("android.intent.action.VIEW");
                        if (!context instanceof Activity) {
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                        }
                        intent.setData(Uri.parse(str));
                        context.startActivity(intent);
                    } catch (Exception e2) {
                        CBLogging.a("CBURLOpener", "Exception raised openeing an inavld playstore URL", e2);
                        if (this.a != null) {
                            this.a.a(this.b, false, str, CBClickError.URI_UNRECOGNIZED);
                        }
                    }
                } else if (this.a != null) {
                    this.a.a(this.b, false, str, CBClickError.URI_UNRECOGNIZED);
                }
            }
            if (this.a != null) {
                this.a.a(this.b, true, str, null);
            }
        } else if (this.a != null) {
            this.a.a(this.b, false, str, CBClickError.NO_HOST_ACTIVITY);
        }
    }

    public void a(com.chartboost.sdk.Model.a aVar, String str, Activity activity) {
        boolean z = false;
        this.b = aVar;
        try {
            String scheme = new URI(str).getScheme();
            if (scheme == null) {
                if (this.a != null) {
                    this.a.a(aVar, z, str, CBClickError.URI_INVALID);
                }
            } else if (scheme.equals(MediaService.DEFAULT_MEDIA_DELIVERY) || scheme.equals("https")) {
                k.a().execute(new AnonymousClass_1(str, activity));
            } else {
                a(str, activity);
            }
        } catch (URISyntaxException e) {
            if (this.a != null) {
                this.a.a(aVar, z, str, CBClickError.URI_INVALID);
            }
        }
    }
}