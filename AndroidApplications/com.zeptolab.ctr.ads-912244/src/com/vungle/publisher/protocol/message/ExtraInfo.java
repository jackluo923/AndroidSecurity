package com.vungle.publisher.protocol.message;

import com.vungle.publisher.db.model.AdReportExtra;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

final class ExtraInfo extends BaseJsonSerializable {
    protected Map a;

    @Singleton
    static class Factory extends MessageFactory {
        @Inject
        Factory() {
        }

        protected static ExtraInfo a(Map map) {
            if (map == null) {
                return null;
            }
            ExtraInfo extraInfo = new ExtraInfo();
            extraInfo.a = new HashMap(map);
            return extraInfo;
        }

        protected static ExtraInfo b(Map map) {
            if (map == null) {
                return null;
            }
            ExtraInfo extraInfo = new ExtraInfo();
            Map hashMap = new HashMap();
            extraInfo.a = hashMap;
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                AdReportExtra adReportExtra = (AdReportExtra) it.next();
                hashMap.put(adReportExtra.b, adReportExtra.c);
            }
            return extraInfo;
        }

        protected final /* synthetic */ Object a() {
            return new ExtraInfo();
        }
    }

    ExtraInfo() {
    }

    public final JSONObject b() {
        return (this.a == null || this.a.isEmpty()) ? null : new JSONObject(this.a);
    }
}