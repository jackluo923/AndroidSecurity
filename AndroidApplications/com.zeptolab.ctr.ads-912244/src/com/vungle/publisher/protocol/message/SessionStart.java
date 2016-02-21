package com.vungle.publisher.protocol.message;

import com.vungle.publisher.as;
import com.vungle.publisher.at;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class SessionStart extends BaseJsonSerializable {
    String a;
    String b;
    String c;
    Long d;

    @Singleton
    public static class Factory {
        @Inject
        as a;
        @Inject
        at b;

        public final SessionStart a(long j) {
            SessionStart sessionStart = new SessionStart();
            sessionStart.a = this.a.a();
            sessionStart.b = this.a.b();
            sessionStart.c = this.b.b();
            sessionStart.d = Long.valueOf(j);
            return sessionStart;
        }
    }

    SessionStart() {
    }

    public final JSONObject b() {
        JSONObject b = super.b();
        b.putOpt("ifa", this.a);
        b.putOpt("isu", this.b);
        a("pubAppId", this.c);
        b.put("pubAppId", this.c);
        a("start", this.d);
        b.put("start", this.d);
        return b;
    }
}