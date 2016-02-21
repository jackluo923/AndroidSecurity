package com.zeptolab.ctr.billing.google.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Inventory {
    Map mPurchaseMap;
    Map mSkuMap;

    Inventory() {
        this.mSkuMap = new HashMap();
        this.mPurchaseMap = new HashMap();
    }

    void addPurchase(Purchase purchase) {
        this.mPurchaseMap.put(purchase.getSku(), purchase);
    }

    void addSkuDetails(SkuDetails skuDetails) {
        this.mSkuMap.put(skuDetails.getSku(), skuDetails);
    }

    public void erasePurchase(String str) {
        if (this.mPurchaseMap.containsKey(str)) {
            this.mPurchaseMap.remove(str);
        }
    }

    List getAllOwnedSkus() {
        return new ArrayList(this.mPurchaseMap.keySet());
    }

    List getAllOwnedSkus(String str) {
        List arrayList = new ArrayList();
        Iterator it = this.mPurchaseMap.values().iterator();
        while (it.hasNext()) {
            Purchase purchase = (Purchase) it.next();
            if (purchase.getItemType().equals(str)) {
                arrayList.add(purchase.getSku());
            }
        }
        return arrayList;
    }

    List getAllPurchases() {
        return new ArrayList(this.mPurchaseMap.values());
    }

    public Purchase getPurchase(String str) {
        return (Purchase) this.mPurchaseMap.get(str);
    }

    public SkuDetails getSkuDetails(String str) {
        return (SkuDetails) this.mSkuMap.get(str);
    }

    public boolean hasDetails(String str) {
        return this.mSkuMap.containsKey(str);
    }

    public boolean hasPurchase(String str) {
        return this.mPurchaseMap.containsKey(str);
    }
}