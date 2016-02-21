package com.zeptolab.zbuild;

import com.zeptolab.ctr.ads.R.attr;
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.ctr.ads.R.id;
import com.zeptolab.ctr.ads.R.layout;
import com.zeptolab.ctr.ads.R.raw;
import com.zeptolab.ctr.ads.R.string;
import com.zeptolab.ctr.ads.R.style;

public class ZR {
    public static boolean DEBUG;
    public static attr attr;
    public static drawable drawable;
    public static id id;
    public static layout layout;
    public static raw raw;
    public static string string;
    public static style style;

    static {
        DEBUG = false;
        attr = new attr();
        drawable = new drawable();
        id = new id();
        layout = new layout();
        string = new string();
        style = new style();
        raw = new raw();
    }
}