package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class a implements Validator {
    a() {
    }

    public boolean validate(Map map) {
        return AdTrackerInitializer.a(map);
    }
}