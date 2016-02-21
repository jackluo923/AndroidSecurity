package com.vungle.publisher;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import com.vungle.log.Logger;
import com.vungle.publisher.service.BaseHandler;
import com.vungle.publisher.service.SessionEventHandler;

public final class by extends bu {

    public static interface a {
        void a_(long j);
    }

    public by(String str) {
        super(str);
    }

    private Message a(int i, String str, Long l, Long l2) {
        Message obtainMessage = ((SessionEventHandler) a()).obtainMessage(1);
        obtainMessage.arg1 = i;
        obtainMessage.obj = str;
        Bundle bundle = new Bundle();
        if (l != null) {
            bundle.putLong(VungleService.SESSION_START_MILLIS_EXTRA_KEY, l.longValue());
        }
        if (l2 != null) {
            bundle.putLong(VungleService.ACTIVITY_PAUSE_MILLIS_EXTRA_KEY, l2.longValue());
        }
        obtainMessage.setData(bundle);
        return obtainMessage;
    }

    protected final /* synthetic */ BaseHandler a(Looper looper) {
        return new SessionEventHandler(looper, this);
    }

    public final /* bridge */ /* synthetic */ void b(int i) {
        super.b(i);
    }

    protected final void b(Intent intent, int i) {
        Long l = null;
        try {
            String stringExtra = intent.getStringExtra(VungleService.ACTIVITY_EVENT_EXTRA_KEY);
            Long valueOf;
            if (VungleService.ACTIVITY_RESUME.equals(stringExtra)) {
                valueOf = intent.hasExtra(VungleService.SESSION_START_MILLIS_EXTRA_KEY) ? Long.valueOf(intent.getLongExtra(VungleService.SESSION_START_MILLIS_EXTRA_KEY, 0)) : null;
                if (valueOf == null) {
                    Logger.d(Logger.SERVICE_TAG, "queuing activityResume (session continuation)");
                    l = valueOf;
                } else if (valueOf.longValue() <= 0) {
                    Logger.w(Logger.SERVICE_TAG, new StringBuilder("queuing activityResume (session continuation) - invalid session start seconds in intent: ").append(valueOf).toString());
                } else {
                    Logger.d(Logger.SERVICE_TAG, new StringBuilder("queuing activityResume (session start seconds: ").append(valueOf).append(")").toString());
                    l = valueOf;
                }
                a(a(i, VungleService.ACTIVITY_RESUME, l, null));
            } else if (VungleService.ACTIVITY_PAUSE.equals(stringExtra)) {
                valueOf = intent.hasExtra(VungleService.SESSION_START_MILLIS_EXTRA_KEY) ? Long.valueOf(intent.getLongExtra(VungleService.SESSION_START_MILLIS_EXTRA_KEY, 0)) : null;
                if (intent.hasExtra(VungleService.ACTIVITY_PAUSE_MILLIS_EXTRA_KEY)) {
                    l = Long.valueOf(intent.getLongExtra(VungleService.ACTIVITY_PAUSE_MILLIS_EXTRA_KEY, 0));
                }
                if (valueOf == null) {
                    Logger.w(Logger.SERVICE_TAG, "null session start seconds - dropping activityPause intent");
                } else if (valueOf.longValue() <= 0) {
                    Logger.w(Logger.SERVICE_TAG, new StringBuilder("invalid session start seconds: ").append(valueOf).append(" - dropping activityPause intent").toString());
                } else if (l == null) {
                    Logger.w(Logger.SERVICE_TAG, "null activity pause seconds - dropping activityPause intent");
                } else if (l.longValue() <= 0) {
                    Logger.w(Logger.SERVICE_TAG, new StringBuilder("invalid activity pause seconds: ").append(l).append(" - dropping activityPause intent").toString());
                } else {
                    Logger.d(Logger.SERVICE_TAG, new StringBuilder("queuing activityPause (session start seconds: ").append(valueOf).append(", acitivty pause seconds: ").append(l).toString());
                    b(a(i, VungleService.ACTIVITY_PAUSE, valueOf, l));
                }
            } else {
                Logger.w(Logger.SERVICE_TAG, new StringBuilder("unknown activity event in intent: ").append(stringExtra).toString());
            }
        } catch (Exception e) {
            Logger.e(Logger.SERVICE_TAG, this.a + ": error queuing message", e);
        }
    }

    public final /* bridge */ /* synthetic */ void c(int i) {
        super.c(i);
    }

    public final /* bridge */ /* synthetic */ void d(int i) {
        super.d(i);
    }

    public final /* bridge */ /* synthetic */ void e(int i) {
        super.e(i);
    }
}