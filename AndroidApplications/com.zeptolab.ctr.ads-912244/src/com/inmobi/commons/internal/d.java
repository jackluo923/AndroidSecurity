package com.inmobi.commons.internal;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class d implements Validator {
    d() {
    }

    public boolean validate(Map map) {
        return InternalSDKUtil.a(map);
    }
}