package com.google.android.gms.tagmanager;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class ch extends aj {
    private static final String ID;
    private static final String Wc;
    private static final String Wd;
    private static final String We;
    private static final String Wf;

    static {
        ID = a.ap.toString();
        Wc = b.bt.toString();
        Wd = b.bu.toString();
        We = b.cQ.toString();
        Wf = b.cK.toString();
    }

    public ch() {
        super(ID, new String[]{Wc, Wd});
    }

    public boolean iy() {
        return true;
    }

    public d.a u(Map map) {
        d.a aVar = (d.a) map.get(Wc);
        d.a aVar2 = (d.a) map.get(Wd);
        if (aVar == null || aVar == di.ku() || aVar2 == null || aVar2 == di.ku()) {
            return di.ku();
        }
        int intValue;
        int i = AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS;
        if (di.n((d.a) map.get(We)).booleanValue()) {
            i = 66;
        }
        d.a aVar3 = (d.a) map.get(Wf);
        if (aVar3 != null) {
            Long l = di.l(aVar3);
            if (l == di.kp()) {
                return di.ku();
            }
            intValue = l.intValue();
            if (intValue < 0) {
                return di.ku();
            }
        } else {
            intValue = 1;
        }
        try {
            CharSequence j = di.j(aVar);
            Object obj = null;
            Matcher matcher = Pattern.compile(di.j(aVar2), i).matcher(j);
            if (matcher.find() && matcher.groupCount() >= intValue) {
                obj = matcher.group(intValue);
            }
            return obj == null ? di.ku() : di.r(obj);
        } catch (PatternSyntaxException e) {
            return di.ku();
        }
    }
}