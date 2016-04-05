package com.inmobi.re.controller.util;

public enum TransitionStringEnum
{
  private String a;
  
  private TransitionStringEnum(String paramString)
  {
    a = paramString;
  }
  
  public static TransitionStringEnum fromString(String paramString)
  {
    if (paramString != null)
    {
      TransitionStringEnum[] arrayOfTransitionStringEnum = values();
      int j = arrayOfTransitionStringEnum.length;
      int i = 0;
      while (i < j)
      {
        TransitionStringEnum localTransitionStringEnum = arrayOfTransitionStringEnum[i];
        if (paramString.equalsIgnoreCase(a)) {
          return localTransitionStringEnum;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public final String getText()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.util.TransitionStringEnum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */