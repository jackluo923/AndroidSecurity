package com.appyet.f;

public final class aa
{
  public static String a(String paramString)
  {
    int i = 0;
    if (paramString != null) {}
    for (;;)
    {
      int j;
      try
      {
        if (paramString.length() != 0)
        {
          j = paramString.indexOf("//");
          if (j == -1)
          {
            i = paramString.indexOf('/', i);
            if (i >= 0) {
              return paramString.substring(0, i);
            }
            i = paramString.length();
            continue;
          }
        }
        else
        {
          return "";
        }
      }
      catch (Exception paramString)
      {
        return null;
      }
      i = j + 2;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */