package com.adsdk.sdk.data;

public enum ClickType
{
  INAPP,  BROWSER;
  
  public static ClickType getValue(String paramString)
  {
    ClickType[] arrayOfClickType = values();
    int j = arrayOfClickType.length;
    int i = 0;
    for (;;)
    {
      Object localObject;
      if (i >= j) {
        localObject = null;
      }
      ClickType localClickType;
      do
      {
        return (ClickType)localObject;
        localClickType = arrayOfClickType[i];
        localObject = localClickType;
      } while (localClickType.name().equalsIgnoreCase(paramString));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.data.ClickType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */