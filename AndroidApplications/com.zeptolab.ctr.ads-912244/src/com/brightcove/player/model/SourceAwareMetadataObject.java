package com.brightcove.player.model;

import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.util.ErrorUtil;
import java.util.Map;

public abstract class SourceAwareMetadataObject extends MetadataObject {

    public static final class Fields {
        public static final String DELIVERY_TYPE = "deliveryType";
    }

    public SourceAwareMetadataObject(Map map) {
        super(map);
    }

    public DeliveryType getDeliveryType() {
        Object obj = this.properties.get(Fields.DELIVERY_TYPE);
        return (obj == null || !(obj instanceof DeliveryType)) ? DeliveryType.UNKNOWN : (DeliveryType) obj;
    }

    protected void initializeDeliveryType(DeliveryType deliveryType) {
        if (deliveryType == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.DELIVERY_TYPE_REQUIRED));
        }
        this.properties.put(Fields.DELIVERY_TYPE, deliveryType);
    }
}