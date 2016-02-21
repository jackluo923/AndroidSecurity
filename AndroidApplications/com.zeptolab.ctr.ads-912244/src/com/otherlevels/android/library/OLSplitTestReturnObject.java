package com.otherlevels.android.library;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OLSplitTestReturnObject {
    private String content;
    private String phash;
    private String pushText;

    public OLSplitTestReturnObject(String str, String str2, String str3) {
        this.phash = AdTrackerConstants.BLANK;
        this.pushText = AdTrackerConstants.BLANK;
        this.content = AdTrackerConstants.BLANK;
        this.phash = str;
        try {
            this.pushText = URLDecoder.decode(str2, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (UnsupportedEncodingException e) {
            Logger.getLogger(OLSplitTestReturnObject.class.getName()).log(Level.SEVERE, null, e);
        }
        this.content = str3;
    }

    public String getContent() {
        return this.content;
    }

    public String getPhash() {
        return this.phash;
    }

    public String getPushText() {
        return this.pushText;
    }
}