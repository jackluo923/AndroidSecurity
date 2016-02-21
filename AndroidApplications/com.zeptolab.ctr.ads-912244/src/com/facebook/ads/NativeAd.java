package com.facebook.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.admarvel.android.ads.Constants;
import com.facebook.ads.internal.AdClientEvent;
import com.facebook.ads.internal.AdClientEventManager;
import com.facebook.ads.internal.AdHandler.ImpressionHelper;
import com.facebook.ads.internal.AdRequest.Callback;
import com.facebook.ads.internal.AdRequestController;
import com.facebook.ads.internal.AdResponse;
import com.facebook.ads.internal.AdType;
import com.facebook.ads.internal.DownloadImageTask;
import com.facebook.ads.internal.NativeAdDataModel;
import com.facebook.ads.internal.NativeAdHandler;
import com.google.android.gms.plus.PlusShare;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

public class NativeAd implements OnClickListener, OnTouchListener, Ad {
    private static final String TAG;
    private static WeakHashMap viewMapping;
    private NativeAdDataModel adDataModel;
    private AdListener adListener;
    private boolean adLoaded;
    private AdRequestController adRequestController;
    private View adView;
    private ClickData clickData;
    private List clickListeners;
    private final Context context;
    private NativeAdHandler handler;
    private volatile boolean loadRequested;

    private class ClickData {
        private float adPositionX;
        private float adPositionY;
        private int height;
        private boolean initialized;
        private int visibleHeight;
        private int visibleWidth;
        private int width;
        private int xCoord;
        private int yCoord;

        private ClickData() {
        }

        public Map getData() {
            Map hashMap = new HashMap();
            hashMap.put("clickX", Integer.valueOf(this.xCoord));
            hashMap.put("clickY", Integer.valueOf(this.yCoord));
            hashMap.put(MMLayout.KEY_WIDTH, Integer.valueOf(this.width));
            hashMap.put(MMLayout.KEY_HEIGHT, Integer.valueOf(this.height));
            hashMap.put("adPositionX", Float.valueOf(this.adPositionX));
            hashMap.put("adPositionY", Float.valueOf(this.adPositionY));
            hashMap.put("visibleWidth", Integer.valueOf(this.visibleWidth));
            hashMap.put("visibleHeight", Integer.valueOf(this.visibleHeight));
            return hashMap;
        }

        public boolean initialized() {
            return this.initialized;
        }
    }

    public static class Image {
        private final int height;
        private final String url;
        private final int width;

        private Image(String str, int i, int i2) {
            this.url = str;
            this.width = i;
            this.height = i2;
        }

        public static com.facebook.ads.NativeAd.Image fromJSONObject(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            String optString = jSONObject.optString(PlusShare.KEY_CALL_TO_ACTION_URL);
            return optString != null ? new com.facebook.ads.NativeAd.Image(optString, jSONObject.optInt(MMLayout.KEY_WIDTH, 0), jSONObject.optInt(MMLayout.KEY_HEIGHT, 0)) : null;
        }

        public int getHeight() {
            return this.height;
        }

        public String getUrl() {
            return this.url;
        }

        public int getWidth() {
            return this.width;
        }
    }

    public static class Rating {
        private final double scale;
        private final double value;

        private Rating(double d, double d2) {
            this.value = d;
            this.scale = d2;
        }

        public static com.facebook.ads.NativeAd.Rating fromJSONObject(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            double optDouble = jSONObject.optDouble(Constants.NATIVE_AD_VALUE_ELEMENT, 0.0d);
            double optDouble2 = jSONObject.optDouble("scale", 0.0d);
            return (optDouble == 0.0d || optDouble2 == 0.0d) ? null : new com.facebook.ads.NativeAd.Rating(optDouble, optDouble2);
        }

        public double getScale() {
            return this.scale;
        }

        public double getValue() {
            return this.value;
        }
    }

    static {
        TAG = NativeAd.class.getSimpleName();
        viewMapping = new WeakHashMap();
    }

    public NativeAd(Context context, String str) {
        this.context = context;
        this.clickListeners = new ArrayList();
        this.clickData = new ClickData(null);
        this.adRequestController = new AdRequestController(this.context, str, AdSize.INTERSTITIAL, false, AdType.NATIVE, new Callback() {
            public void onCompleted(AdResponse adResponse) {
                if (adResponse.getDataModel() == null || adResponse.getDataModel() instanceof NativeAdDataModel) {
                    NativeAd.this.adDataModel = (NativeAdDataModel) adResponse.getDataModel();
                    if (NativeAd.this.adDataModel != null && NativeAd.this.adDataModel.isValid()) {
                        NativeAd.this.adLoaded = true;
                        if (NativeAd.this.adListener != null) {
                            NativeAd.this.adListener.onAdLoaded(NativeAd.this);
                        }
                    } else if (NativeAd.this.adDataModel == null) {
                        NativeAd.this.adLoaded = false;
                        if (NativeAd.this.adListener != null) {
                            NativeAd.this.adListener.onError(NativeAd.this, adResponse.getError() != null ? adResponse.getError() : AdError.INTERNAL_ERROR);
                        }
                    } else {
                        NativeAd.this.adLoaded = false;
                        NativeAd.this.adDataModel = null;
                        if (NativeAd.this.adListener != null) {
                            NativeAd.this.adListener.onError(NativeAd.this, AdError.MISSING_PROPERTIES);
                        }
                    }
                } else if (NativeAd.this.adListener != null) {
                    NativeAd.this.adListener.onError(NativeAd.this, AdError.INTERNAL_ERROR);
                }
            }

            public void onError(AdError adError) {
                NativeAd.this.adLoaded = false;
                if (NativeAd.this.adListener != null) {
                    NativeAd.this.adListener.onError(NativeAd.this, adError);
                }
            }
        });
    }

    private void addListener(View view) {
        this.clickListeners.add(view);
        view.setOnClickListener(this);
        view.setOnTouchListener(this);
    }

    private void collectAllSubviews(List list, View view) {
        list.add(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            while (i < viewGroup.getChildCount()) {
                collectAllSubviews(list, viewGroup.getChildAt(i));
                i++;
            }
        }
    }

    private void detachListeners() {
        Iterator it = this.clickListeners.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
        }
        this.clickListeners.clear();
    }

    public static void downloadAndDisplayImage(Image image, ImageView imageView) {
        new DownloadImageTask(imageView).execute(new String[]{image.getUrl()});
    }

    private void ensureAdRequestController() {
        if (this.adRequestController == null) {
            Exception runtimeException = new RuntimeException("No request controller available, has the NativeAd been destroyed?");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(runtimeException));
            throw runtimeException;
        }
    }

    private boolean isValidAlpha() {
        return VERSION.SDK_INT < 11 || this.adView.getAlpha() > 0.9f;
    }

    private boolean isViewOnScreen() {
        if (this.adView == null || !this.adLoaded || this.adView.getVisibility() != 0 || this.adView.getParent() == null || !isValidAlpha()) {
            return false;
        }
        Rect rect = new Rect();
        if (!this.adView.getGlobalVisibleRect(rect)) {
            return false;
        }
        int width = rect.width();
        return ((double) (rect.height() * width)) >= ((double) (this.adView.getWidth() * this.adView.getHeight())) / 2.0d;
    }

    public void destroy() {
        if (this.adRequestController != null) {
            this.adRequestController.destroy();
            this.adRequestController = null;
        }
        detachListeners();
        if (this.handler != null) {
            this.handler.cancelImpressionRetry();
            this.handler = null;
        }
        if (this.adView != null) {
            viewMapping.remove(this.adView);
            this.adView = null;
        }
    }

    public String getAdBody() {
        return this.adLoaded ? this.adDataModel.getBody() : null;
    }

    public String getAdCallToAction() {
        return this.adLoaded ? this.adDataModel.getCallToAction() : null;
    }

    public Image getAdCoverImage() {
        return this.adLoaded ? this.adDataModel.getImage() : null;
    }

    public Image getAdIcon() {
        return this.adLoaded ? this.adDataModel.getIcon() : null;
    }

    public String getAdSocialContext() {
        return this.adLoaded ? this.adDataModel.getSocialContext() : null;
    }

    public Rating getAdStarRating() {
        return this.adLoaded ? this.adDataModel.getStarRating() : null;
    }

    public String getAdTitle() {
        return this.adLoaded ? this.adDataModel.getTitle() : null;
    }

    public boolean isAdLoaded() {
        return this.adLoaded;
    }

    public void loadAd() {
        if (this.loadRequested) {
            Exception illegalStateException = new IllegalStateException("Ad already loaded");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalStateException));
            throw illegalStateException;
        } else {
            this.loadRequested = true;
            ensureAdRequestController();
            this.adRequestController.loadAd();
        }
    }

    public void onClick(View view) {
        if (this.adListener != null) {
            this.adListener.onAdClicked(this);
        }
        this.adDataModel.handleClick(this.context, this.clickData.getData());
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!(this.clickData.initialized() || motionEvent.getAction() != 0 || this.adView == null)) {
            this.clickData.width = this.adView.getWidth();
            this.clickData.height = this.adView.getHeight();
            int[] iArr = new int[2];
            this.adView.getLocationInWindow(iArr);
            this.clickData.adPositionX = (float) iArr[0];
            this.clickData.adPositionY = (float) iArr[1];
            Rect rect = new Rect();
            this.adView.getGlobalVisibleRect(rect);
            this.clickData.visibleWidth = rect.width();
            this.clickData.visibleHeight = rect.height();
            int[] iArr2 = new int[2];
            view.getLocationInWindow(iArr2);
            this.clickData.xCoord = ((int) motionEvent.getX()) + iArr2[0] - iArr[0];
            this.clickData.yCoord = iArr2[1] + ((int) motionEvent.getY()) - iArr[1];
            this.clickData.initialized = true;
        }
        return false;
    }

    public void registerViewForInteraction(View view) {
        List arrayList = new ArrayList();
        collectAllSubviews(arrayList, view);
        registerViewForInteraction(view, arrayList);
    }

    public void registerViewForInteraction(View view, List list) {
        Exception illegalArgumentException;
        if (view == null) {
            illegalArgumentException = new IllegalArgumentException("Must provide a View");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalArgumentException));
            throw illegalArgumentException;
        } else if (list == null || list.size() == 0) {
            illegalArgumentException = new IllegalArgumentException("Invalid set of clickable views");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalArgumentException));
            throw illegalArgumentException;
        } else if (this.adLoaded) {
            if (this.adView != null) {
                Log.w(TAG, "Native Ad was already registered with a View. Auto unregistering and proceeding.");
                unregisterView();
            }
            if (viewMapping.containsKey(view)) {
                Log.w(TAG, "View already registered with a NativeAd. Auto unregistering and proceeding.");
                ((NativeAd) ((WeakReference) viewMapping.get(view)).get()).unregisterView();
            }
            this.adView = view;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                addListener((View) it.next());
            }
            this.handler = new NativeAdHandler(new ImpressionHelper() {
                public void afterImpressionSent() {
                }

                public boolean shouldSendImpression() {
                    return NativeAd.this.isViewOnScreen();
                }
            }, 1000, this.adDataModel);
            this.handler.scheduleImpressionRetry();
            viewMapping.put(view, new WeakReference(this));
        } else {
            Log.e(TAG, "Ad not loaded");
        }
    }

    public void setAdListener(AdListener adListener) {
        this.adListener = adListener;
    }

    public void unregisterView() {
        if (this.adView != null) {
            if (viewMapping.containsKey(this.adView) && ((WeakReference) viewMapping.get(this.adView)).get() == this) {
                viewMapping.remove(this.adView);
                detachListeners();
                this.handler.cancelImpressionRetry();
                this.handler = null;
                this.adView = null;
            } else {
                Exception illegalStateException = new IllegalStateException("View not registered with this NativeAd");
                AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalStateException));
                throw illegalStateException;
            }
        }
    }
}