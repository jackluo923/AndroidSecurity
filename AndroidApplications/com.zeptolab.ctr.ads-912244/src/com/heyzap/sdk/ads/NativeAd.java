package com.heyzap.sdk.ads;

import android.app.Activity;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.ClickHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.NativeModel;
import com.heyzap.house.request.FetchRequest;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

public class NativeAd {
    private static int AD_UNIT;
    private static final ArrayList CREATIVE_TYPES;
    private static Integer campaignId;
    private static Integer creativeId;
    private static Boolean debugEnabled;
    private static FetchResponse lastResponse;

    public static interface OnFetchListener {
        void onResponse(com.heyzap.sdk.ads.NativeAd.FetchResponse fetchResponse, String str, Throwable th);
    }

    public static class Ad {
        private NativeModel model;

        public static class AdException extends Exception {
            private static final long serialVersionUID = 1;
        }

        private Ad(NativeModel nativeModel) {
            this.model = nativeModel;
        }

        private NativeModel getModel() {
            return this.model;
        }

        public void doClick(Activity activity) {
            new ClickHandler(this.model).doClick(activity);
        }

        public void doImpression() {
            this.model.onImpression(Manager.applicationContext);
        }

        public Boolean getBoolean(String str) {
            try {
                return Boolean.valueOf(this.model.data.getBoolean(str));
            } catch (JSONException e) {
                throw new AdException();
            } catch (IllegalArgumentException e2) {
                throw new AdException();
            } catch (Exception e3) {
                throw new AdException();
            }
        }

        public Double getDouble(String str) {
            try {
                return Double.valueOf(this.model.data.getDouble(str));
            } catch (JSONException e) {
                throw new AdException();
            } catch (IllegalArgumentException e2) {
                throw new AdException();
            } catch (Exception e3) {
                throw new AdException();
            }
        }

        protected String getImpressionId() {
            return this.model.getImpressionId();
        }

        public Integer getInt(String str) {
            try {
                return Integer.valueOf(this.model.data.getInt(str));
            } catch (JSONException e) {
                throw new AdException();
            } catch (IllegalArgumentException e2) {
                throw new AdException();
            } catch (Exception e3) {
                throw new AdException();
            }
        }

        public long getLong(String str) {
            try {
                return this.model.data.getLong(str);
            } catch (JSONException e) {
                throw new AdException();
            } catch (IllegalArgumentException e2) {
                throw new AdException();
            } catch (Exception e3) {
                throw new AdException();
            }
        }

        public String getString(String str) {
            try {
                return this.model.data.getString(str);
            } catch (JSONException e) {
                throw new AdException();
            } catch (IllegalArgumentException e2) {
                throw new AdException();
            } catch (Exception e3) {
                throw new AdException();
            }
        }

        public Boolean has(String str) {
            return Boolean.valueOf(this.model.data.has(str));
        }

        public Boolean isNull(String str) {
            return Boolean.valueOf(this.model.data.isNull(str));
        }

        public Boolean optBoolean(String str) {
            return optBoolean(str, Boolean.valueOf(false));
        }

        public Boolean optBoolean(String str, Boolean bool) {
            try {
                return getBoolean(str);
            } catch (Exception e) {
                return bool;
            }
        }

        public Double optDouble(String str) {
            return optDouble(str, Double.valueOf(Double.NaN));
        }

        public Double optDouble(String str, Double d) {
            try {
                return getDouble(str);
            } catch (Exception e) {
                return d;
            }
        }

        public Integer optInt(String str) {
            return optInt(str, Integer.valueOf(0));
        }

        public Integer optInt(String str, Integer num) {
            try {
                return getInt(str);
            } catch (Exception e) {
                return num;
            }
        }

        public long optLong(String str) {
            return optLong(str, Long.valueOf(0));
        }

        public long optLong(String str, Long l) {
            try {
                return getLong(str);
            } catch (Exception e) {
                return l.longValue();
            }
        }

        public String optString(String str) {
            return optString(str, AdTrackerConstants.BLANK);
        }

        public String optString(String str, String str2) {
            try {
                return getString(str);
            } catch (Exception e) {
                return str2;
            }
        }
    }

    public static class FetchResponse {
        private List ads;
        private String tag;

        private FetchResponse(List list, String str) {
            this.ads = null;
            this.tag = AdModel.DEFAULT_TAG_NAME;
            if (str != null) {
                String str2 = AdModel.DEFAULT_TAG_NAME;
            }
            if (list != null) {
                this.ads = list;
            } else {
                this.ads = new ArrayList();
            }
        }

        public void doImpressionOnAll() {
            if (this.ads != null) {
                List arrayList = new ArrayList();
                Iterator it = this.ads.iterator();
                while (it.hasNext()) {
                    arrayList.add(((com.heyzap.sdk.ads.NativeAd.Ad) it.next()).getModel());
                }
                AdModel.onManyImpressions(Manager.applicationContext, arrayList);
            }
        }

        public List getAds() {
            return this.ads;
        }

        public Integer getCount() {
            return this.ads != null ? Integer.valueOf(this.ads.size()) : Integer.valueOf(0);
        }

        public String getTag() {
            return this.tag;
        }
    }

    static {
        AD_UNIT = 4;
        CREATIVE_TYPES = new ArrayList(Arrays.asList(new String[]{"native"}));
        creativeId = Integer.valueOf(0);
        campaignId = Integer.valueOf(0);
        debugEnabled = Boolean.valueOf(false);
        lastResponse = null;
    }

    private NativeAd() {
    }

    private static FetchRequest createRequest(String str) {
        FetchRequest fetchRequest = new FetchRequest(AD_UNIT, str, CREATIVE_TYPES);
        if (debugEnabled.booleanValue()) {
            fetchRequest.setDebugEnabled(debugEnabled);
            fetchRequest.setRandomStrategyEnabled(Boolean.valueOf(true));
        }
        fetchRequest.setCreativeId(creativeId);
        fetchRequest.setCampaignId(campaignId);
        return fetchRequest;
    }

    public static void fetch(int i, OnFetchListener onFetchListener) {
        fetch(AdModel.DEFAULT_TAG_NAME, i, onFetchListener);
    }

    public static void fetch(String str, int i, OnFetchListener onFetchListener) {
        FetchRequest createRequest = createRequest(str);
        createRequest.setMaxCount(i);
        createRequest.setResponseHandler(new f(onFetchListener));
        createRequest.execute(Manager.applicationContext);
    }

    public static FetchResponse getLastResponse() {
        return lastResponse;
    }
}