package com.inmobi.monetization.internal;

public enum LtvpRuleProcessor$ActionsRule
{
  int a;
  
  static
  {
    ACTIONS_TO_MEDIATION = new ActionsRule("ACTIONS_TO_MEDIATION", 2, 2);
  }
  
  private LtvpRuleProcessor$ActionsRule(int paramInt)
  {
    a = paramInt;
  }
  
  static ActionsRule a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return MEDIATION;
    case 1: 
      return NO_ADS;
    case 2: 
      return ACTIONS_TO_MEDIATION;
    }
    return ACTIONS_ONLY;
  }
  
  public final int getValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */