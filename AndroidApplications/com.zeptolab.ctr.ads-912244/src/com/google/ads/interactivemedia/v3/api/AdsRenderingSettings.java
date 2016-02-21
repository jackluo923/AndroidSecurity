package com.google.ads.interactivemedia.v3.api;

import java.util.List;

public interface AdsRenderingSettings {
    int getBitrateKbps();

    List getMimeTypes();

    void setBitrateKbps(int i);

    void setMimeTypes(List list);
}