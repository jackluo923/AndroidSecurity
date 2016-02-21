package com.IQzone.postitial.obfuscated;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

class ks {
    private Document a;

    static {
    }

    ks() {
    }

    private List a(ku kuVar) {
        return a(kv.b, kt.a, kuVar);
    }

    private List a(kv kvVar, kt ktVar, ku kuVar) {
        ArrayList arrayList = new ArrayList();
        if (this.a == null) {
            return arrayList;
        }
        NodeList elementsByTagName = this.a.getElementsByTagName(kvVar.a());
        if (elementsByTagName == null) {
            return arrayList;
        }
        int i = 0;
        while (i < elementsByTagName.getLength()) {
            Node item = elementsByTagName.item(i);
            if (item != null) {
                Node namedItem;
                boolean z;
                if (ktVar == null || kuVar == null) {
                    z = true;
                } else {
                    NamedNodeMap attributes = item.getAttributes();
                    if (attributes != null) {
                        namedItem = attributes.getNamedItem(ktVar.a());
                        if (namedItem != null && kuVar.a().equals(namedItem.getNodeValue())) {
                            z = true;
                        }
                    }
                    z = false;
                }
                if (i != 0) {
                    namedItem = item.getFirstChild();
                    if (namedItem != null) {
                        String nodeValue = namedItem.getNodeValue();
                        if (nodeValue != null) {
                            arrayList.add(nodeValue.trim());
                        }
                    }
                }
            }
            i++;
        }
        return arrayList;
    }

    final List a() {
        List a = a(kv.a, null, null);
        a.addAll(a(kv.f, null, null));
        return a;
    }

    final void a(String str) {
        String toString = new StringBuilder("<MPMoVideoXMLDocRoot>").append(str.replaceFirst("<\\?.*\\?>", AdTrackerConstants.BLANK)).append("</MPMoVideoXMLDocRoot>").toString();
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setCoalescing(true);
        this.a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(toString)));
    }

    final List b() {
        return a(ku.a);
    }

    final List c() {
        return a(ku.b);
    }

    final List d() {
        return a(ku.c);
    }

    final List e() {
        return a(ku.d);
    }

    final String f() {
        List a = a(kv.c, null, null);
        return a.size() > 0 ? (String) a.get(0) : null;
    }

    final List g() {
        return a(kv.d, null, null);
    }

    final String h() {
        List a = a(kv.e, null, null);
        return a.size() > 0 ? (String) a.get(0) : null;
    }
}