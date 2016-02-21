package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.internal.GetLtvpRulesRequest;
import com.inmobi.monetization.internal.GetLtvpRulesResponse;
import com.inmobi.monetization.internal.LtvpErrorCode;

public interface IGetLtvpRuleRequestListener {
    void onLtvpGetRuleFailed(GetLtvpRulesRequest getLtvpRulesRequest, LtvpErrorCode ltvpErrorCode);

    void onLtvpGetRuleSucceeded(GetLtvpRulesRequest getLtvpRulesRequest, GetLtvpRulesResponse getLtvpRulesResponse);
}