package com.zeptolab.ctr.operatortracker;

import android.app.Activity;
import android.telephony.TelephonyManager;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class OperatorTracker {
    protected String TAG;
    protected Activity context;
    protected TelephonyManager mTelephonyManager;
    protected String nameKey;
    protected int operatorState;
    protected List operators;
    protected String popupKey;
    protected String prefKey;

    public OperatorTracker(Activity activity) {
        this.TAG = "OperatorTracker";
        this.prefKey = "OPERATOR_STATE";
        this.popupKey = "NEED_OPERATOR_BONUS_POPUP";
        this.nameKey = "OPERATOR_NAME";
        this.context = activity;
        this.mTelephonyManager = (TelephonyManager) this.context.getSystemService(ZBuildConfig.device);
        this.operatorState = CtrPreferences.getInstance().getIntForKey(this.prefKey, 0);
        this.operators = new ArrayList();
        L.d(this.TAG, "OperatorTracker created");
    }

    public void addOperator(OperatorIdentifier operatorIdentifier) {
        this.operators.add(operatorIdentifier);
    }

    public int getState() {
        return this.operatorState;
    }

    public void track() {
        if (this.operatorState != 0) {
            L.d(this.TAG, "Operator has already tracked");
        } else {
            L.d(this.TAG, "Start Operator tracking");
            int phoneType = this.mTelephonyManager.getPhoneType();
            int simState = this.mTelephonyManager.getSimState();
            L.d(this.TAG, "Phone Type = " + phoneType);
            L.d(this.TAG, "Sim State = " + simState);
            if (phoneType == 0 || simState == 0 || simState == 1) {
                L.d(this.TAG, "Can't detect operator");
            } else {
                String str;
                boolean z;
                this.operatorState = -1;
                String networkOperator = this.mTelephonyManager.getNetworkOperator();
                String networkOperatorName = this.mTelephonyManager.getNetworkOperatorName();
                L.d(this.TAG, "Operator code = " + networkOperator);
                L.d(this.TAG, "Operator name = " + networkOperatorName);
                Iterator it = this.operators.iterator();
                while (it.hasNext()) {
                    OperatorIdentifier operatorIdentifier = (OperatorIdentifier) it.next();
                    if (networkOperator.equals(operatorIdentifier.opCode) && operatorIdentifier.opNameList.contains(networkOperatorName)) {
                        this.operatorState = 1;
                        networkOperatorName = operatorIdentifier.opTag;
                        L.d(this.TAG, "Operator " + operatorIdentifier.opTag + " detected");
                        str = networkOperatorName;
                        break;
                    }
                }
                str = networkOperatorName;
                CtrPreferences instance = CtrPreferences.getInstance();
                String str2 = this.popupKey;
                z = this.operatorState == 1 && !instance.getBooleanForKey("IAP_BANNERS");
                instance.setBooleanforKey(str2, z, false);
                instance.setStringforKey(this.nameKey, str, false);
                instance.setIntforKey(this.prefKey, this.operatorState, true);
                L.d(this.TAG, "OperatorTracker state " + this.operatorState);
            }
        }
    }
}