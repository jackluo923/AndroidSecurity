package com.facebook.ads.internal;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public class AdClientEventManager {
    private static List clientEvents;

    static {
        clientEvents = new ArrayList();
    }

    public static void addClientEvent(AdClientEvent adClientEvent) {
        synchronized (clientEvents) {
            clientEvents.add(adClientEvent);
        }
    }

    public static String dumpClientEventToJson() {
        synchronized (clientEvents) {
            if (clientEvents.isEmpty()) {
                String str = AdTrackerConstants.BLANK;
                return str;
            } else {
                List arrayList = new ArrayList(clientEvents);
                clientEvents.clear();
                JSONArray jSONArray = new JSONArray();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((AdClientEvent) it.next()).getClientEventJson());
                }
                return jSONArray.toString();
            }
        }
    }
}