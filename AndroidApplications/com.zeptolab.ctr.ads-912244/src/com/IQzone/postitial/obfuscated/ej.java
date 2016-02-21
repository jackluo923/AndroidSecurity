package com.IQzone.postitial.obfuscated;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ej extends DefaultHandler {
    private static final ql a;
    private String b;
    private String c;
    private boolean d;

    static {
        a = new ql();
    }

    public final hj a() {
        ql qlVar = a;
        new StringBuilder("i: ").append(this.c).toString();
        qlVar = a;
        new StringBuilder("s: ").append(this.b).toString();
        return new hj(this.b, this.c);
    }

    public final boolean b() {
        return this.d;
    }

    public void endElement(String str, String str2, String str3) {
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        String trim = str3 != null ? str3.trim() : AdTrackerConstants.BLANK;
        String trim2 = str2 != null ? str2.trim() : AdTrackerConstants.BLANK;
        if (trim2.length() <= 0) {
            trim2 = trim;
        }
        if (trim2.equals("r")) {
            this.b = attributes.getValue("s");
            this.c = attributes.getValue("i");
            if (this.b == null || this.c == null) {
                throw new SAXException("<LogErrorParser><1>, Invalid Response");
            }
        } else if (trim2.equals("pc")) {
            this.d = true;
        }
    }
}