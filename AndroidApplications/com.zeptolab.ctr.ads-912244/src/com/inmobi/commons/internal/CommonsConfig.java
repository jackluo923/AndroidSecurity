package com.inmobi.commons.internal;

import com.google.android.gms.cast.MediaStatus;
import com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class CommonsConfig {
    private static INTERNAL_LOG_LEVEL a;
    private static INTERNAL_LOG_LEVEL b;
    private MetricConfigParams c;

    static {
        a = INTERNAL_LOG_LEVEL.NONE;
        b = a;
    }

    public CommonsConfig() {
        this.c = new MetricConfigParams();
    }

    protected static int getLogLevelConfig() {
        return b.getValue();
    }

    public MetricConfigParams getApiStatsConfig() {
        return this.c;
    }

    public final void setFromMap(Map map) {
        Map populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
        new UID().setFromMap((Map) populateToNewMap.get("ids"));
        UID.getCommonsUid().setFromMap((Map) populateToNewMap.get("ids"));
        b = Log.getLogLevelValue((long) InternalSDKUtil.getIntFromMap(populateToNewMap, "ll", 0, MediaStatus.COMMAND_SEEK));
        this.c.setFromMap((Map) populateToNewMap.get("api"));
    }
}