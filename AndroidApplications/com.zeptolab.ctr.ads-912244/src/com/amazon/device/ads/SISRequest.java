package com.amazon.device.ads;

import java.util.HashMap;
import org.json.JSONObject;

interface SISRequest {
    MetricType getCallMetricType();

    String getLogTag();

    String getPath();

    HashMap getPostParameters();

    QueryStringParameters getQueryParameters();

    void onResponseReceived(JSONObject jSONObject);
}