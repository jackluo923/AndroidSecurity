package com.admarvel.android.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class AdMarvelXMLElement {
    private LinkedHashMap attributes;
    private LinkedHashMap children;
    private StringBuilder data;
    private String name;

    AdMarvelXMLElement(String str) {
        this.name = null;
        this.attributes = null;
        this.data = new StringBuilder();
        this.children = new LinkedHashMap();
        this.name = str;
    }

    AdMarvelXMLElement(String str, LinkedHashMap linkedHashMap) {
        this.name = null;
        this.attributes = null;
        this.data = new StringBuilder();
        this.children = new LinkedHashMap();
        this.name = str;
        this.attributes = linkedHashMap;
    }

    public void appendData(String str) {
        this.data.append(str);
    }

    public LinkedHashMap getAttributes() {
        return this.attributes;
    }

    public LinkedHashMap getChildren() {
        return this.children;
    }

    public String getData() {
        return this.data == null ? null : this.data.toString();
    }

    public String getName() {
        return this.name;
    }

    public void setChildren(LinkedHashMap linkedHashMap) {
        this.children = linkedHashMap;
    }

    public String toString() {
        Iterator it;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<");
        stringBuilder.append(this.name);
        if (this.attributes != null) {
            it = this.attributes.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                stringBuilder.append(" ");
                stringBuilder.append(str);
                stringBuilder.append("=");
                stringBuilder.append("\"");
                stringBuilder.append(AdMarvelXMLReader.xmlEncode((String) this.attributes.get(str)));
                stringBuilder.append("\"");
            }
        }
        stringBuilder.append(">");
        it = this.children.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) it.next()).iterator();
            while (it2.hasNext()) {
                stringBuilder.append(((AdMarvelXMLElement) it2.next()).toString());
            }
        }
        stringBuilder.append(AdMarvelXMLReader.xmlEncode(this.data.toString()));
        stringBuilder.append("</");
        stringBuilder.append(this.name);
        stringBuilder.append(">");
        return stringBuilder.toString();
    }
}