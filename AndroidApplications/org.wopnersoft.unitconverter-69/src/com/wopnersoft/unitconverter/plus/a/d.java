package com.wopnersoft.unitconverter.plus.a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.a.a.a.a;
import com.actionbarsherlock.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

// compiled from: ProGuard
public class d {
    boolean a;
    String b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    String g;
    Context h;
    a i;
    ServiceConnection j;
    int k;
    String l;
    String m;
    h n;

    public d(Context context, String str) {
        this.a = false;
        this.b = "IabHelper";
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = "";
        this.m = null;
        this.h = context.getApplicationContext();
        this.m = str;
        c("IAB helper created.");
    }

    public static String a(int i) {
        String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i <= -1000) {
            int i2 = -1000 - i;
            return (i2 < 0 || i2 >= split2.length) ? new StringBuilder(String.valueOf(String.valueOf(i))).append(":Unknown IAB Helper Error").toString() : split2[i2];
        } else if (i < 0 || i >= split.length) {
            return new StringBuilder(String.valueOf(String.valueOf(i))).append(":Unknown").toString();
        } else {
            return split[i];
        }
    }

    private void c() {
        if (this.d) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    int a(Intent intent) {
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null) {
            d("Intent with no response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            d("Unexpected type for intent response code.");
            d(obj.getClass().getName());
            throw new RuntimeException(new StringBuilder("Unexpected type for intent response code: ").append(obj.getClass().getName()).toString());
        }
    }

    int a(Bundle bundle) {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            c("Bundle with null response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            d("Unexpected type for bundle response code.");
            d(obj.getClass().getName());
            throw new RuntimeException(new StringBuilder("Unexpected type for bundle response code: ").append(obj.getClass().getName()).toString());
        }
    }

    int a(l lVar, String str) {
        c(new StringBuilder("Querying owned items, item type: ").append(str).toString());
        c(new StringBuilder("Package name: ").append(this.h.getPackageName()).toString());
        String str2 = null;
        boolean z = false;
        while (true) {
            c(new StringBuilder("Calling getPurchases with continuation token: ").append(str2).toString());
            Bundle a = this.i.a((int)R.styleable.SherlockTheme_actionBarTabTextStyle, this.h.getPackageName(), str, str2);
            int a2 = a(a);
            c(new StringBuilder("Owned items response: ").append(String.valueOf(a2)).toString());
            if (a2 != 0) {
                c(new StringBuilder("getPurchases() failed: ").append(a(a2)).toString());
                return a2;
            } else {
                if (a.containsKey("INAPP_PURCHASE_ITEM_LIST") && a.containsKey("INAPP_PURCHASE_DATA_LIST") && a.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                    ArrayList stringArrayList = a.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                    ArrayList stringArrayList2 = a.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                    ArrayList stringArrayList3 = a.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                    int i = 0;
                    boolean z2 = z;
                    while (i < stringArrayList2.size()) {
                        str2 = (String) stringArrayList2.get(i);
                        String str3 = (String) stringArrayList3.get(i);
                        String str4 = (String) stringArrayList.get(i);
                        if (n.a(this.m, str2, str3)) {
                            c(new StringBuilder("Sku is owned: ").append(str4).toString());
                            m mVar = new m(str, str2, str3);
                            if (TextUtils.isEmpty(mVar.d())) {
                                e("BUG: empty/null token!");
                                c(new StringBuilder("Purchase data: ").append(str2).toString());
                            }
                            lVar.a(mVar);
                        } else {
                            e("Purchase signature verification **FAILED**. Not adding item.");
                            c(new StringBuilder("   Purchase data: ").append(str2).toString());
                            c(new StringBuilder("   Signature: ").append(str3).toString());
                            z2 = 1;
                        }
                        i++;
                    }
                    str2 = a.getString("INAPP_CONTINUATION_TOKEN");
                    c(new StringBuilder("Continuation token: ").append(str2).toString());
                    if (!TextUtils.isEmpty(str2)) {
                        int i2 = i;
                    } else if (i != 0) {
                        return -1003;
                    } else {
                        return 0;
                    }
                }
                d("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            }
        }
    }

    int a(String str, l lVar, List list) {
        c("Querying SKU details.");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(lVar.b(str));
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            c("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        } else {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
            bundle = this.i.a((int)R.styleable.SherlockTheme_actionBarTabTextStyle, this.h.getPackageName(), str, bundle);
            if (bundle.containsKey("DETAILS_LIST")) {
                Iterator it2 = bundle.getStringArrayList("DETAILS_LIST").iterator();
                while (it2.hasNext()) {
                    o oVar = new o(str, (String) it2.next());
                    c(new StringBuilder("Got sku details: ").append(oVar).toString());
                    lVar.a(oVar);
                }
                return 0;
            } else {
                int a = a(bundle);
                if (a != 0) {
                    c(new StringBuilder("getSkuDetails() failed: ").append(a(a)).toString());
                    return a;
                } else {
                    d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return -1002;
                }
            }
        }
    }

    public l a(boolean z, List list) {
        return a(z, list, null);
    }

    public l a(boolean z, List list, List list2) {
        c();
        a("queryInventory");
        try {
            l lVar = new l();
            int a = a(lVar, "inapp");
            if (a != 0) {
                throw new c(a, "Error refreshing inventory (querying owned items).");
            }
            if (z) {
                a = a("inapp", lVar, list);
                if (a != 0) {
                    throw new c(a, "Error refreshing inventory (querying prices of items).");
                }
            }
            if (this.e) {
                a = a(lVar, "subs");
                if (a != 0) {
                    throw new c(a, "Error refreshing inventory (querying owned subscriptions).");
                } else if (z) {
                    a = a("subs", lVar, list);
                    if (a != 0) {
                        throw new c(a, "Error refreshing inventory (querying prices of subscriptions).");
                    }
                }
            }
            return lVar;
        } catch (RemoteException e) {
            throw new c(-1001, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new c(-1002, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    public void a() {
        c("Disposing.");
        this.c = false;
        if (this.j != null) {
            c("Unbinding from service.");
            try {
                if (this.h != null) {
                    this.h.unbindService(this.j);
                }
            } catch (Exception e) {
                Log.d("IabHelper.Dispose", "error disposing IabHelper");
            }
        }
        this.d = true;
        this.h = null;
        this.j = null;
        this.i = null;
        this.n = null;
    }

    public void a(Activity activity, String str, int i, h hVar, String str2) {
        a(activity, str, "inapp", i, hVar, str2);
    }

    public void a(Activity activity, String str, String str2, int i, h hVar, String str3) {
        k kVar;
        c();
        a("launchPurchaseFlow");
        b("launchPurchaseFlow");
        if (!str2.equals("subs") || this.e) {
            try {
                c(new StringBuilder("Constructing buy intent for ").append(str).append(", item type: ").append(str2).toString());
                Bundle a = this.i.a(R.styleable.SherlockTheme_actionBarTabTextStyle, this.h.getPackageName(), str, str2, str3);
                int a2 = a(a);
                if (a2 != 0) {
                    d(new StringBuilder("Unable to buy item, Error response: ").append(a(a2)).toString());
                    b();
                    kVar = new k(a2, "Unable to buy item");
                    if (hVar != null) {
                        hVar.a(kVar, null);
                    }
                } else {
                    PendingIntent pendingIntent = (PendingIntent) a.getParcelable("BUY_INTENT");
                    c(new StringBuilder("Launching buy intent for ").append(str).append(". Request code: ").append(i).toString());
                    this.k = i;
                    this.n = hVar;
                    this.l = str2;
                    activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
                }
            } catch (SendIntentException e) {
                SendIntentException sendIntentException = e;
                d(new StringBuilder("SendIntentException while launching purchase flow for sku ").append(str).toString());
                sendIntentException.printStackTrace();
                b();
                kVar = new k(-1004, "Failed to send intent.");
                if (hVar != null) {
                    hVar.a(kVar, null);
                }
            } catch (RemoteException e2) {
                RemoteException remoteException = e2;
                d(new StringBuilder("RemoteException while launching purchase flow for sku ").append(str).toString());
                remoteException.printStackTrace();
                b();
                kVar = new k(-1001, "Remote exception while starting purchase flow");
                if (hVar != null) {
                    hVar.a(kVar, null);
                }
            }
        } else {
            kVar = new k(-1009, "Subscriptions are not available.");
            b();
            if (hVar != null) {
                hVar.a(kVar, null);
            }
        }
    }

    public void a(i iVar) {
        c();
        if (this.c) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        c("Starting in-app billing setup.");
        this.j = new e(this, iVar);
        try {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            if (!this.h.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
                this.h.bindService(intent, this.j, 1);
            } else if (iVar != null) {
                iVar.a(new k(3, "Billing service unavailable on device."));
            }
        } catch (Exception e) {
            Log.d("IabHelper", "Billing service unavailable on device.");
        }
    }

    public void a(j jVar) {
        a(true, null, jVar);
    }

    void a(String str) {
        if (!this.c) {
            d(new StringBuilder("Illegal state for operation (").append(str).append("): IAB helper is not set up.").toString());
            throw new IllegalStateException(new StringBuilder("IAB helper is not set up. Can't perform operation: ").append(str).toString());
        }
    }

    public void a(boolean z) {
        c();
        this.a = z;
    }

    public void a(boolean z, List list, j jVar) {
        Handler handler = new Handler();
        c();
        a("queryInventory");
        b("refresh inventory");
        new Thread(new f(this, z, list, jVar, handler)).start();
    }

    public boolean a(int i, int i2, Intent intent) {
        if (i != this.k) {
            return false;
        }
        c();
        a("handleActivityResult");
        b();
        k kVar;
        if (intent == null) {
            d("Null data in IAB activity result.");
            kVar = new k(-1002, "Null data in IAB result");
            if (this.n != null) {
                this.n.a(kVar, null);
            }
            return true;
        } else {
            int a = a(intent);
            String stringExtra = intent.getStringExtra("INAPP_PURCHASE_DATA");
            String stringExtra2 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
            if (i2 == -1 && a == 0) {
                c("Successful resultcode from purchase activity.");
                c(new StringBuilder("Purchase data: ").append(stringExtra).toString());
                c(new StringBuilder("Data signature: ").append(stringExtra2).toString());
                c(new StringBuilder("Extras: ").append(intent.getExtras()).toString());
                c(new StringBuilder("Expected item type: ").append(this.l).toString());
                if (stringExtra == null || stringExtra2 == null) {
                    d("BUG: either purchaseData or dataSignature is null.");
                    c(new StringBuilder("Extras: ").append(intent.getExtras().toString()).toString());
                    kVar = new k(-1008, "IAB returned null purchaseData or dataSignature");
                    if (this.n != null) {
                        this.n.a(kVar, null);
                    }
                    return true;
                } else {
                    try {
                        m mVar = new m(this.l, stringExtra, stringExtra2);
                        String b = mVar.b();
                        if (n.a(this.m, stringExtra, stringExtra2)) {
                            c("Purchase signature successfully verified.");
                            if (this.n != null) {
                                this.n.a(new k(0, "Success"), mVar);
                            }
                        } else {
                            d(new StringBuilder("Purchase signature verification FAILED for sku ").append(b).toString());
                            kVar = new k(-1003, new StringBuilder("Signature verification failed for sku ").append(b).toString());
                            if (this.n != null) {
                                this.n.a(kVar, mVar);
                            }
                            return true;
                        }
                    } catch (JSONException e) {
                        JSONException jSONException = e;
                        d("Failed to parse purchase data.");
                        jSONException.printStackTrace();
                        kVar = new k(-1002, "Failed to parse purchase data.");
                        if (this.n != null) {
                            this.n.a(kVar, null);
                        }
                        return true;
                    }
                }
            } else if (i2 == -1) {
                c(new StringBuilder("Result code was OK but in-app billing response was not OK: ").append(a(a)).toString());
                if (this.n != null) {
                    this.n.a(new k(a, "Problem purchashing item."), null);
                }
            } else if (i2 == 0) {
                c(new StringBuilder("Purchase canceled - Response: ").append(a(a)).toString());
                kVar = new k(-1005, "User canceled.");
                if (this.n != null) {
                    this.n.a(kVar, null);
                }
            } else {
                d(new StringBuilder("Purchase failed. Result code: ").append(Integer.toString(i2)).append(". Response: ").append(a(a)).toString());
                kVar = new k(-1006, "Unknown purchase response.");
                if (this.n != null) {
                    this.n.a(kVar, null);
                }
            }
            return true;
        }
    }

    void b() {
        c(new StringBuilder("Ending async operation: ").append(this.g).toString());
        this.g = "";
        this.f = false;
    }

    void b(String str) {
        if (this.f) {
            throw new IllegalStateException(new StringBuilder("Can't start async operation (").append(str).append(") because another async operation(").append(this.g).append(") is in progress.").toString());
        }
        this.g = str;
        this.f = true;
        c(new StringBuilder("Starting async operation: ").append(str).toString());
    }

    void c(String str) {
        if (this.a) {
            Log.d(this.b, str);
        }
    }

    void d_(String str) {
        Log.e(this.b, new StringBuilder("In-app billing error: ").append(str).toString());
    }

    void e(String str) {
        Log.w(this.b, new StringBuilder("In-app billing warning: ").append(str).toString());
    }
}