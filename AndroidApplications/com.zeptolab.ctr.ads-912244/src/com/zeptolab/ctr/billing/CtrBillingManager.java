package com.zeptolab.ctr.billing;

import android.app.Activity;
import android.opengl.GLSurfaceView;
import com.zeptolab.ctr.L;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;

public abstract class CtrBillingManager implements BillingInterface {
    protected Activity activity;
    protected Hashtable itemList;
    protected boolean pricesReceived;
    protected GLSurfaceView view;

    public static class ProductDescription {
        public boolean consumable;
        public String marketid;
        public boolean needIngamePrice;
        public String price;

        public ProductDescription(String str, boolean z, String str2) {
            this(str, z, str2, true);
        }

        public ProductDescription(String str, boolean z, String str2, boolean z2) {
            this.marketid = str;
            this.consumable = z;
            this.price = str2;
            this.needIngamePrice = z2;
        }
    }

    public CtrBillingManager(Activity activity, GLSurfaceView gLSurfaceView) {
        this.pricesReceived = false;
        this.activity = activity;
        this.view = gLSurfaceView;
        this.itemList = new Hashtable();
    }

    public String getKeyByValue(String str) {
        Iterator it = this.itemList.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (str.equals(((ProductDescription) entry.getValue()).marketid)) {
                return (String) entry.getKey();
            }
        }
        return null;
    }

    protected boolean isConsumable(String str) {
        Iterator it = this.itemList.entrySet().iterator();
        while (it.hasNext()) {
            ProductDescription productDescription = (ProductDescription) ((Entry) it.next()).getValue();
            if (str.equals(productDescription.marketid)) {
                return productDescription.consumable;
            }
        }
        return false;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public String price(String str) {
        ProductDescription productDescription = (ProductDescription) this.itemList.get(str);
        return productDescription != null ? productDescription.price : "0";
    }

    public boolean pricesAvailable() {
        if (this.pricesReceived) {
            L.i("CTR_BILLING_MANAGER", "Prices available");
        }
        return this.pricesReceived;
    }

    public native void purchaseCanceled(String str);

    public native void purchaseTransactionStarted(String str);

    public native void purchased(String str);

    public native void purchasedSuperpowers(String str, long j);

    protected void setPrice(String str, String str2) {
        Iterator it = this.itemList.entrySet().iterator();
        while (it.hasNext()) {
            ProductDescription productDescription = (ProductDescription) ((Entry) it.next()).getValue();
            if (str.equals(productDescription.marketid)) {
                productDescription.price = str2;
                return;
            }
        }
    }

    public native void transactionsRestored();

    public void updatePrices() {
    }

    public int value(String str) {
        return 0;
    }
}