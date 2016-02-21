package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;

public final class Cast {
    public static final Api API;
    public static final CastApi CastApi;
    public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
    public static final int MAX_MESSAGE_LENGTH = 65536;
    public static final int MAX_NAMESPACE_LENGTH = 128;
    static final com.google.android.gms.common.api.Api.b va;

    public static interface ApplicationConnectionResult extends Result {
        ApplicationMetadata getApplicationMetadata();

        String getApplicationStatus();

        String getSessionId();

        boolean getWasLaunched();
    }

    protected static abstract class a extends com.google.android.gms.common.api.a.a implements PendingResult {
        public a() {
            super(va);
        }

        public void c(int i, String str) {
            a(d(new Status(i, str, null)));
        }

        public void x(int i) {
            a(d(new Status(i)));
        }
    }

    private static abstract class b extends a {
        private b() {
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    private static abstract class c extends a {

        class AnonymousClass_1 implements com.google.android.gms.cast.Cast.ApplicationConnectionResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public ApplicationMetadata getApplicationMetadata() {
                return null;
            }

            public String getApplicationStatus() {
                return null;
            }

            public String getSessionId() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }

            public boolean getWasLaunched() {
                return false;
            }
        }

        private c() {
        }

        public /* synthetic */ Result d(Status status) {
            return h(status);
        }

        public com.google.android.gms.cast.Cast.ApplicationConnectionResult h(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    public static interface CastApi {

        public static final class a implements com.google.android.gms.cast.Cast.CastApi {

            class AnonymousClass_1 extends b {
                final /* synthetic */ String wp;
                final /* synthetic */ String wq;

                AnonymousClass_1(String str, String str2) {
                    this.wp = str;
                    this.wq = str2;
                    super();
                }

                protected void a(dq dqVar) {
                    int i = GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE;
                    try {
                        dqVar.a(this.wp, this.wq, this);
                    } catch (IllegalArgumentException e) {
                        x(i);
                    } catch (IllegalStateException e2) {
                        x(i);
                    }
                }
            }

            class AnonymousClass_2 extends c {
                final /* synthetic */ String ws;

                AnonymousClass_2(String str) {
                    this.ws = str;
                    super();
                }

                protected void a(dq dqVar) {
                    try {
                        dqVar.a(this.ws, false, this);
                    } catch (IllegalStateException e) {
                        x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                    }
                }
            }

            class AnonymousClass_3 extends c {
                final /* synthetic */ String ws;
                final /* synthetic */ boolean wt;

                AnonymousClass_3(String str, boolean z) {
                    this.ws = str;
                    this.wt = z;
                    super();
                }

                protected void a(dq dqVar) {
                    try {
                        dqVar.a(this.ws, this.wt, this);
                    } catch (IllegalStateException e) {
                        x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                    }
                }
            }

            class AnonymousClass_4 extends c {
                final /* synthetic */ String ws;
                final /* synthetic */ String wu;

                AnonymousClass_4(String str, String str2) {
                    this.ws = str;
                    this.wu = str2;
                    super();
                }

                protected void a(dq dqVar) {
                    try {
                        dqVar.b(this.ws, this.wu, this);
                    } catch (IllegalStateException e) {
                        x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                    }
                }
            }

            class AnonymousClass_5 extends c {
                final /* synthetic */ String ws;

                AnonymousClass_5(String str) {
                    this.ws = str;
                    super();
                }

                protected void a(dq dqVar) {
                    try {
                        dqVar.b(this.ws, null, this);
                    } catch (IllegalStateException e) {
                        x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                    }
                }
            }

            class AnonymousClass_9 extends b {
                final /* synthetic */ String wu;

                AnonymousClass_9(String str) {
                    this.wu = str;
                    super();
                }

                protected void a(dq dqVar) {
                    if (TextUtils.isEmpty(this.wu)) {
                        c(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE, "IllegalArgument: sessionId cannot be null or empty");
                    } else {
                        try {
                            dqVar.a(this.wu, this);
                        } catch (IllegalStateException e) {
                            x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                        }
                    }
                }
            }

            public ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient) {
                return ((dq) googleApiClient.a(va)).getApplicationMetadata();
            }

            public String getApplicationStatus(GoogleApiClient googleApiClient) {
                return ((dq) googleApiClient.a(va)).getApplicationStatus();
            }

            public double getVolume(GoogleApiClient googleApiClient) {
                return ((dq) googleApiClient.a(va)).da();
            }

            public boolean isMute(GoogleApiClient googleApiClient) {
                return ((dq) googleApiClient.a(va)).isMute();
            }

            public PendingResult joinApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.b(new c() {
                    {
                        super();
                    }

                    protected void a(dq dqVar) {
                        try {
                            dqVar.b(null, null, this);
                        } catch (IllegalStateException e) {
                            x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                        }
                    }
                });
            }

            public PendingResult joinApplication(GoogleApiClient googleApiClient, String str) {
                return googleApiClient.b(new AnonymousClass_5(str));
            }

            public PendingResult joinApplication(GoogleApiClient googleApiClient, String str, String str2) {
                return googleApiClient.b(new AnonymousClass_4(str, str2));
            }

            public PendingResult launchApplication(GoogleApiClient googleApiClient, String str) {
                return googleApiClient.b(new AnonymousClass_2(str));
            }

            public PendingResult launchApplication(GoogleApiClient googleApiClient, String str, boolean z) {
                return googleApiClient.b(new AnonymousClass_3(str, z));
            }

            public PendingResult leaveApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.b(new b() {
                    {
                        super();
                    }

                    protected void a(dq dqVar) {
                        try {
                            dqVar.e(this);
                        } catch (IllegalStateException e) {
                            x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                        }
                    }
                });
            }

            public void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) {
                try {
                    ((dq) googleApiClient.a(va)).Q(str);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public void requestStatus(GoogleApiClient googleApiClient) {
                try {
                    ((dq) googleApiClient.a(va)).cZ();
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public PendingResult sendMessage(GoogleApiClient googleApiClient, String str, String str2) {
                return googleApiClient.b(new AnonymousClass_1(str, str2));
            }

            public void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, com.google.android.gms.cast.Cast.MessageReceivedCallback messageReceivedCallback) {
                try {
                    ((dq) googleApiClient.a(va)).a(str, messageReceivedCallback);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public void setMute(GoogleApiClient googleApiClient, boolean z) {
                try {
                    ((dq) googleApiClient.a(va)).t(z);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public void setVolume(GoogleApiClient googleApiClient, double d) {
                try {
                    ((dq) googleApiClient.a(va)).a(d);
                } catch (RemoteException e) {
                    throw new IOException("service error");
                }
            }

            public PendingResult stopApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.b(new b() {
                    {
                        super();
                    }

                    protected void a(dq dqVar) {
                        try {
                            dqVar.a(AdTrackerConstants.BLANK, this);
                        } catch (IllegalStateException e) {
                            x(GamesStatusCodes.STATUS_REQUEST_UPDATE_TOTAL_FAILURE);
                        }
                    }
                });
            }

            public PendingResult stopApplication(GoogleApiClient googleApiClient, String str) {
                return googleApiClient.b(new AnonymousClass_9(str));
            }
        }

        ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient);

        String getApplicationStatus(GoogleApiClient googleApiClient);

        double getVolume(GoogleApiClient googleApiClient);

        boolean isMute(GoogleApiClient googleApiClient);

        PendingResult joinApplication(GoogleApiClient googleApiClient);

        PendingResult joinApplication(GoogleApiClient googleApiClient, String str);

        PendingResult joinApplication(GoogleApiClient googleApiClient, String str, String str2);

        PendingResult launchApplication(GoogleApiClient googleApiClient, String str);

        PendingResult launchApplication(GoogleApiClient googleApiClient, String str, boolean z);

        PendingResult leaveApplication(GoogleApiClient googleApiClient);

        void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str);

        void requestStatus(GoogleApiClient googleApiClient);

        PendingResult sendMessage(GoogleApiClient googleApiClient, String str, String str2);

        void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, com.google.android.gms.cast.Cast.MessageReceivedCallback messageReceivedCallback);

        void setMute(GoogleApiClient googleApiClient, boolean z);

        void setVolume(GoogleApiClient googleApiClient, double d);

        PendingResult stopApplication(GoogleApiClient googleApiClient);

        PendingResult stopApplication(GoogleApiClient googleApiClient, String str);
    }

    public static final class CastOptions implements ApiOptions {
        final CastDevice wv;
        final com.google.android.gms.cast.Cast.Listener ww;
        private final int wx;

        public static final class Builder {
            private int wA;
            CastDevice wy;
            com.google.android.gms.cast.Cast.Listener wz;

            private Builder(Object obj, Object obj2) {
                er.b(obj, (Object)"CastDevice parameter cannot be null");
                er.b(obj2, (Object)"CastListener parameter cannot be null");
                this.wy = obj;
                this.wz = obj2;
                this.wA = 0;
            }

            public com.google.android.gms.cast.Cast.CastOptions build() {
                return new com.google.android.gms.cast.Cast.CastOptions(null);
            }

            public com.google.android.gms.cast.Cast.CastOptions.Builder setVerboseLoggingEnabled(boolean z) {
                if (z) {
                    this.wA |= 1;
                } else {
                    this.wA &= -2;
                }
                return this;
            }
        }

        private CastOptions(Builder builder) {
            this.wv = builder.wy;
            this.ww = builder.wz;
            this.wx = builder.wA;
        }

        public static Builder builder(CastDevice castDevice, com.google.android.gms.cast.Cast.Listener listener) {
            return new Builder(listener, null);
        }
    }

    public static abstract class Listener {
        public void onApplicationDisconnected(int i) {
        }

        public void onApplicationStatusChanged() {
        }

        public void onVolumeChanged() {
        }
    }

    public static interface MessageReceivedCallback {
        void onMessageReceived(CastDevice castDevice, String str, String str2);
    }

    static {
        va = new com.google.android.gms.common.api.Api.b() {
            public /* synthetic */ com.google.android.gms.common.api.Api.a b(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return c(context, looper, eeVar, apiOptions, connectionCallbacks, onConnectionFailedListener);
            }

            public dq c(Context context, Looper looper, ee eeVar, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                er.b(obj, (Object)"Setting the API options is required.");
                er.b(obj instanceof com.google.android.gms.cast.Cast.CastOptions, (Object)"Must provide valid CastOptions!");
                com.google.android.gms.cast.Cast.CastOptions castOptions = (com.google.android.gms.cast.Cast.CastOptions) obj;
                return new dq(context, looper, castOptions.wv, (long) castOptions.wx, castOptions.ww, connectionCallbacks, onConnectionFailedListener);
            }

            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api(va, new Scope[0]);
        CastApi = new a();
    }

    private Cast() {
    }
}