package com.brightcove.player.model;

import android.util.Log;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class Video extends MetadataObject {
    private List cuePoints;
    private Map sourceCollectionMap;

    public static class Fields {
        public static final String CUSTOM_FIELDS = "customFields";
        public static final String DURATION = "duration";
        public static final String HEADERS = "headers";
        public static final String ID = "id";
        public static final String NAME = "name";
        public static final String PUBLISHER_ID = "pubId";
        public static final String REFERENCE_ID = "referenceId";
        public static final String SHORT_DESCRIPTION = "shortDescription";
        public static final String STILL_IMAGE_URI = "stillImageUri";
        public static final String SUBTITLE_SOURCES = "subtitleSources";
    }

    public Video(Map map) {
        super(map);
    }

    public Video(Map map, Set set) {
        super(map);
        if (set == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.SOURCE_COLLECTIONS_REQUIRED));
        }
        Map hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            SourceCollection sourceCollection = (SourceCollection) it.next();
            if (hashMap.containsKey(sourceCollection.getDeliveryType())) {
                throw new IllegalStateException(ErrorUtil.getMessage(ErrorUtil.DUPLICATE_DELIVERY_TYPES));
            }
            hashMap.put(sourceCollection.getDeliveryType(), sourceCollection);
        }
        this.sourceCollectionMap = hashMap;
    }

    public Video(Map map, Set set, List list) {
        this(map, set);
        if (list == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.CUE_POINTS_REQUIRED));
        }
        this.cuePoints = list;
    }

    public static Video createVideo(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URI_REQUIRED));
        }
        DeliveryType deliveryType = DeliveryType.UNKNOWN;
        String toLowerCase = str.split("[?]")[0].toLowerCase(Locale.getDefault());
        if (toLowerCase.endsWith(".mp4")) {
            deliveryType = DeliveryType.MP4;
        } else if (toLowerCase.endsWith(".m3u") || toLowerCase.endsWith(".m3u8")) {
            deliveryType = DeliveryType.HLS;
        }
        return createVideo(str, deliveryType);
    }

    public static Video createVideo(String str, DeliveryType deliveryType) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URI_REQUIRED));
        }
        Set hashSet = new HashSet();
        hashSet.add(new SourceCollection(new Source(str, deliveryType), deliveryType));
        return new Video(new HashMap(), hashSet, new ArrayList());
    }

    public List getCuePoints() {
        return this.cuePoints;
    }

    public int getDuration() {
        if (!this.properties.containsKey(Fields.DURATION)) {
            return 0;
        }
        try {
            return Integer.parseInt(this.properties.get(Fields.DURATION).toString());
        } catch (NumberFormatException e) {
            Log.e(TAG, "Invalid number value seen for duration in Video: " + this.properties.get(Fields.DURATION));
            return 0;
        }
    }

    public String getId() {
        return this.properties.containsKey(AnalyticsEvent.EVENT_ID) ? this.properties.get(AnalyticsEvent.EVENT_ID).toString() : AdTrackerConstants.BLANK;
    }

    public Map getSourceCollections() {
        return this.sourceCollectionMap;
    }

    public String toString() {
        int i = 0;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Video{");
        if (this.properties.get(Fields.NAME) != null) {
            stringBuilder.append("name: \"");
            stringBuilder.append(this.properties.get(Fields.NAME));
            stringBuilder.append("\"");
        }
        if (this.properties.get(Fields.SHORT_DESCRIPTION) != null) {
            stringBuilder.append(", shortDescription: \"");
            stringBuilder.append(this.properties.get(Fields.SHORT_DESCRIPTION));
            stringBuilder.append("\"");
        }
        stringBuilder.append(", sourceCollections: ");
        stringBuilder.append(this.sourceCollectionMap != null ? this.sourceCollectionMap.size() : 0);
        stringBuilder.append(", cuePoints: ");
        if (this.cuePoints != null) {
            i = this.cuePoints.size();
        }
        stringBuilder.append(i);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}