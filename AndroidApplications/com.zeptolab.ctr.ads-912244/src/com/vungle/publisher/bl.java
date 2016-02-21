package com.vungle.publisher;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.TrackEventHttpRequest;
import com.vungle.publisher.protocol.TrackEventHttpTransactionFactory;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import javax.inject.Inject;

public class bl extends bm {
    @Inject
    public TrackEventHttpTransactionFactory a;

    protected final String a() {
        return VungleService.EXTERNAL_REQUEST_ACTION;
    }

    public final void a(Map map, String... strArr) {
        if (strArr != null) {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                if (str != null) {
                    String str2;
                    TrackEventHttpTransactionFactory trackEventHttpTransactionFactory = this.a;
                    if (map != null) {
                        StringBuilder stringBuilder = new StringBuilder(str);
                        Iterator it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            Entry entry = (Entry) it.next();
                            str = (String) entry.getKey();
                            int i2 = -1;
                            while (true) {
                                int indexOf = stringBuilder.indexOf(str, i2);
                                if (indexOf <= 0) {
                                    break;
                                }
                                stringBuilder.replace(indexOf, str.length() + indexOf, entry.getValue() == null ? AdTrackerConstants.BLANK : (String) entry.getValue());
                                i2 = indexOf;
                            }
                        }
                        str2 = stringBuilder.toString();
                    } else {
                        str2 = str;
                    }
                    TrackEventHttpRequest trackEventHttpRequest = (TrackEventHttpRequest) trackEventHttpTransactionFactory.a.c();
                    trackEventHttpRequest.b = str2;
                    a(new HttpTransaction(trackEventHttpRequest, trackEventHttpTransactionFactory.b));
                }
                i++;
            }
        }
    }
}