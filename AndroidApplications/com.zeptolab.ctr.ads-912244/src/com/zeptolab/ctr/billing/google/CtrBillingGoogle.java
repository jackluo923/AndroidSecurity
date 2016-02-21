package com.zeptolab.ctr.billing.google;

import android.app.Activity;
import android.content.Intent;
import com.brightcove.player.event.EventType;
import com.inmobi.monetization.internal.NativeAdResponse;
import com.zeptolab.ctr.AndroidUI;
import com.zeptolab.ctr.CtrView;
import com.zeptolab.ctr.L;
import com.zeptolab.ctr.billing.CtrBillingManager;
import com.zeptolab.ctr.billing.CtrBillingManager.ProductDescription;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper.OnConsumeFinishedListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper.OnIabPurchaseFinishedListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper.OnIabSetupFinishedListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper.QueryInventoryFinishedListener;
import com.zeptolab.ctr.billing.google.utils.IabResult;
import com.zeptolab.ctr.billing.google.utils.Inventory;
import com.zeptolab.ctr.billing.google.utils.Purchase;
import com.zeptolab.ctr.billing.google.utils.SkuDetails;
import com.zeptolab.utils.SystemInfo;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public class CtrBillingGoogle extends CtrBillingManager {
    protected static final int RC_REQUEST = 10001;
    protected static String TAG;
    protected static String TEST_PURCHASE_CANCELED;
    protected static String TEST_PURCHASE_SUCCEDED;
    protected IabHelper billingHelper;
    OnConsumeFinishedListener consumeFinishedListener;
    protected volatile boolean isBusy;
    OnIabPurchaseFinishedListener purchaseFinishedListener;
    QueryInventoryFinishedListener queryInventroryFinishedListener;
    protected boolean supported;

    class AnonymousClass_5 implements Runnable {
        final /* synthetic */ String val$sku;

        AnonymousClass_5(String str) {
            this.val$sku = str;
        }

        public void run() {
            try {
                L.i(TAG, "Item purchased is: " + this.val$sku);
                CtrBillingGoogle.this.purchased(CtrBillingGoogle.this.getKeyByValue(this.val$sku));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    class AnonymousClass_6 implements Runnable {
        final /* synthetic */ String val$item;

        AnonymousClass_6(String str) {
            this.val$item = str;
        }

        public void run() {
            CtrBillingGoogle.this.purchaseTransactionStarted(this.val$item);
        }
    }

    class AnonymousClass_7 implements Runnable {
        final /* synthetic */ String val$item;

        AnonymousClass_7(String str) {
            this.val$item = str;
        }

        public void run() {
            try {
                Thread.sleep(100);
                L.i(TAG, "launchPurchaseFlow");
                CtrBillingGoogle.this.billingHelper.launchPurchaseFlow(CtrBillingGoogle.this.activity, ((ProductDescription) CtrBillingGoogle.this.itemList.get(this.val$item)).marketid, RC_REQUEST, CtrBillingGoogle.this.purchaseFinishedListener);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    class AnonymousClass_9 implements Runnable {
        final /* synthetic */ List val$list;

        AnonymousClass_9(List list) {
            this.val$list = list;
        }

        public void run() {
            try {
                CtrBillingGoogle.this.billingHelper.queryInventoryAsync(true, this.val$list, CtrBillingGoogle.this.queryInventroryFinishedListener);
                L.i(TAG, "Transactions restored");
                CtrBillingGoogle.this.restored();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    static {
        TAG = "CtrBillingGoogle";
        TEST_PURCHASE_SUCCEDED = "android.test.purchased";
        TEST_PURCHASE_CANCELED = "android.test.canceled";
    }

    public CtrBillingGoogle(Activity activity, CtrView ctrView) {
        super(activity, ctrView);
        this.supported = false;
        this.billingHelper = null;
        this.isBusy = false;
        this.queryInventroryFinishedListener = new QueryInventoryFinishedListener() {
            public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
                L.i(TAG, "Query Inventory Finished");
                if (iabResult.isFailure()) {
                    L.i(TAG, "Query Inventory Finished Failed " + iabResult);
                    CtrBillingGoogle.this.isBusy = false;
                    CtrBillingGoogle.this.pricesReceived = false;
                } else {
                    Iterator it = CtrBillingGoogle.this.itemList.entrySet().iterator();
                    while (it.hasNext()) {
                        ProductDescription productDescription = (ProductDescription) ((Entry) it.next()).getValue();
                        SkuDetails skuDetails = inventory.getSkuDetails(productDescription.marketid);
                        if (skuDetails == null) {
                            L.i(TAG, "Not Founded Details for " + productDescription.marketid);
                        } else {
                            CtrBillingGoogle.this.setPrice(productDescription.marketid, skuDetails.getPrice());
                            L.i(TAG, "New price for " + productDescription.marketid + " = " + skuDetails.getPrice());
                            Purchase purchase = inventory.getPurchase(productDescription.marketid);
                            if (purchase == null) {
                                L.i(TAG, "Not Founded Purchase " + productDescription.marketid);
                            } else if (productDescription.consumable || productDescription.marketid == TEST_PURCHASE_SUCCEDED) {
                                L.i(TAG, "consumeAsync in restore purchases, marketId == " + productDescription.marketid);
                                CtrBillingGoogle.this.billingHelper.consumeAsync(purchase, CtrBillingGoogle.this.consumeFinishedListener);
                            } else {
                                L.i(TAG, "doNativePurchase in restore purchases, marketId == " + productDescription.marketid);
                                CtrBillingGoogle.this.doNativePurchase(productDescription.marketid);
                            }
                        }
                    }
                    CtrBillingGoogle.this.isBusy = false;
                    CtrBillingGoogle.this.pricesReceived = true;
                    L.i(TAG, "Prices received");
                }
            }
        };
        this.consumeFinishedListener = new OnConsumeFinishedListener() {
            public void onConsumeFinished(Purchase purchase, IabResult iabResult) {
                L.i(TAG, "Consume Finished");
                if (iabResult.isFailure()) {
                    L.i(TAG, "Consume Finished Failed" + purchase);
                } else {
                    CtrBillingGoogle.this.doNativePurchase(purchase.getSku());
                }
            }
        };
        this.purchaseFinishedListener = new OnIabPurchaseFinishedListener() {
            public void onIabPurchaseFinished(IabResult iabResult, Purchase purchase) {
                L.i(TAG, "Purchase Finished");
                if (iabResult.isFailure()) {
                    L.i(TAG, "Purchase Finished Failed " + purchase);
                } else if (CtrBillingGoogle.this.isConsumable(purchase.getSku()) || purchase.getSku() == TEST_PURCHASE_SUCCEDED) {
                    CtrBillingGoogle.this.billingHelper.consumeAsync(purchase, CtrBillingGoogle.this.consumeFinishedListener);
                } else {
                    CtrBillingGoogle.this.doNativePurchase(purchase.getSku());
                }
            }
        };
        if (SystemInfo.getPackageName().contains("experiments")) {
            if (SystemInfo.getPackageName().contains(NativeAdResponse.KEY_ADS)) {
                this.itemList.put("unlockBoxes", new ProductDescription("ctrexpfree_star_key", false, "0"));
                this.itemList.put("disableBanners", new ProductDescription("ctr_exp_full_version", false, "0"));
                this.itemList.put("unlockBox3", new ProductDescription("ctrexpfree_unlock_stickysteps", false, "0", false));
                this.itemList.put("unlockBox4", new ProductDescription("ctrexpfree_unlock_rocketscience", false, "0", false));
                this.itemList.put("unlockBox5", new ProductDescription("ctrexpfree_unlock_bathtime", false, "0", false));
                this.itemList.put("unlockBox6", new ProductDescription("ctrexpfree_unlock_handycandy", false, "0", false));
                this.itemList.put("unlockBox7", new ProductDescription("ctrexpfree_unlock_anthill", false, "0", false));
                this.itemList.put("unlockBox8", new ProductDescription("ctrexpfree_unlock_bamboochutes", false, "0", false));
            } else {
                this.itemList.put("unlockBoxes", new ProductDescription("ctrexp_star_key", false, "0"));
                this.itemList.put("unlockBox3", new ProductDescription("ctr_exp_unlock_stickysteps", false, "0", false));
                this.itemList.put("unlockBox4", new ProductDescription("ctr_exp_unlock_rocketscience", false, "0", false));
                this.itemList.put("unlockBox5", new ProductDescription("ctr_exp_unlock_bathtime", false, "0", false));
                this.itemList.put("unlockBox6", new ProductDescription("ctr_exp_unlock_handycandy", false, "0", false));
                this.itemList.put("unlockBox7", new ProductDescription("ctr_exp_unlock_anthill", false, "0", false));
                this.itemList.put("unlockBox8", new ProductDescription("ctr_exp_unlock_bamboochutes", false, "0", false));
            }
            this.itemList.put("superpower1", new ProductDescription("ctr_exp_sp1", true, "0"));
            this.itemList.put("superpower2", new ProductDescription("ctr_exp_sp2", true, "0"));
            this.itemList.put("superpower3", new ProductDescription("ctr_exp_sp3", true, "0"));
            this.itemList.put("superpower4", new ProductDescription("ctr_exp_sp4", true, "0"));
            this.itemList.put("superpowerunlimited", new ProductDescription("ctr_exp_sp5", false, "5"));
        } else {
            if (SystemInfo.getPackageName().contains(NativeAdResponse.KEY_ADS)) {
                this.itemList.put("disableBanners", new ProductDescription("ctr_full_version", false, "0"));
            }
            this.itemList.put("unlockBoxes", new ProductDescription("star_key", false, "0"));
            this.itemList.put("unlockThirdSeason", new ProductDescription("ctr_season3", false, "0"));
            this.itemList.put("superpower1", new ProductDescription("ctr_sp1", true, "0"));
            this.itemList.put("superpower2", new ProductDescription("ctr_sp2", true, "0"));
            this.itemList.put("superpower3", new ProductDescription("ctr_sp3", true, "0"));
            this.itemList.put("superpower4", new ProductDescription("ctr_sp4", true, "0"));
            this.itemList.put("hint1", new ProductDescription("ctr_hints1", true, "0"));
            this.itemList.put("hint2", new ProductDescription("ctr_hints2", true, "0"));
            this.itemList.put("hint3", new ProductDescription("ctr_hints3", true, "0"));
            this.itemList.put("hint4", new ProductDescription("ctr_hints4", true, "0"));
            this.itemList.put("unlockBox1", new ProductDescription("ctr_cardboard", false, "0", false));
            this.itemList.put("unlockBox2", new ProductDescription("ctr_fabric", false, "0", false));
            this.itemList.put("unlockBox3", new ProductDescription("ctr_foil", false, "0", false));
            this.itemList.put("unlockBox4", new ProductDescription("ctr_magic", false, "0", false));
            this.itemList.put("unlockBox5", new ProductDescription("ctr_valentine", false, "0", false));
            this.itemList.put("unlockBox6", new ProductDescription("ctr_gift", false, "0", false));
            this.itemList.put("unlockBox7", new ProductDescription("ctr_cosmic", false, "0", false));
            this.itemList.put("unlockBox8", new ProductDescription("ctr_toy", false, "0", false));
            this.itemList.put("unlockBox9", new ProductDescription("ctr_toolbox", false, "0", false));
            this.itemList.put("unlockBox10", new ProductDescription("ctr_buzz", false, "0", false));
            this.itemList.put("unlockBox11", new ProductDescription("ctr_dj", false, "0", false));
            this.itemList.put("unlockBox12", new ProductDescription("ctr_spooky", false, "0", false));
            this.itemList.put("unlockBox13", new ProductDescription("ctr_steam", false, "0", false));
            this.itemList.put("unlockBox14", new ProductDescription("ctr_lantern", false, "0", false));
            this.itemList.put("unlockBox15", new ProductDescription("ctr_cheese", false, "0", false));
            this.itemList.put("unlockBox16", new ProductDescription("ctr_pillow", false, "0", false));
            this.itemList.put("superpowerunlimited", new ProductDescription("ctr_sp5", false, "0"));
            this.itemList.put("hintunlimited", new ProductDescription("ctr_hints5", false, "0"));
        }
        String str = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAog8NL79ND2hEeUv1XlL7TiScLGut/r5VnpVOos99M8lPITMm56qUe0QCk8UGU/ET+i8OJC1KtTyASFa9KE6T6PqBd53k17MemxTr8I0kRXBLQtfpEcVKRGIAQXoM/8uioCkbDP5i2jh7gZbYEWaF7/3xey10DgOngXfmMBVQH99ikzUud6E+CtKkhoi62r27XfHzVJQxzrn0xIWJ6p00y6tC1/M0mPrk/R5PtF99t1xzS/kC3lGZpto0RleJKzQYlo9AfFWFxoz64i8J/2w26g7Slo5y0Qo475U4/6h0rgBMCihqAn0xiJqQQe77+/bF8jag95e7K/dBoiM61nN2hQIDAQAB";
        L.i(TAG, "Constructor");
        this.billingHelper = new IabHelper(activity, str);
        this.billingHelper.enableDebugLogging(ZBuildConfig.target.contains(EventType.DEBUG));
        this.isBusy = false;
        this.pricesReceived = false;
        this.billingHelper.startSetup(new OnIabSetupFinishedListener() {
            public void onIabSetupFinished(IabResult iabResult) {
                CtrBillingGoogle.this.supported = iabResult.isSuccess();
                if (CtrBillingGoogle.this.supported) {
                    L.i(TAG, "Setup Finished");
                } else {
                    L.i(TAG, "Problem setting up in-app billing: " + iabResult);
                }
            }
        });
    }

    public boolean available() {
        return this.supported;
    }

    public void doNativePurchase(String str) {
        this.view.queueEvent(new AnonymousClass_5(str));
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        return this.billingHelper != null ? this.billingHelper.handleActivityResult(i, i2, intent) : false;
    }

    public void onDestroy() {
        if (this.billingHelper != null) {
            this.billingHelper.dispose();
        }
    }

    public void purchase(String str) {
        L.i(TAG, "Starting a Purchase");
        if (!ZBuildConfig.target.contains(EventType.DEBUG) || ZBuildConfig.target.contains("optimized")) {
            this.view.queueEvent(new AnonymousClass_6(str));
            if (available() && this.itemList.containsKey(str)) {
                this.activity.runOnUiThread(new AnonymousClass_7(str));
            } else {
                L.i(TAG, "Can't purchase on this device");
                this.activity.runOnUiThread(new Runnable() {
                    public void run() {
                        AndroidUI.buildAlert(CtrBillingGoogle.this.activity, "Cut the Rope", "Sorry, but billing not available for your device", "OK", null).show();
                    }
                });
            }
        } else {
            purchased(str);
        }
    }

    public void restoreTransactions(boolean z) {
        if (this.billingHelper == null || !available()) {
            restored();
        } else {
            L.i(TAG, "Restore Transactions");
            this.isBusy = true;
            List arrayList = new ArrayList();
            Iterator it = this.itemList.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (((ProductDescription) entry.getValue()).needIngamePrice) {
                    arrayList.add(((ProductDescription) entry.getValue()).marketid);
                }
            }
            this.activity.runOnUiThread(new AnonymousClass_9(arrayList));
        }
    }

    public void restored() {
        this.view.queueEvent(new Runnable() {
            public void run() {
                CtrBillingGoogle.this.transactionsRestored();
            }
        });
    }

    public void updatePrices() {
        if (!this.isBusy && this.supported) {
            restoreTransactions(true);
        }
    }
}