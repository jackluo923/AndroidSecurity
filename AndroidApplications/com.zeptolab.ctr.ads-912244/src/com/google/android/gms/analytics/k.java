package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.brightcove.player.model.Video.Fields;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

abstract class k {
    Context mContext;
    a rb;

    public static interface a {
        void a_(String str, int i);

        void a_(String str, String str2);

        void b(String str, String str2);

        j bz();

        void c(String str, boolean z);
    }

    public k(Context context, a aVar) {
        this.mContext = context;
        this.rb = aVar;
    }

    private j a(XmlResourceParser xmlResourceParser) {
        String trim;
        try {
            xmlResourceParser.next();
            int eventType = xmlResourceParser.getEventType();
            while (eventType != 1) {
                if (xmlResourceParser.getEventType() == 2) {
                    String toLowerCase = xmlResourceParser.getName().toLowerCase();
                    if (toLowerCase.equals("screenname")) {
                        toLowerCase = xmlResourceParser.getAttributeValue(null, Fields.NAME);
                        trim = xmlResourceParser.nextText().trim();
                        if (!(TextUtils.isEmpty(toLowerCase) || TextUtils.isEmpty(trim))) {
                            this.rb.a(toLowerCase, trim);
                        }
                    } else if (toLowerCase.equals("string")) {
                        attributeValue = xmlResourceParser.getAttributeValue(null, Fields.NAME);
                        trim = xmlResourceParser.nextText().trim();
                        if (!(TextUtils.isEmpty(attributeValue) || trim == null)) {
                            this.rb.b(attributeValue, trim);
                        }
                    } else if (toLowerCase.equals("bool")) {
                        attributeValue = xmlResourceParser.getAttributeValue(null, Fields.NAME);
                        trim = xmlResourceParser.nextText().trim();
                        if (!(TextUtils.isEmpty(attributeValue) || TextUtils.isEmpty(trim))) {
                            try {
                                this.rb.c(attributeValue, Boolean.parseBoolean(trim));
                            } catch (NumberFormatException e) {
                                aa.t("Error parsing bool configuration value: " + trim);
                            }
                        }
                    } else if (toLowerCase.equals("integer")) {
                        toLowerCase = xmlResourceParser.getAttributeValue(null, Fields.NAME);
                        trim = xmlResourceParser.nextText().trim();
                        if (!(TextUtils.isEmpty(toLowerCase) || TextUtils.isEmpty(trim))) {
                            try {
                                this.rb.a(toLowerCase, Integer.parseInt(trim));
                            } catch (NumberFormatException e2) {
                                aa.t("Error parsing int configuration value: " + trim);
                            }
                        }
                    }
                }
                eventType = xmlResourceParser.next();
            }
        } catch (XmlPullParserException e3) {
            aa.t("Error parsing tracker configuration file: " + e3);
        } catch (IOException e4) {
            aa.t("Error parsing tracker configuration file: " + e4);
        }
        return this.rb.bz();
    }

    public j p(int i) {
        try {
            return a(this.mContext.getResources().getXml(i));
        } catch (NotFoundException e) {
            aa.w("inflate() called with unknown resourceId: " + e);
            return null;
        }
    }
}