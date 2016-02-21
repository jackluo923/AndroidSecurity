package com.admarvel.android.ads;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Stack;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class AdMarvelXMLReader extends DefaultHandler {
    private AdMarvelXMLElement a;
    private Stack b;

    public AdMarvelXMLReader() {
        this.a = null;
        this.b = null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String chkAndReplace(java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelXMLReader.chkAndReplace(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
        /*
        r1 = 0;
        if (r5 == 0) goto L_0x001f;
    L_0x0003:
        r0 = new java.lang.StringBuffer;	 Catch:{ Exception -> 0x0027 }
        r0.<init>(r5);	 Catch:{ Exception -> 0x0027 }
    L_0x0008:
        r2 = 0;
    L_0x0009:
        r3 = r0.toString();	 Catch:{ Exception -> 0x0036 }
        r2 = r3.indexOf(r6, r2);	 Catch:{ Exception -> 0x0036 }
        r3 = -1;
        if (r2 == r3) goto L_0x002d;
    L_0x0014:
        r3 = r6.length();	 Catch:{ Exception -> 0x0036 }
        r3 = r3 + r2;
        r0.replace(r2, r3, r7);	 Catch:{ Exception -> 0x0036 }
        r2 = r2 + 1;
        goto L_0x0009;
    L_0x001f:
        r0 = new java.lang.StringBuffer;	 Catch:{ Exception -> 0x0027 }
        r2 = "";
        r0.<init>(r2);	 Catch:{ Exception -> 0x0027 }
        goto L_0x0008;
    L_0x0027:
        r0 = move-exception;
        r2 = r1;
    L_0x0029:
        r0.printStackTrace();
        r0 = r2;
    L_0x002d:
        if (r0 != 0) goto L_0x0031;
    L_0x002f:
        r0 = r1;
    L_0x0030:
        return r0;
    L_0x0031:
        r0 = r0.toString();
        goto L_0x0030;
    L_0x0036:
        r2 = move-exception;
        r4 = r2;
        r2 = r0;
        r0 = r4;
        goto L_0x0029;
        */
    }

    static String xmlDecode(String str) {
        return str != null ? chkAndReplace(chkAndReplace(chkAndReplace(chkAndReplace(str, "&amp;", "&"), "&quot;", "\""), "&gt;", ">"), "&lt;", "<") : null;
    }

    static String xmlEncode(String str) {
        return str != null ? chkAndReplace(chkAndReplace(chkAndReplace(chkAndReplace(str, "&", "&amp;"), "\"", "&quot;"), "<", "&lt;"), ">", "&gt;") : null;
    }

    public void characters(char[] cArr, int i, int i2) {
        ((AdMarvelXMLElement) this.b.peek()).appendData(new String(cArr).substring(i, i + i2));
    }

    public void endElement(String str, String str2, String str3) {
        this.b.pop();
    }

    public AdMarvelXMLElement getParsedXMLData() {
        return this.a;
    }

    public void parseXMLString(String str) {
        this.b = new Stack();
        XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        xMLReader.setContentHandler(this);
        xMLReader.parse(new InputSource(new StringReader(str)));
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (attributes != null) {
            int length = attributes.getLength();
            int i = 0;
            while (i < length) {
                linkedHashMap.put(attributes.getLocalName(i), attributes.getValue(i));
                i++;
            }
        }
        AdMarvelXMLElement adMarvelXMLElement = new AdMarvelXMLElement(str2, linkedHashMap);
        if (this.b.empty()) {
            this.a = adMarvelXMLElement;
        } else {
            AdMarvelXMLElement adMarvelXMLElement2 = (AdMarvelXMLElement) this.b.peek();
            ArrayList arrayList = (ArrayList) adMarvelXMLElement2.getChildren().get(str2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                adMarvelXMLElement2.getChildren().put(str2, arrayList);
            }
            arrayList.add(adMarvelXMLElement);
        }
        this.b.push(adMarvelXMLElement);
    }
}