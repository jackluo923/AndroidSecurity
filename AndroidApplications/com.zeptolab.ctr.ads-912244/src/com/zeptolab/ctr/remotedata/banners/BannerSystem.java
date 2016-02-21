package com.zeptolab.ctr.remotedata.banners;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.EventType;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.internal.NativeAdResponse;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.L;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.remotedata.LinkBuilder;
import com.zeptolab.ctr.remotedata.ServerDataManager;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.SystemInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class BannerSystem extends ServerDataManager {
    protected static final String TAG = "BannerSystem";
    protected int bannerSet;
    protected Map banners;
    protected boolean bannersprocessing;
    protected RemoteConfig config;
    protected boolean execution;
    protected int resolution;
    protected String storedBannersPrefix;
    protected String storedConfigPrefix;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String val$app;

        AnonymousClass_1(String str) {
            this.val$app = str;
        }

        public void run() {
            LinkBuilder linkBuilder = new LinkBuilder(BannerSystem.this.serverUrl);
            linkBuilder.put("app", this.val$app);
            linkBuilder.put("platform", "android");
            linkBuilder.put("set", Integer.valueOf(BannerSystem.this.bannerSet));
            linkBuilder.put("fv", Integer.valueOf(BannerSystem.this.protocolVersion));
            Iterable arrayList = new ArrayList();
            Iterator it = BannerSystem.this.banners.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (BannerSystem.this.isValid((Banner) entry.getValue())) {
                    arrayList.add(entry.getKey());
                }
            }
            if (arrayList.size() > 0) {
                linkBuilder.put("existing", TextUtils.join(",", arrayList));
            }
            BannerSystem.this.injectSizes(linkBuilder, BannerSystem.this.resolution);
            BannerSystem.this.injectAdditionalParameters(linkBuilder);
            BannerSystem.this.injectSiblings(linkBuilder);
            new RequestDataTask().execute(new String[]{linkBuilder.toString()});
        }
    }

    protected class RequestDataTask extends AsyncTask {
        protected RequestDataTask() {
        }

        protected Boolean doInBackground(String... strArr) {
            String str = null;
            try {
                L.i(TAG, "Fetching banner xml from: " + strArr[0]);
                Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(strArr[0]);
                if (parse != null) {
                    String nodeValue;
                    if (parse.getElementsByTagName(EventType.RESPONSE).getLength() > 0) {
                        nodeValue = parse.getElementsByTagName(EventType.RESPONSE).item(0).getFirstChild().getNodeValue();
                    } else {
                        L.e(TAG, "no response node found");
                        nodeValue = null;
                    }
                    if (nodeValue.equals("change")) {
                        BannerSystem.this.bannersprocessing = true;
                        nodeValue = parse.getElementsByTagName("promolist").getLength() > 0 ? parse.getElementsByTagName("promolist").item(0).getFirstChild().getNodeValue() : null;
                        if (parse.getElementsByTagName("promoweights").getLength() > 0) {
                            str = parse.getElementsByTagName("promoweights").item(0).getFirstChild().getNodeValue();
                        }
                        BannerSystem.this.config = new RemoteConfig(nodeValue, str);
                        NodeList elementsByTagName = parse.getElementsByTagName("banner");
                        int length = elementsByTagName.getLength();
                        int i = 0;
                        while (i < length) {
                            Banner banner = new Banner(BannerSystem.this.activity, (Element) elementsByTagName.item(i));
                            BannerSystem.this.banners.put(Integer.valueOf(banner.id), banner);
                            i++;
                        }
                        BannerSystem.this.bannersprocessing = false;
                    } else if (!nodeValue.equals("hide")) {
                        return Boolean.valueOf(false);
                    } else {
                        BannerSystem.this.config.setHideMainPromo(true);
                    }
                    if (parse.getElementsByTagName("bannersystem").getLength() > 0) {
                    }
                    if (parse.getElementsByTagName("interstitialbannersperiod").getLength() > 0) {
                        BannerSystem.this.config.setInterstitialBannersPeriod(Integer.parseInt(parse.getElementsByTagName("interstitialbannersperiod").item(0).getAttributes().getNamedItem(Constants.NATIVE_AD_VALUE_ELEMENT).getNodeValue()));
                    }
                    if (parse.getElementsByTagName("changeinterstitialtovideoperiod").getLength() > 0) {
                        BannerSystem.this.config.setChangeInterstitialToVideoPeriod(Integer.parseInt(parse.getElementsByTagName("changeinterstitialtovideoperiod").item(0).getAttributes().getNamedItem(Constants.NATIVE_AD_VALUE_ELEMENT).getNodeValue()));
                    }
                    if (parse.getElementsByTagName("videobannerscount").getLength() > 0) {
                        BannerSystem.this.config.setVideoBannersCount(Integer.parseInt(parse.getElementsByTagName("videobannerscount").item(0).getAttributes().getNamedItem(Constants.NATIVE_AD_VALUE_ELEMENT).getNodeValue()));
                    }
                    if (parse.getElementsByTagName("hidesocialnetworks").getLength() > 0) {
                        BannerSystem.this.config.setHideSocialNetworks(parse.getElementsByTagName("hidesocialnetworks").item(0).getAttributes().getNamedItem(Constants.NATIVE_AD_VALUE_ELEMENT).getNodeValue().equals("true"));
                    }
                    if (parse.getElementsByTagName("defaultinterstitial").getLength() > 0) {
                        BannerSystem.this.config.setDefaultInterstitial(parse.getElementsByTagName("defaultinterstitial").item(0).getAttributes().getNamedItem(Constants.NATIVE_AD_VALUE_ELEMENT).getNodeValue().equals("true"));
                    }
                    if (parse.getElementsByTagName("boxforcrosspromo").getLength() > 0) {
                        BannerSystem.this.config.setBoxForCrossPromo(Integer.parseInt(parse.getElementsByTagName("boxforcrosspromo").item(0).getAttributes().getNamedItem(Constants.NATIVE_AD_VALUE_ELEMENT).getNodeValue()));
                    }
                    BannerSystem.this.parseAdditionalParameters(parse);
                    if (!BannerSystem.this.saveObject(BannerSystem.this.banners, BannerSystem.this.storedBannersPrefix)) {
                        throw new Exception();
                    } else if (BannerSystem.this.saveObject(BannerSystem.this.config, BannerSystem.this.storedConfigPrefix)) {
                        BannerSystem.this.config.iterateBanner();
                        return Boolean.valueOf(true);
                    } else {
                        throw new Exception();
                    }
                } else {
                    L.e(TAG, "No valid response from server");
                    return Boolean.valueOf(false);
                }
            } catch (Exception e) {
                Exception exception = e;
                L.i(TAG, "Not initiated properly");
                exception.printStackTrace();
            }
        }

        protected void onPostExecute(Boolean bool) {
            BannerSystem.this.execution = false;
        }

        protected void onPreExecute() {
            BannerSystem.this.execution = true;
        }
    }

    public BannerSystem(Activity activity) {
        super(activity);
        this.execution = false;
        this.bannersprocessing = false;
        this.storedBannersPrefix = "storedBanners";
        this.storedConfigPrefix = "storedConfig";
        initialize();
    }

    public BannerSystem(Activity activity, String str) {
        super(activity);
        this.execution = false;
        this.bannersprocessing = false;
        this.storedBannersPrefix = "storedBanners";
        this.storedConfigPrefix = "storedConfig";
        this.storedBannersPrefix += str;
        this.storedConfigPrefix += str;
        initialize();
    }

    private void initialize() {
        this.storedBannersPrefix += SystemInfo.getPackageName();
        this.storedConfigPrefix += SystemInfo.getPackageName();
        this.protocolVersion = 1;
        this.serverUrl = "http://bms.zeptolab.com/feeder/csp?z";
        this.config = getStoredConfig();
        this.banners = getStoredBanners();
        if (CtrPreferences.getInstance().isFreshUpdateLaunch()) {
            removeObjects(new String[]{this.storedBannersPrefix, this.storedConfigPrefix, prefix});
        }
    }

    public void clear() {
        if (!this.execution) {
            removeObjects(new String[]{this.storedBannersPrefix, this.storedConfigPrefix, prefix});
            this.config = getStoredConfig();
            this.banners = getStoredBanners();
        }
    }

    public Banner getBanner() {
        if (!this.bannersprocessing) {
            int currentBannerID = this.config.getCurrentBannerID();
            Banner banner = (Banner) this.banners.get(Integer.valueOf(currentBannerID));
            if (isValid(banner)) {
                return banner;
            }
            this.banners.remove(Integer.valueOf(currentBannerID));
            this.config.removeBanner(currentBannerID);
        }
        return null;
    }

    public int getBoxForCrossPromo() {
        return this.config.getBoxForCrossPromo();
    }

    public int getChangeInterstitialToVideoPeriod() {
        return this.config.getChangeInterstitialToVideoPeriod();
    }

    public int getCurrentBannerID() {
        return this.config.getCurrentBannerID();
    }

    public boolean getDefaultInterstitial() {
        return this.config.getDefaultInterstitial();
    }

    public boolean getHideMainPromo() {
        return this.config.getHideMainPromo();
    }

    public boolean getHideSocialNetworks() {
        return this.config.getHideSocialNetworks();
    }

    public int getInterstitialBannersPeriod() {
        return this.config.getInterstitialBannersPeriod();
    }

    public Map getStoredBanners() {
        Object readObject = readObject(this.storedBannersPrefix);
        return readObject != null ? (Map) readObject : new TreeMap();
    }

    public RemoteConfig getStoredConfig() {
        Object readObject = readObject(this.storedConfigPrefix);
        return readObject != null ? (RemoteConfig) readObject : new RemoteConfig(AdTrackerConstants.BLANK, AdTrackerConstants.BLANK);
    }

    public int getVideoBannersCount() {
        return this.config.getVideoBannersCount();
    }

    public boolean hasSenseToRotateBanners() {
        return this.config.hasSenseToRotateBanners();
    }

    public void initWith(String str, int i, int i2) {
        if (this.execution) {
            L.e(TAG, "exeqution is true, return from initWith");
        } else {
            L.i(TAG, "initWith, App = " + str);
            this.bannerSet = i;
            this.resolution = i2;
            requestBanners(str);
        }
    }

    protected void injectSiblings(LinkBuilder linkBuilder) {
        Iterable hashSet = new HashSet();
        Iterator it = this.activity.getPackageManager().getInstalledPackages(0).iterator();
        while (it.hasNext()) {
            String str = ((PackageInfo) it.next()).packageName;
            if (!str.equals(SystemInfo.getPackageName()) && str.startsWith("com.zeptolab")) {
                String str2 = AdTrackerConstants.BLANK;
                if (str.contains("ctr")) {
                    str2 = str2 + "ctr";
                    if (str.contains("experiments")) {
                        str2 = str2 + "_exp";
                    }
                } else if (str.contains("monsters")) {
                    str2 = str2 + "monsters";
                }
                if (str.contains(NativeAdResponse.KEY_ADS)) {
                    str2 = str2 + "_free";
                }
                if (str.contains("hd")) {
                    str2 = str2 + "_hd";
                }
                if (str2.length() > 0) {
                    hashSet.add(str2);
                }
            }
        }
        linkBuilder.put("sister_apps", TextUtils.join(",", hashSet));
    }

    protected void injectSizes(LinkBuilder linkBuilder, int i) {
        int i2;
        int i3 = 0;
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                i2 = 320;
                i3 = AdException.INTERNAL_ERROR;
                break;
            case GoogleScorer.CLIENT_GAMES:
                i2 = 480;
                i3 = AdException.INVALID_REQUEST;
                break;
            case GoogleScorer.CLIENT_PLUS:
                i2 = 800;
                i3 = AdException.INVALID_APP_ID;
                break;
            default:
                i2 = 0;
                break;
        }
        linkBuilder.put("w", Integer.valueOf(i2));
        linkBuilder.put("h", Integer.valueOf(i3));
    }

    public boolean isValid(Banner banner) {
        return banner != null && banner.saved;
    }

    public void nextBanner() {
        if (!this.bannersprocessing) {
            this.config.nextBanner();
        }
    }

    protected void parseAdditionalParameters(Document document) {
    }

    public void prevBanner() {
        if (!this.bannersprocessing) {
            this.config.prevBanner();
        }
    }

    public void requestBanners(String str) {
        if (!this.execution) {
            this.execution = true;
            this.activity.runOnUiThread(new AnonymousClass_1(str));
        }
    }
}