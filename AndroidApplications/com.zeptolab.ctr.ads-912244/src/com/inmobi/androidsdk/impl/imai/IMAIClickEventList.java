package com.inmobi.androidsdk.impl.imai;

import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.androidsdk.impl.imai.db.ClickDatabaseManager;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class IMAIClickEventList extends ArrayList {
    private static final long serialVersionUID = -211778664111073467L;

    public static synchronized IMAIClickEventList getLoggedClickEvents() {
        IMAIClickEventList iMAIClickEventList;
        synchronized (IMAIClickEventList.class) {
            boolean z = 0;
            if (ClickDatabaseManager.getInstance().getNoOfEvents() != 0) {
                int i = Initializer.getConfigParams().getImai().getmDefaultEventsBatch();
                ClickDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getImai().getmMaxDb());
                IMAIClickEventList clickEvents = ClickDatabaseManager.getInstance().getClickEvents(i);
                ArrayList arrayList = new ArrayList();
                Iterator it = clickEvents.iterator();
                while (it.hasNext()) {
                    arrayList.add(Long.valueOf(((ClickData) it.next()).getClickId()));
                }
                ClickDatabaseManager.getInstance().deleteClickEvents(arrayList);
                iMAIClickEventList = clickEvents;
            }
            if (iMAIClickEventList == null) {
                iMAIClickEventList = new IMAIClickEventList();
            }
        }
        return iMAIClickEventList;
    }

    public ClickData getClickEvent(long j) {
        ClickData clickData = null;
        try {
            Iterator it = iterator();
            while (it.hasNext()) {
                ClickData clickData2 = (ClickData) it.next();
                if (clickData2.getClickId() == j) {
                    return clickData2;
                }
            }
            return clickData;
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Cant get click event", e);
            return clickData;
        }
    }

    public synchronized void reduceRetryCount(int i) {
        try {
            RequestResponseManager.isSynced.set(false);
            ClickData clickEvent = getClickEvent((long) i);
            int retryCount = clickEvent.getRetryCount();
            removeClickEvent((long) i);
            if (retryCount > 1) {
                clickEvent.setRetryCount(clickEvent.getRetryCount() - 1);
                add(clickEvent);
            }
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Cant reduce retry count", e);
        }
    }

    public synchronized boolean removeClickEvent(long j) {
        boolean z = false;
        synchronized (this) {
            try {
                RequestResponseManager.isSynced.set(false);
                remove(getClickEvent(j));
                z = true;
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Cant remove click event", e);
            }
        }
        return z;
    }

    public void saveClickEvents() {
        Log.internal(ConfigConstants.LOGGING_TAG, "Save ping events");
        if (RequestResponseManager.mDBWriterQueue != null && !RequestResponseManager.mDBWriterQueue.isEmpty()) {
            Iterator it = RequestResponseManager.mDBWriterQueue.iterator();
            while (it.hasNext()) {
                ClickDatabaseManager.getInstance().insertClick((ClickData) it.next());
            }
        }
    }
}