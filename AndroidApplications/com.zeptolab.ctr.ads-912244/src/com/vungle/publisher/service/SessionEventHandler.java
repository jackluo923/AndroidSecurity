package com.vungle.publisher.service;

import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import com.vungle.log.Logger;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.be;
import com.vungle.publisher.by;
import com.vungle.publisher.bz.a;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import java.util.Collection;
import java.util.Iterator;
import javax.inject.Inject;
import org.json.JSONException;

public class SessionEventHandler extends BaseHandler {
    @Inject
    ProtocolHttpGateway e;
    @Inject
    Collection f;

    public SessionEventHandler(Looper looper, a aVar) {
        super(looper, aVar);
        Injector.getInstance().a.a(this);
    }

    public final /* bridge */ /* synthetic */ void a(int i, int i2) {
        super.a(i, i2);
    }

    protected final void a(Message message) {
        try {
            String str = (String) message.obj;
            Bundle data;
            if (VungleService.ACTIVITY_RESUME.equals(str)) {
                Long valueOf;
                data = message.getData();
                valueOf = data.containsKey(VungleService.SESSION_START_MILLIS_EXTRA_KEY) ? Long.valueOf(data.getLong(VungleService.SESSION_START_MILLIS_EXTRA_KEY)) : null;
                if (valueOf == null) {
                    Logger.d(Logger.SERVICE_TAG, "processing session continuation");
                } else {
                    Logger.d(Logger.SERVICE_TAG, "processing session start");
                    ProtocolHttpGateway protocolHttpGateway = this.e;
                    protocolHttpGateway.a(protocolHttpGateway.k.a(valueOf.longValue()));
                }
                Logger.d(Logger.SERVICE_TAG, "removing activityPause messages from queue");
                removeMessages(1, VungleService.ACTIVITY_PAUSE);
            } else if (VungleService.ACTIVITY_PAUSE.equals(str)) {
                Logger.d(Logger.SERVICE_TAG, "processing session end");
                data = message.getData();
                long j = data.getLong(VungleService.SESSION_START_MILLIS_EXTRA_KEY);
                long j2 = data.getLong(VungleService.ACTIVITY_PAUSE_MILLIS_EXTRA_KEY);
                ProtocolHttpGateway protocolHttpGateway2 = this.e;
                protocolHttpGateway2.a(protocolHttpGateway2.j.a(j, j2));
                if (this.f != null && !this.f.isEmpty()) {
                    Logger.d(Logger.SERVICE_TAG, new StringBuilder("notifying ").append(this.f.size()).append(" session end listeners").toString());
                    Iterator it = this.f.iterator();
                    while (it.hasNext()) {
                        ((by.a) it.next()).a(j);
                    }
                }
            } else {
                Logger.w(Logger.SERVICE_TAG, new StringBuilder("unknown activity event in message: ").append(str).toString());
            }
        } catch (JSONException e) {
            throw new be(e);
        }
    }

    public final /* bridge */ /* synthetic */ void b(int i, int i2) {
        super.b(i, i2);
    }

    public /* bridge */ /* synthetic */ void handleMessage(Message message) {
        super.handleMessage(message);
    }
}