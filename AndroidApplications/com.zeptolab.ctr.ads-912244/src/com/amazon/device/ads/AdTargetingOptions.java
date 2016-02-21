package com.amazon.device.ads;

import com.millennialmedia.android.MMRequest;
import java.util.HashMap;
import java.util.Map;

public class AdTargetingOptions {
    private static final String a;
    private long b;
    private Map c;
    private boolean d;
    private int e;

    public enum Gender {
        UNKNOWN(DeviceInfo.ORIENTATION_UNKNOWN),
        MALE(MMRequest.GENDER_MALE),
        FEMALE(MMRequest.GENDER_FEMALE);
        final String a;

        static {
            String str = "UNKNOWN";
            String str2 = DeviceInfo.ORIENTATION_UNKNOWN;
            UNKNOWN = new com.amazon.device.ads.AdTargetingOptions.Gender(str, 0, DeviceInfo.ORIENTATION_UNKNOWN);
            str = "MALE";
            str2 = MMRequest.GENDER_MALE;
            MALE = new com.amazon.device.ads.AdTargetingOptions.Gender(str, 1, MMRequest.GENDER_MALE);
            str = "FEMALE";
            str2 = MMRequest.GENDER_FEMALE;
            FEMALE = new com.amazon.device.ads.AdTargetingOptions.Gender(str, 2, MMRequest.GENDER_FEMALE);
            b = new com.amazon.device.ads.AdTargetingOptions.Gender[]{UNKNOWN, MALE, FEMALE};
        }

        private Gender(String str) {
            this.a = str;
        }
    }

    static {
        a = AdTargetingOptions.class.getSimpleName();
    }

    public AdTargetingOptions() {
        this.e = Integer.MIN_VALUE;
        this.b = Long.MIN_VALUE;
        this.d = false;
        this.c = new HashMap();
    }

    boolean a() {
        return this.b > -1;
    }

    HashMap b() {
        return new HashMap(this.c);
    }

    boolean c() {
        return this.e > -1;
    }

    public boolean containsAdvancedOption(String str) {
        return this.c.containsKey(str);
    }

    public AdTargetingOptions enableGeoLocation(boolean z) {
        this.d = z;
        return this;
    }

    public String getAdvancedOption(String str) {
        return (String) this.c.get(str);
    }

    public int getAge() {
        return this.e;
    }

    public long getFloorPrice() {
        return this.b;
    }

    public Gender getGender() {
        return Gender.UNKNOWN;
    }

    public boolean isGeoLocationEnabled() {
        return this.d;
    }

    public AdTargetingOptions setAdvancedOption(String str, String str2) {
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("Option Key must not be null or empty string");
        }
        if (str2 != null) {
            this.c.put(str, str2);
        } else {
            this.c.remove(str);
        }
        return this;
    }

    public AdTargetingOptions setAge(int i) {
        this.e = i;
        return this;
    }

    public AdTargetingOptions setFloorPrice(long j) {
        this.b = j;
        return this;
    }

    public AdTargetingOptions setGender(Gender gender) {
        Log.d(a, "Gender information has been deprecated and is no longer used for targeting.");
        return this;
    }
}