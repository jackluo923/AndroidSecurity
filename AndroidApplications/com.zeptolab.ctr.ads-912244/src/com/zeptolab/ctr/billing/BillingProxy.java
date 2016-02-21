package com.zeptolab.ctr.billing;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class BillingProxy implements BillingInterface {
    protected String DEFAULT;
    protected Set bills;
    protected Map rules;

    public BillingProxy(CtrBillingManager ctrBillingManager) {
        this.DEFAULT = "___DEFAULT___";
        this.rules = new HashMap();
        this.bills = new HashSet();
        addRule(this.DEFAULT, ctrBillingManager);
    }

    public void addRule(String str, CtrBillingManager ctrBillingManager) {
        this.rules.put(str, ctrBillingManager);
        this.bills.add(ctrBillingManager);
    }

    public boolean available() {
        return true;
    }

    public void onDestroy() {
        Iterator it = this.bills.iterator();
        while (it.hasNext()) {
            ((CtrBillingManager) it.next()).onDestroy();
        }
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
        Iterator it = this.bills.iterator();
        while (it.hasNext()) {
            ((CtrBillingManager) it.next()).onStart();
        }
    }

    public String price(String str) {
        CtrBillingManager ctrBillingManager = (CtrBillingManager) this.rules.get(str);
        if (ctrBillingManager == null) {
            ctrBillingManager = (CtrBillingManager) this.rules.get(this.DEFAULT);
        }
        return ctrBillingManager.price(str);
    }

    public boolean pricesAvailable() {
        Iterator it = this.bills.iterator();
        while (it.hasNext()) {
            if (!((CtrBillingManager) it.next()).pricesAvailable()) {
                return false;
            }
        }
        return true;
    }

    public void purchase(String str) {
        CtrBillingManager ctrBillingManager = (CtrBillingManager) this.rules.get(str);
        if (ctrBillingManager == null) {
            ctrBillingManager = (CtrBillingManager) this.rules.get(this.DEFAULT);
        }
        ctrBillingManager.purchase(str);
    }

    public void restoreTransactions(boolean z) {
        Iterator it = this.bills.iterator();
        while (it.hasNext()) {
            ((CtrBillingManager) it.next()).restoreTransactions(z);
        }
    }

    public void updatePrices() {
        Iterator it = this.bills.iterator();
        while (it.hasNext()) {
            CtrBillingManager ctrBillingManager = (CtrBillingManager) it.next();
            if (!ctrBillingManager.pricesAvailable()) {
                ctrBillingManager.updatePrices();
            }
        }
    }

    public int value(String str) {
        CtrBillingManager ctrBillingManager = (CtrBillingManager) this.rules.get(str);
        if (ctrBillingManager == null) {
            ctrBillingManager = (CtrBillingManager) this.rules.get(this.DEFAULT);
        }
        return ctrBillingManager.value(str);
    }
}