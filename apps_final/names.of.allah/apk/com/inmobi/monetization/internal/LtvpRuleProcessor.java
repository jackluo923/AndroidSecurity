package com.inmobi.monetization.internal;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.abstraction.IGetLtvpRuleRequestListener;
import com.inmobi.monetization.internal.objects.LtvpRuleCache;
import java.util.HashMap;

public class LtvpRuleProcessor
  implements IGetLtvpRuleRequestListener
{
  private ServiceProvider a = ServiceProvider.getInstance();
  
  public static LtvpRuleProcessor getInstance()
  {
    return new LtvpRuleProcessor();
  }
  
  public void dispatchLtvpRule()
  {
    Log.internal("[InMobi]-[Monetization]", "Fetching LTVP Rule");
    GetLtvpRulesRequest localGetLtvpRulesRequest = new GetLtvpRulesRequest();
    a.getLtvpRule(localGetLtvpRulesRequest, this);
  }
  
  public LtvpRuleProcessor.ActionsRule getLtvpRuleConfig(long paramLong)
  {
    LtvpRuleProcessor.ActionsRule.MEDIATION.getValue();
    LtvpRuleCache localLtvpRuleCache = LtvpRuleCache.getInstance(InternalSDKUtil.getContext());
    if ((localLtvpRuleCache.getHardExpiryForLtvpRule() <= System.currentTimeMillis()) || (localLtvpRuleCache.getHardExpiryForLtvpRule() == 0L))
    {
      Log.internal("[InMobi]-[Monetization]", "Hard Expiry or 1st rule fetch. Default mediation. Fetching Rule");
      dispatchLtvpRule();
      localLtvpRuleCache.clearLtvpRuleCache();
      return LtvpRuleProcessor.ActionsRule.MEDIATION;
    }
    if (localLtvpRuleCache.getSoftExpiryForLtvpRule() <= System.currentTimeMillis())
    {
      Log.internal("[InMobi]-[Monetization]", "Soft Expiry. Default mediation. Fetching Rule");
      dispatchLtvpRule();
    }
    for (int i = localLtvpRuleCache.getLtvpRule(paramLong);; i = localLtvpRuleCache.getLtvpRule(paramLong))
    {
      return LtvpRuleProcessor.ActionsRule.a(i);
      Log.internal("[InMobi]-[Monetization]", "Valid rule");
    }
  }
  
  public void onLtvpGetRuleFailed(GetLtvpRulesRequest paramGetLtvpRulesRequest, LtvpErrorCode paramLtvpErrorCode)
  {
    Log.internal("[InMobi]-[Monetization]", "Ltvp Rule error" + paramLtvpErrorCode.toString());
  }
  
  public void onLtvpGetRuleSucceeded(GetLtvpRulesRequest paramGetLtvpRulesRequest, GetLtvpRulesResponse paramGetLtvpRulesResponse)
  {
    Log.internal("[InMobi]-[Monetization]", "Ltvp Rule received" + paramGetLtvpRulesResponse.getRules().toString());
    LtvpRuleCache.getInstance(InternalSDKUtil.getContext()).setLtvpRuleConfig(paramGetLtvpRulesResponse);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.LtvpRuleProcessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */