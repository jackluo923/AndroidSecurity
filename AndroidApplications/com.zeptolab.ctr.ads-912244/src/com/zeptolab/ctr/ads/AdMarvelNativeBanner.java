package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.AdMArvelErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.admarvel.android.nativeads.AdMarvelNativeAd.AdMarvelNativeAdListener;
import com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters;
import com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters.Builder;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public class AdMarvelNativeBanner extends AdBanner {
    private static final String TAG = "AdMarvelNativeBanner";
    private AdMarvelNativeAdListenerImpl m_adListener;
    private AdMarvelOffer m_currentOffer;
    private LinearLayout m_dummyLayout;
    private int m_dummyLayoutHeight;
    private int m_dummyLayoutWidth;
    private AdMarvelNativeAd m_nativeAd;
    private final RelativeLayout m_parentLayout;

    private class AdMarvelNativeAdListenerImpl implements AdMarvelNativeAdListener {
        private AdMarvelNativeAdListenerImpl() {
        }

        public void onClickNativeAd(String str) {
            L.d(TAG, "Ad is clicked");
        }

        public void onFailedToReceiveNativeAd(int i, AdMArvelErrorReason adMArvelErrorReason, AdMarvelNativeAd adMarvelNativeAd) {
            L.w(TAG, "Did not receive an ad");
            if (adMArvelErrorReason != null) {
                L.w(TAG, "Error: " + adMArvelErrorReason.getErrorCode() + " " + adMArvelErrorReason);
            } else {
                L.w(TAG, "Did not receive an ad");
            }
            AdMarvelNativeBanner.this.view.queueEvent(new Runnable() {
                public void run() {
                    AdBanner.bannerFailed(AdBanner.NATIVE);
                }
            });
        }

        public void onReceiveNativeAd(AdMarvelNativeAd adMarvelNativeAd) {
            if (adMarvelNativeAd != AdMarvelNativeBanner.this.m_nativeAd) {
                L.w(TAG, "Wrong ad is loaded");
            } else {
                L.d(TAG, "Ad is loaded");
                AdMarvelNativeBanner.this.m_currentOffer = com.zeptolab.ctr.ads.AdMarvelNativeBanner.AdMarvelOffer.fromNativeAd(AdMarvelNativeBanner.this.m_nativeAd);
                if (AdMarvelNativeBanner.this.m_currentOffer != null && AdMarvelNativeBanner.this.view != null) {
                    L.d(TAG, "Current Offer:\n" + AdMarvelNativeBanner.this.m_currentOffer);
                    AdMarvelNativeBanner.this.view.queueEvent(new Runnable() {
                        public void run() {
                            AdMarvelNativeAdListenerImpl.this.this$0.nativeAdMarvelOfferFetched();
                        }
                    });
                    AdMarvelNativeBanner.this.fetchIcon(AdMarvelNativeBanner.this.m_currentOffer);
                }
            }
        }

        public void onRequestNativeAd() {
            L.d(TAG, "Ad requested");
        }
    }

    public static class AdMarvelOffer {
        private String m_body;
        private String m_callToAction;
        private String m_hash;
        private String m_iconUrl;
        private boolean m_isFacebookOffer;
        private String m_title;

        private AdMarvelOffer() {
            this.m_hash = AdTrackerConstants.BLANK;
            this.m_title = AdTrackerConstants.BLANK;
            this.m_iconUrl = AdTrackerConstants.BLANK;
        }

        static com.zeptolab.ctr.ads.AdMarvelNativeBanner.AdMarvelOffer fromNativeAd(AdMarvelNativeAd adMarvelNativeAd) {
            com.zeptolab.ctr.ads.AdMarvelNativeBanner.AdMarvelOffer adMarvelOffer = null;
            com.zeptolab.ctr.ads.AdMarvelNativeBanner.AdMarvelOffer adMarvelOffer2 = new com.zeptolab.ctr.ads.AdMarvelNativeBanner.AdMarvelOffer();
            try {
                adMarvelOffer2.m_title = adMarvelNativeAd.getDisplayName();
                adMarvelOffer2.m_body = adMarvelNativeAd.getFullMessage();
                if (adMarvelNativeAd.getIcon() != null) {
                    adMarvelOffer2.m_iconUrl = adMarvelNativeAd.getIcon().getImageUrl();
                }
                if (adMarvelNativeAd.getCta() != null) {
                    adMarvelOffer2.m_callToAction = adMarvelNativeAd.getCta().getTitle();
                }
                adMarvelOffer2.m_isFacebookOffer = adMarvelNativeAd.getSdkAdNetwork() == SDKAdNetwork.FACEBOOK;
                byte[] digest = MessageDigest.getInstance("MD5").digest(adMarvelOffer2.m_title.getBytes());
                StringBuilder stringBuilder = new StringBuilder();
                int length = digest.length;
                int i = 0;
                while (i < length) {
                    String toHexString = Integer.toHexString(digest[i] & 255);
                    while (toHexString.length() < 2) {
                        toHexString = "0" + toHexString;
                    }
                    stringBuilder.append(toHexString);
                    i++;
                }
                adMarvelOffer2.m_hash = stringBuilder.toString();
                return adMarvelOffer2;
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                return adMarvelOffer;
            } catch (Exception e2) {
                e2.printStackTrace();
                return adMarvelOffer;
            }
        }

        public String body() {
            return this.m_body;
        }

        public String callToAction() {
            return this.m_callToAction;
        }

        public String hash() {
            return this.m_hash;
        }

        public String iconUrl() {
            return this.m_iconUrl;
        }

        public boolean isFacebookOffer() {
            return this.m_isFacebookOffer;
        }

        public String title() {
            return this.m_title;
        }

        public String toString() {
            return "Title: " + this.m_title + Constants.FORMATTER + "Body: " + this.m_body + Constants.FORMATTER + "Icon URL: " + this.m_iconUrl + Constants.FORMATTER + "Call To Action: " + this.m_callToAction;
        }
    }

    class ImageDownloadTask extends AsyncTask {
        private String m_url;

        ImageDownloadTask() {
        }

        protected byte[] doInBackground(String... strArr) {
            this.m_url = strArr[0];
            return AdMarvelNativeBanner.this.loadUrl(this.m_url);
        }

        protected void onPostExecute(byte[] bArr) {
            try {
                if (AdMarvelNativeBanner.this.m_currentOffer.iconUrl().equals(this.m_url)) {
                    AdMarvelNativeBanner.this.saveOfferIcon(AdMarvelNativeBanner.this.m_currentOffer, bArr);
                }
                L.d(TAG, "icon is loaded");
                AdMarvelNativeBanner.this.view.queueEvent(new Runnable() {
                    public void run() {
                        AdBanner.bannerLoaded(AdBanner.NATIVE);
                    }
                });
            } catch (NullPointerException e) {
                AdMarvelNativeBanner.this.m_currentOffer = null;
            }
        }
    }

    public AdMarvelNativeBanner(Activity activity, RelativeLayout relativeLayout) {
        super(activity);
        this.m_currentOffer = null;
        this.m_dummyLayoutWidth = 0;
        this.m_dummyLayoutHeight = 0;
        this.m_parentLayout = relativeLayout;
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            this.m_dummyLayout = new LinearLayout(this.activity);
            this.m_adListener = new AdMarvelNativeAdListenerImpl(null);
            fetchOffer();
        }
    }

    private void fetchIcon(AdMarvelOffer adMarvelOffer) {
        if (isFileExists(adMarvelOffer.hash())) {
            L.d(TAG, "Icon already exists.");
            this.view.queueEvent(new Runnable() {
                public void run() {
                    AdBanner.bannerLoaded(AdBanner.NATIVE);
                }
            });
        } else {
            new ImageDownloadTask().execute(new String[]{adMarvelOffer.iconUrl()});
        }
    }

    private InputStream getFileInputStream(String str) {
        return new BufferedInputStream(new FileInputStream(new File(this.activity.getDir("admarvelad", 0), str)));
    }

    private OutputStream getFileOuputStream(String str) {
        return new FileOutputStream(new File(this.activity.getDir("admarvelad", 0), str));
    }

    private byte[] loadUrl(String str) {
        byte[] bArr = null;
        try {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new URL(str).openStream()));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = dataInputStream.read();
                    if (-1 == read) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(read);
                } catch (IOException e) {
                    e.printStackTrace();
                    return bArr;
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return bArr;
        }
    }

    private void saveOfferIcon(AdMarvelOffer adMarvelOffer, byte[] bArr) {
        L.d(TAG, "Saving icon for offerId = " + adMarvelOffer.hash());
        if (bArr == null) {
            L.w(TAG, "Icon data is null");
        } else if (adMarvelOffer.hash().equals(AdTrackerConstants.BLANK)) {
            L.w(TAG, "Offer hash is empty");
        } else {
            try {
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                OutputStream fileOuputStream = getFileOuputStream(adMarvelOffer.hash());
                decodeByteArray.compress(CompressFormat.PNG, 80, fileOuputStream);
                fileOuputStream.close();
            } catch (IOException e) {
                IOException iOException = e;
                L.w(TAG, "Can't save icon: " + adMarvelOffer.hash() + "\nError: " + iOException.getLocalizedMessage());
                iOException.printStackTrace();
            }
        }
    }

    public void fetchOffer() {
        L.d(TAG, "Trying to fetch offer");
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            this.m_currentOffer = null;
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    try {
                        if (AdMarvelNativeBanner.this.m_nativeAd != null) {
                            AdMarvelNativeBanner.this.m_nativeAd = null;
                        }
                        AdMarvelNativeBanner.this.m_nativeAd = new AdMarvelNativeAd();
                        Map hashMap = new HashMap();
                        hashMap.put("KEYWORDS", "games");
                        hashMap.put("APP_VERSION", ZBuildConfig.$version_string);
                        RequestParameters build = new Builder().partnerId(ZBuildConfig.admarvel_partner_id).siteId(AdMarvelUtils.isTabletDevice(AdMarvelNativeBanner.this.activity) ? ZBuildConfig.admarvel_site_id_tablet_native_ads : ZBuildConfig.admarvel_site_id_phone_native_ads).targetParams(hashMap).context(AdMarvelNativeBanner.this.activity).build();
                        AdMarvelNativeBanner.this.m_nativeAd.setListener(AdMarvelNativeBanner.this.m_adListener);
                        AdMarvelNativeBanner.this.m_nativeAd.requestNativeAd(build);
                    } catch (IllegalStateException e) {
                        L.w(TAG, "Cannot load ad: " + e.getLocalizedMessage());
                    }
                }
            });
        }
    }

    public synchronized void handleClick() {
        if (this.activity != null) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (AdMarvelNativeBanner.this.m_nativeAd != null) {
                        AdMarvelNativeBanner.this.m_nativeAd.handleClick();
                    }
                }
            });
        }
    }

    public boolean hasIcon(String str) {
        return (AdMarvelBannerController.isDisabled() || !AdMarvelBannerController.isInitialized()) ? false : isFileExists(str);
    }

    public void hideBanner() {
        L.d(TAG, "Hide");
        if (!AdMarvelBannerController.isDisabled() && AdMarvelBannerController.isInitialized()) {
            if (this.m_currentOffer != null && !this.m_currentOffer.isFacebookOffer()) {
                L.i(TAG, "Not need for non-facebook offers");
            } else if (this.m_parentLayout == null) {
                L.w(TAG, "Parent layout is null");
            } else {
                this.activity.runOnUiThread(new Runnable() {
                    public void run() {
                        AdMarvelNativeBanner.this.m_nativeAd.unregisterView();
                        if (AdMarvelNativeBanner.this.m_dummyLayout.getParent() == AdMarvelNativeBanner.this.m_parentLayout) {
                            AdMarvelNativeBanner.this.m_parentLayout.removeView(AdMarvelNativeBanner.this.m_dummyLayout);
                        }
                    }
                });
            }
        }
    }

    public boolean isFileExists(String str) {
        return new File(this.activity.getDir("admarvelad", 0), str).exists();
    }

    public byte[] loadIcon(String str) {
        L.d(TAG, "Loading icon for offerId = " + str);
        if (!isFileExists(str)) {
            return null;
        }
        try {
            InputStream fileInputStream = getFileInputStream(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            int read = fileInputStream.read(bArr);
            while (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
                read = fileInputStream.read(bArr);
            }
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            fileInputStream.close();
            return toByteArray;
        } catch (IOException e) {
            IOException iOException = e;
            L.w(TAG, "Can't load icon: " + str + "\nError: " + iOException.getLocalizedMessage());
            iOException.printStackTrace();
            return null;
        }
    }

    public synchronized void logImpression() {
        if (this.activity != null) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (AdMarvelNativeBanner.this.m_nativeAd != null) {
                        AdMarvelNativeBanner.this.m_nativeAd.handleImpression();
                    }
                }
            });
        }
    }

    native void nativeAdMarvelOfferFetched();

    public AdMarvelOffer offer() {
        return this.m_currentOffer;
    }

    public void setLayout(RelativeLayout relativeLayout) {
        this.layout = relativeLayout;
    }

    public void setLayoutSize(int i, int i2) {
        this.m_dummyLayoutWidth = (int) (((double) i) * 0.9d);
        this.m_dummyLayoutHeight = (int) (((double) i2) * 0.8d);
    }

    public boolean showBanner() {
        L.d(TAG, "Show");
        if (AdMarvelBannerController.isDisabled() || !AdMarvelBannerController.isInitialized()) {
            return false;
        }
        if (this.m_currentOffer == null) {
            L.w(TAG, "Current offer is null");
            return false;
        } else if (!this.m_currentOffer.isFacebookOffer()) {
            L.i(TAG, "Not need for non-facebook offers");
            return true;
        } else if (this.m_parentLayout == null) {
            L.w(TAG, "Parent layout is null");
            return false;
        } else {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    LayoutParams layoutParams = new RelativeLayout.LayoutParams(AdMarvelNativeBanner.this.m_dummyLayoutWidth, AdMarvelNativeBanner.this.m_dummyLayoutHeight);
                    layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
                    layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
                    layoutParams.alignWithParent = true;
                    if (AdMarvelNativeBanner.this.m_dummyLayout.getParent() == null) {
                        AdMarvelNativeBanner.this.m_parentLayout.addView(AdMarvelNativeBanner.this.m_dummyLayout, layoutParams);
                    }
                    AdMarvelNativeBanner.this.m_nativeAd.registerViewForInteraction(AdMarvelNativeBanner.this.m_dummyLayout);
                }
            });
            return true;
        }
    }
}