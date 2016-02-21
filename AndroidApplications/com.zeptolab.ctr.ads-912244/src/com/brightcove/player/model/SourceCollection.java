package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class SourceCollection extends SourceAwareMetadataObject {
    private Set sources;

    public SourceCollection(Source source, DeliveryType deliveryType) {
        super(new HashMap());
        if (source == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.SOURCE_REQUIRED));
        }
        this.sources = new HashSet();
        this.sources.add(source);
        initializeDeliveryType(deliveryType);
    }

    public SourceCollection(Map map) {
        super(map);
    }

    public SourceCollection(Map map, Set set) {
        super(map);
        if (set == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.SOURCES_REQUIRED));
        }
        this.sources = set;
    }

    public SourceCollection(Set set, DeliveryType deliveryType) {
        super(new HashMap());
        if (set == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.SOURCES_REQUIRED));
        }
        this.sources = set;
        initializeDeliveryType(deliveryType);
    }

    public Set getSources() {
        return this.sources;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("SourceCollection{");
        stringBuilder.append(" deliveryType:").append(getDeliveryType().toString());
        stringBuilder.append(" sources:").append(this.sources == null ? 0 : this.sources.size());
        stringBuilder.append("} ");
        return stringBuilder.toString();
    }
}