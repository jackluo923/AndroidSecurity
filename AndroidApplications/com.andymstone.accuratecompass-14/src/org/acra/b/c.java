package org.acra.b;

import java.util.EnumMap;
import org.acra.ReportField;
import org.acra.e.f;
import org.json.JSONObject;

public final class c extends EnumMap {
    public c() {
        super(ReportField.class);
    }

    public String a(ReportField reportField) {
        return (String) super.get(reportField);
    }

    public JSONObject a() {
        return f.a(this);
    }
}