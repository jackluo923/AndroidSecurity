package com.heyzap.house.model;

import java.util.ArrayList;
import java.util.Iterator;

public class AdCache {
    private static volatile AdCache ref;
    private ArrayList ads;

    public AdCache() {
        this.ads = new ArrayList();
    }

    private void clean() {
        Iterator it = ((ArrayList) this.ads.clone()).iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.isExpired().booleanValue()) {
                this.ads.remove(adModel);
            }
        }
    }

    public static synchronized AdCache getInstance() {
        AdCache adCache;
        synchronized (AdCache.class) {
            if (ref == null) {
                ref = new AdCache();
            }
            adCache = ref;
        }
        return adCache;
    }

    public Object clone() {
        return null;
    }

    public Boolean has(int i, String str) {
        clean();
        String normalizeTag = AdModel.normalizeTag(str);
        Iterator it = this.ads.iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.getAdUnit() == i && AdModel.normalizeTag(adModel.getTag()).equals(AdModel.normalizeTag(normalizeTag)) && !adModel.isExpired().booleanValue()) {
                return Boolean.valueOf(true);
            }
        }
        return Boolean.valueOf(false);
    }

    public Boolean has(String str) {
        clean();
        Iterator it = this.ads.iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.getImpressionId().equals(str) && !adModel.isExpired().booleanValue()) {
                return Boolean.valueOf(true);
            }
        }
        return Boolean.valueOf(false);
    }

    public AdModel peek(int i, String str) {
        clean();
        String normalizeTag = AdModel.normalizeTag(str);
        Iterator it = this.ads.iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.getAdUnit() == i && AdModel.normalizeTag(adModel.getTag()).equals(AdModel.normalizeTag(normalizeTag)) && !adModel.isExpired().booleanValue()) {
                return adModel;
            }
        }
        return null;
    }

    public AdModel peek(String str) {
        clean();
        Iterator it = this.ads.iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.getImpressionId().equals(str) && !adModel.isExpired().booleanValue()) {
                return adModel;
            }
        }
        return null;
    }

    public AdModel pop(int i, String str) {
        clean();
        String normalizeTag = AdModel.normalizeTag(str);
        Iterator it = this.ads.iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.getAdUnit() == i && AdModel.normalizeTag(adModel.getTag()).equals(AdModel.normalizeTag(normalizeTag)) && !adModel.isExpired().booleanValue()) {
                this.ads.remove(adModel);
                return adModel;
            }
        }
        return null;
    }

    public AdModel pop(String str) {
        clean();
        Iterator it = this.ads.iterator();
        while (it.hasNext()) {
            AdModel adModel = (AdModel) it.next();
            if (adModel.getImpressionId().equals(str) && !adModel.isExpired().booleanValue()) {
                this.ads.remove(adModel);
                return adModel;
            }
        }
        return null;
    }

    public void put(AdModel adModel) {
        clean();
        if (!this.ads.contains(adModel)) {
            this.ads.add(adModel);
        }
    }
}