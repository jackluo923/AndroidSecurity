package com.vungle.publisher.protocol.message;

import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class SessionEnd extends BaseJsonSerializable {
    public Long a;
    public SessionStart b;

    @Singleton
    public static class Factory {
        @Inject
        public com.vungle.publisher.protocol.message.SessionStart.Factory a;

        Factory() {
        }

        public static SessionEnd a() {
            return new SessionEnd();
        }
    }

    SessionEnd() {
    }

    public final JSONObject b() {
        JSONObject b;
        b = this.b == null ? super.b() : this.b.b();
        a("end", this.a);
        b.put("end", this.a);
        return b;
    }
}