package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class b implements Validator {
    b() {
    }

    public boolean validate(Map map) {
        return PkInitilaizer.a(map);
    }
}