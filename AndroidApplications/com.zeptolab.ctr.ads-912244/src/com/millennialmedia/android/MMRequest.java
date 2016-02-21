package com.millennialmedia.android;

import android.location.Location;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class MMRequest {
    public static final String EDUCATION_ASSOCIATES = "associates";
    public static final String EDUCATION_BACHELORS = "bachelors";
    public static final String EDUCATION_DOCTORATE = "doctorate";
    public static final String EDUCATION_HIGH_SCHOOL = "highschool";
    public static final String EDUCATION_IN_COLLEGE = "incollege";
    public static final String EDUCATION_MASTERS = "masters";
    public static final String EDUCATION_OTHER = "other";
    public static final String EDUCATION_SOME_COLLEGE = "somecollege";
    public static final String ETHNICITY_ASIAN = "asian";
    public static final String ETHNICITY_BLACK = "black";
    public static final String ETHNICITY_HISPANIC = "hispanic";
    public static final String ETHNICITY_INDIAN = "indian";
    public static final String ETHNICITY_MIDDLE_EASTERN = "middleeastern";
    public static final String ETHNICITY_NATIVE_AMERICAN = "nativeamerican";
    public static final String ETHNICITY_OTHER = "other";
    public static final String ETHNICITY_PACIFIC_ISLANDER = "pacificislander";
    public static final String ETHNICITY_WHITE = "white";
    public static final String GENDER_FEMALE = "female";
    public static final String GENDER_MALE = "male";
    public static final String GENDER_OTHER = "other";
    public static final String KEY_AGE = "age";
    public static final String KEY_CHILDREN = "children";
    public static final String KEY_EDUCATION = "education";
    public static final String KEY_ETHNICITY = "ethnicity";
    public static final String KEY_GENDER = "gender";
    public static final String KEY_HEIGHT = "hsht";
    public static final String KEY_INCOME = "income";
    public static final String KEY_KEYWORDS = "keywords";
    public static final String KEY_MARITAL_STATUS = "marital";
    public static final String KEY_POLITICS = "politics";
    public static final String KEY_VENDOR = "vendor";
    public static final String KEY_WIDTH = "hswd";
    public static final String KEY_ZIP_CODE = "zip";
    public static final String MARITAL_DIVORCED = "divorced";
    public static final String MARITAL_ENGAGED = "engaged";
    public static final String MARITAL_MARRIED = "married";
    public static final String MARITAL_OTHER = "other";
    public static final String MARITAL_RELATIONSHIP = "relationship";
    public static final String MARITAL_SINGLE = "single";
    static Location l;
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    String k;
    private Map m;

    public MMRequest() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.m = new HashMap();
    }

    static void b(Map map) {
        if (l != null) {
            map.put("lat", Double.toString(l.getLatitude()));
            map.put("long", Double.toString(l.getLongitude()));
            if (l.hasAccuracy()) {
                map.put("ha", Float.toString(l.getAccuracy()));
                map.put("va", Float.toString(l.getAccuracy()));
            }
            if (l.hasSpeed()) {
                map.put("spd", Float.toString(l.getSpeed()));
            }
            if (l.hasBearing()) {
                map.put("brg", Float.toString(l.getBearing()));
            }
            if (l.hasAltitude()) {
                map.put("alt", Double.toString(l.getAltitude()));
            }
            map.put("tslr", Long.toString(l.getTime()));
            map.put("loc", "true");
            map.put("lsrc", l.getProvider());
        } else {
            map.put("loc", "false");
        }
    }

    public static Location getUserLocation() {
        return l;
    }

    public static void setUserLocation(Location location) {
        if (location != null) {
            l = location;
        }
    }

    void a(Map map) {
        Iterator it = this.m.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            map.put(entry.getKey(), entry.getValue());
        }
        if (this.a != null) {
            map.put(KEY_AGE, this.a);
        }
        if (this.b != null) {
            map.put(KEY_CHILDREN, this.b);
        }
        if (this.c != null) {
            map.put(KEY_EDUCATION, this.c);
        }
        if (this.d != null) {
            map.put(KEY_ETHNICITY, this.d);
        }
        if (this.e != null) {
            map.put(KEY_GENDER, this.e);
        }
        if (this.f != null) {
            map.put(KEY_INCOME, this.f);
        }
        if (this.g != null) {
            map.put(KEY_KEYWORDS, this.g);
        }
        if (this.h != null) {
            map.put(KEY_MARITAL_STATUS, this.h);
        }
        if (this.i != null) {
            map.put(KEY_POLITICS, this.i);
        }
        if (this.j != null) {
            map.put(KEY_VENDOR, this.j);
        }
        if (this.k != null) {
            map.put(KEY_ZIP_CODE, this.k);
        }
    }

    public MMRequest put(String str, String str2) {
        if (str.equals(KEY_AGE)) {
            this.a = str2;
        } else if (str.equals(KEY_CHILDREN)) {
            this.b = str2;
        } else if (str.equals(KEY_EDUCATION)) {
            this.c = str2;
        } else if (str.equals(KEY_ETHNICITY)) {
            this.d = str2;
        } else if (str.equals(KEY_GENDER)) {
            this.e = str2;
        } else if (str.equals(KEY_INCOME)) {
            this.f = str2;
        } else if (str.equals(KEY_KEYWORDS)) {
            this.g = str2;
        } else if (str.equals(KEY_MARITAL_STATUS)) {
            this.h = str2;
        } else if (str.equals(KEY_POLITICS)) {
            this.i = str2;
        } else if (str.equals(KEY_VENDOR)) {
            this.j = str2;
        } else if (str.equals(KEY_ZIP_CODE)) {
            this.k = str2;
        } else if (str2 != null) {
            this.m.put(str, str2);
        } else {
            this.m.remove(str);
        }
        return this;
    }

    public void setAge(String str) {
        this.a = str;
    }

    public void setChildren(String str) {
        this.b = str;
    }

    public void setEducation(String str) {
        this.c = str;
    }

    public void setEthnicity(String str) {
        this.d = str;
    }

    public void setGender(String str) {
        this.e = str;
    }

    public void setIncome(String str) {
        this.f = str;
    }

    public void setKeywords(String str) {
        this.g = str;
    }

    public void setMarital(String str) {
        this.h = str;
    }

    public void setMetaValues(Map map) {
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                put((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public void setPolitics(String str) {
        this.i = str;
    }

    public void setVendor(String str) {
        this.j = str;
    }

    public void setZip(String str) {
        this.k = str;
    }
}