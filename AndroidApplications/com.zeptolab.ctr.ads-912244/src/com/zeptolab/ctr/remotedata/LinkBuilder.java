package com.zeptolab.ctr.remotedata;

import com.zeptolab.utils.HTMLEncoder;

public class LinkBuilder {
    StringBuilder link;
    boolean skipampersand;

    public LinkBuilder(String str) {
        this.link = new StringBuilder(str);
        this.skipampersand = str.endsWith("?");
    }

    public void put(String str, Object obj) {
        if (this.skipampersand) {
            this.skipampersand = false;
        } else {
            this.link.append("&");
        }
        this.link.append(str);
        this.link.append("=");
        if (obj instanceof String) {
            obj = HTMLEncoder.encode((String) obj);
        }
        this.link.append(obj);
    }

    public String toString() {
        return this.link.toString();
    }
}