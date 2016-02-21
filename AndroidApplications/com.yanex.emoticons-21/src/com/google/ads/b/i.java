package com.google.ads.b;

import com.google.ads.bs;
import com.google.ads.bt;
import com.google.ads.bu;
import com.google.ads.bv;
import com.google.ads.bw;
import com.google.ads.bx;
import com.google.ads.cb;
import com.google.ads.cc;
import com.google.ads.l;
import com.google.ads.m;
import java.util.HashMap;

final class i extends HashMap {
    i() {
        put("/open", new cc());
        put("/canOpenURLs", new bt());
        put("/close", new bv());
        put("/customClose", new bw());
        put("/appEvent", new bs());
        put("/log", new cb());
        put("/click", new bu());
        put("/httpTrack", new bx());
        put("/touch", new l());
        put("/video", new m());
    }
}