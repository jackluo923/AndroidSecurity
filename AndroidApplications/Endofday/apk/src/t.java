import android.util.Log;

public final class t
{
  public static void a(String paramString)
  {
    String str1 = "Ads";
    int i = 3;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.d(str2, paramString);
    }
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    String str1 = "Ads";
    int i = 6;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.e(str2, paramString, paramThrowable);
    }
  }
  
  private static boolean a(String paramString, int paramInt)
  {
    int j = 1;
    boolean bool2 = false;
    int i = 5;
    if (paramInt >= i)
    {
      i = j;
      if (i == 0)
      {
        bool1 = Log.isLoggable(paramString, paramInt);
        if (!bool1) {
          break label40;
        }
      }
    }
    label40:
    for (boolean bool1 = j;; bool1 = bool2)
    {
      return bool1;
      bool1 = bool2;
      break;
    }
  }
  
  public static void b(String paramString)
  {
    String str1 = "Ads";
    int i = 6;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.e(str2, paramString);
    }
  }
  
  public static void b(String paramString, Throwable paramThrowable)
  {
    String str1 = "Ads";
    int i = 5;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.w(str2, paramString, paramThrowable);
    }
  }
  
  public static void c(String paramString)
  {
    String str1 = "Ads";
    int i = 4;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.i(str2, paramString);
    }
  }
  
  public static void d(String paramString)
  {
    String str1 = "Ads";
    int i = 2;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.v(str2, paramString);
    }
  }
  
  public static void e(String paramString)
  {
    String str1 = "Ads";
    int i = 5;
    boolean bool = a(str1, i);
    if (bool)
    {
      String str2 = "Ads";
      Log.w(str2, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     t
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */