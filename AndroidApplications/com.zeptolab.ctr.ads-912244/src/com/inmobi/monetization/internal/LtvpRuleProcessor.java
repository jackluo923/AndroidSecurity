package com.inmobi.monetization.internal;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.abstraction.IGetLtvpRuleRequestListener;
import com.inmobi.monetization.internal.objects.LtvpRuleCache;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class LtvpRuleProcessor implements IGetLtvpRuleRequestListener {
    private ServiceProvider a;

    public enum ActionsRule {
        MEDIATION(0),
        NO_ADS(1),
        ACTIONS_TO_MEDIATION(2),
        ACTIONS_ONLY(3);
        int a;

        static {
            MEDIATION = new com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule("MEDIATION", 0, 0);
            NO_ADS = new com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule("NO_ADS", 1, 1);
            ACTIONS_TO_MEDIATION = new com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule("ACTIONS_TO_MEDIATION", 2, 2);
            ACTIONS_ONLY = new com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule("ACTIONS_ONLY", 3, 3);
            b = new com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule[]{MEDIATION, NO_ADS, ACTIONS_TO_MEDIATION, ACTIONS_ONLY};
        }

        private ActionsRule(int i) {
            this.a = i;
        }

        static com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule a(int i) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    return NO_ADS;
                case GoogleScorer.CLIENT_PLUS:
                    return ACTIONS_TO_MEDIATION;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return ACTIONS_ONLY;
                default:
                    return MEDIATION;
            }
        }

        public int getValue() {
            return this.a;
        }
    }

    private LtvpRuleProcessor() {
        this.a = ServiceProvider.getInstance();
    }

    public static LtvpRuleProcessor getInstance() {
        return new LtvpRuleProcessor();
    }

    public void dispatchLtvpRule() {
        Log.internal(Constants.LOG_TAG, "Fetching LTVP Rule");
        this.a.getLtvpRule(new GetLtvpRulesRequest(), this);
    }

    public ActionsRule getLtvpRuleConfig(long j) {
        ActionsRule.MEDIATION.getValue();
        LtvpRuleCache instance = LtvpRuleCache.getInstance(InternalSDKUtil.getContext());
        if (instance.getHardExpiryForLtvpRule() <= System.currentTimeMillis() || instance.getHardExpiryForLtvpRule() == 0) {
            Log.internal(Constants.LOG_TAG, "Hard Expiry or 1st rule fetch. Default mediation. Fetching Rule");
            dispatchLtvpRule();
            instance.clearLtvpRuleCache();
            return ActionsRule.MEDIATION;
        } else {
            int ltvpRule;
            if (instance.getSoftExpiryForLtvpRule() <= System.currentTimeMillis()) {
                Log.internal(Constants.LOG_TAG, "Soft Expiry. Default mediation. Fetching Rule");
                dispatchLtvpRule();
                ltvpRule = instance.getLtvpRule(j);
            } else {
                Log.internal(Constants.LOG_TAG, "Valid rule");
                ltvpRule = instance.getLtvpRule(j);
            }
            return ActionsRule.a(ltvpRule);
        }
    }

    public void onLtvpGetRuleFailed(GetLtvpRulesRequest getLtvpRulesRequest, LtvpErrorCode ltvpErrorCode) {
        Log.internal(Constants.LOG_TAG, "Ltvp Rule error" + ltvpErrorCode.toString());
    }

    public void onLtvpGetRuleSucceeded(GetLtvpRulesRequest getLtvpRulesRequest, GetLtvpRulesResponse getLtvpRulesResponse) {
        Log.internal(Constants.LOG_TAG, "Ltvp Rule received" + getLtvpRulesResponse.getRules().toString());
        LtvpRuleCache.getInstance(InternalSDKUtil.getContext()).setLtvpRuleConfig(getLtvpRulesResponse);
    }
}