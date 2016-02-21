package com.inmobi.re.configs;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class a implements Validator {
    a() {
    }

    public boolean validate(Map map) {
        return Initializer.a(map);
    }
}