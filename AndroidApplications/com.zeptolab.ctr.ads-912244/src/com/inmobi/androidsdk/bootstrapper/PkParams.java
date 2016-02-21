package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class PkParams {
    public static String SK_ALGORITHM;
    public static String SK_EXPONENT;
    public static String SK_MODULUS;
    public static String SK_VERSION;
    UID a;

    static {
        SK_ALGORITHM = AdTrackerConstants.BLANK;
        SK_MODULUS = AdTrackerConstants.BLANK;
        SK_EXPONENT = AdTrackerConstants.BLANK;
        SK_VERSION = AdTrackerConstants.BLANK;
    }

    public PkParams() {
        this.a = new UID();
    }

    public String getAlgorithm() {
        return SK_ALGORITHM;
    }

    public String getExponent() {
        return SK_EXPONENT;
    }

    public String getModulus() {
        return SK_MODULUS;
    }

    public UID getUID() {
        return this.a;
    }

    public String getVersion() {
        return SK_VERSION;
    }

    public void setFromMap(Map map) {
        Map map2 = (Map) map.get(PkInitilaizer.PRODUCT_PK);
        SK_VERSION = InternalSDKUtil.getStringFromMap(map2, "ver");
        if (SK_VERSION.equals(AdTrackerConstants.BLANK)) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Key ver has illegal value");
            throw new IllegalArgumentException();
        } else {
            SK_ALGORITHM = InternalSDKUtil.getStringFromMap(map2, "alg");
            if (SK_ALGORITHM.equals(AdTrackerConstants.BLANK)) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Key alg has illegal value");
                throw new IllegalArgumentException();
            } else if (SK_ALGORITHM.equalsIgnoreCase("rsa")) {
                map2 = (Map) map2.get("val");
                SK_EXPONENT = InternalSDKUtil.getStringFromMap(map2, "e");
                SK_MODULUS = InternalSDKUtil.getStringFromMap(map2, "m");
                if (SK_MODULUS.equals(AdTrackerConstants.BLANK)) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Key m has illegal value");
                    throw new IllegalArgumentException();
                } else if (SK_EXPONENT.equals(AdTrackerConstants.BLANK)) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Key e has illegal value");
                    throw new IllegalArgumentException();
                } else if (!InternalSDKUtil.isHexString(SK_EXPONENT)) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Key e has illegal value");
                    throw new IllegalArgumentException();
                } else if (!InternalSDKUtil.isHexString(SK_MODULUS)) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Key m has illegal value");
                    throw new IllegalArgumentException();
                }
            }
        }
    }
}