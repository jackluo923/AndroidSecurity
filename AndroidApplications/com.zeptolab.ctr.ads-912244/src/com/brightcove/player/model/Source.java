package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.plus.PlusShare;
import java.util.HashMap;
import java.util.Map;

public class Source extends SourceAwareMetadataObject {

    public static final class Fields {
        public static final String BIT_RATE = "bitRate";
        public static final String DURATION = "duration";
        public static final String HEADERS = "headers";
        public static final String URL = "url";
    }

    public Source(String str) {
        super(new HashMap());
        initializeUrl(str);
    }

    public Source(String str, DeliveryType deliveryType) {
        super(new HashMap());
        initializeUrl(str);
        initializeDeliveryType(deliveryType);
    }

    public Source(Map map) {
        super(map);
    }

    private void initializeUrl(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URL_REQUIRED));
        }
        this.properties.put(PlusShare.KEY_CALL_TO_ACTION_URL, str);
    }

    public Integer getBitRate() {
        Object obj = this.properties.get(Fields.BIT_RATE);
        return (obj == null || !(obj instanceof Integer)) ? Integer.valueOf(-1) : (Integer) obj;
    }

    public String getUrl() {
        return (String) this.properties.get(PlusShare.KEY_CALL_TO_ACTION_URL);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Source{");
        stringBuilder.append("deliveryType: ").append(getDeliveryType().toString());
        stringBuilder.append(", url: ").append(getUrl() == null ? "N/A" : getUrl());
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}