package com.inmobi.re.controller.util;

public enum NavigationStringEnum
{
  private String a;
  
  static
  {
    CLOSE = new NavigationStringEnum("CLOSE", 1, "close");
  }
  
  private NavigationStringEnum(String paramString)
  {
    a = paramString;
  }
  
  public static NavigationStringEnum fromString(String paramString)
  {
    if (paramString != null)
    {
      NavigationStringEnum[] arrayOfNavigationStringEnum = values();
      int j = arrayOfNavigationStringEnum.length;
      int i = 0;
      while (i < j)
      {
        NavigationStringEnum localNavigationStringEnum = arrayOfNavigationStringEnum[i];
        if (paramString.equalsIgnoreCase(a)) {
          return localNavigationStringEnum;
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
 * Qualified Name:     com.inmobi.re.controller.util.NavigationStringEnum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */