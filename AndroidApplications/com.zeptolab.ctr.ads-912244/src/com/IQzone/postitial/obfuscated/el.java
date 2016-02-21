package com.IQzone.postitial.obfuscated;

import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class el extends DefaultHandler {
    private static final ql a;
    private String b;
    private String c;
    private String d;
    private boolean e;
    private final Set f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private String l;
    private String m;
    private boolean n;

    static {
        a = new ql();
    }

    public el() {
        this.f = new HashSet();
        this.g = -1;
    }

    private static String a(String str, String str2) {
        String trim = str2 != null ? str2.trim() : AdTrackerConstants.BLANK;
        String trim2 = str != null ? str.trim() : AdTrackerConstants.BLANK;
        return trim2.length() > 0 ? trim2 : trim;
    }

    public final ik a() {
        ql qlVar = a;
        qlVar = a;
        new StringBuilder("i:").append(this.d).toString();
        qlVar = a;
        new StringBuilder("version: ").append(this.b).toString();
        qlVar = a;
        new StringBuilder("s: ").append(this.c).toString();
        return new ik(this.b, this.h, this.i, this.e, this.c, AdTrackerConstants.BLANK, this.d, this.f, this.k, this.l, this.m, this.n);
    }

    public final boolean b() {
        return this.j;
    }

    public void characters(char[] cArr, int i, int i2) {
    }

    public void endElement(String str, String str2, String str3) {
        if (a(str2, str3).equals("cv")) {
            this.g = -1;
        }
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        String a = a(str2, str3);
        if (a.equals("r")) {
            this.c = attributes.getValue("s");
            this.d = attributes.getValue("i");
            this.m = attributes.getValue("hs");
            this.b = attributes.getValue("pcfv");
            if (this.c == null || this.d == null || this.b == null) {
                throw new SAXException(new StringBuilder("<PostitialConfigurationParser><1>, Invalid Response ").append(this.d).append(" ").append(this.c).append(" ").append(this.m).append(" ").append(this.b).toString());
            }
        } else if (a.equals("cv")) {
            a = attributes.getValue("n");
            if (a.equalsIgnoreCase("AppTermination")) {
                this.g = Integer.parseInt(attributes.getValue(AnalyticsEvent.EVENT_ID));
            } else if (a.equalsIgnoreCase("BackButton")) {
                this.g = Integer.parseInt(attributes.getValue(AnalyticsEvent.EVENT_ID));
            } else if (a.equalsIgnoreCase("PostitialApp")) {
                Attributes attributes2 = attributes;
                this.e = Integer.parseInt(attributes2.getValue("a")) == 1;
                this.h = Integer.parseInt(attributes.getValue("m"));
                this.i = Integer.parseInt(attributes.getValue("v"));
                this.l = attributes.getValue("pa");
                this.n = Integer.parseInt(attributes.getValue("rme")) == 1;
                a = attributes.getValue(AnalyticsEvent.TYPE_LEVEL_END);
                if (a == null) {
                    return;
                }
                if (a.equals("1")) {
                    this.k = false;
                } else {
                    this.k = true;
                }
            }
        } else if (a.equals("p") && this.g >= 0) {
            int parseInt;
            int parseInt2 = Integer.parseInt(attributes.getValue("ris"));
            int parseInt3 = Integer.parseInt(attributes.getValue(AnalyticsSQLiteHelper.EVENT_LIST_SID));
            int parseInt4 = Integer.parseInt(attributes.getValue(AnalyticsEvent.EVENT_ID));
            int parseInt5 = Integer.parseInt(attributes.getValue("fop"));
            int parseInt6 = Integer.parseInt(attributes.getValue("sop"));
            String value = attributes.getValue("c");
            a = attributes.getValue("at");
            String value2 = attributes.getValue("p");
            ql qlVar = a;
            new StringBuilder("priority pAttrib = ").append(value2).toString();
            parseInt = (value2 == null || value2 == AdTrackerConstants.BLANK) ? 1 : Integer.parseInt(value2);
            List arrayList = new ArrayList();
            if (!(a == null || a.trim().equals(AdTrackerConstants.BLANK))) {
                String[] split = a.split(",");
                int length = split.length;
                int i = 0;
                while (i < length) {
                    String str4 = split[i];
                    arrayList.add(Integer.valueOf(Integer.parseInt(str4)));
                    ql qlVar2 = a;
                    new StringBuilder("priority integer.parseint = ").append(Integer.parseInt(str4)).toString();
                    i++;
                }
            }
            this.f.add(new jl(parseInt3, parseInt4, value, parseInt, parseInt2, arrayList, this.g, parseInt5, parseInt6, this.n));
        } else if (a.equals("pc")) {
            this.j = true;
        }
    }
}