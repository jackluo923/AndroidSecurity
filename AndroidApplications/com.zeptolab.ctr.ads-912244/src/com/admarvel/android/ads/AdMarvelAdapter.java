package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.admarvel.android.util.Logging;
import java.util.Map;

public abstract class AdMarvelAdapter {
    protected static AdMarvelAdapter createInstance(String str) {
        return (AdMarvelAdapter) createObject(str);
    }

    private static Object createObject(String str) {
        Object obj = null;
        try {
            return Class.forName(str).newInstance();
        } catch (InstantiationException e) {
            Logging.log(e.getMessage());
            return obj;
        } catch (IllegalAccessException e2) {
            Logging.log(e2.getMessage());
            return obj;
        } catch (ClassNotFoundException e3) {
            Logging.log(e3.getMessage());
            return obj;
        }
    }

    protected abstract void cleanupView(View view);

    protected abstract void displayInterstitial(Activity activity, String str);

    protected abstract void forceCloseFullScreenAd(Activity activity);

    public abstract String getAdapterVersion();

    public abstract String getAdnetworkSDKVersionInfo();

    public abstract void handleClick();

    public abstract void handleImpression();

    public abstract void initialize(Activity activity, Map map);

    protected abstract AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader);

    public abstract Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader);

    public abstract void pause(Activity activity, Map map);

    public abstract void registerViewForInteraction(View view);

    protected abstract void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2);

    public abstract Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj);

    protected abstract View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2);

    public abstract void resume(Activity activity, Map map);

    public abstract void uninitialize(Activity activity, Map map);

    public abstract void unregisterView();
}