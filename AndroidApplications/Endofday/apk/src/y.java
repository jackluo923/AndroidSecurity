final class y
  implements ae
{
  public final boolean a(af paramaf)
  {
    Class localClass = paramaf.c();
    boolean bool = b(localClass);
    return bool;
  }
  
  public final boolean a(Class<?> paramClass)
  {
    boolean bool = b(paramClass);
    return bool;
  }
  
  private static boolean b(Class<?> paramClass)
  {
    boolean bool = paramClass.isAnonymousClass();
    if (!bool)
    {
      bool = paramClass.isLocalClass();
      if (!bool) {
        break label23;
      }
    }
    label23:
    for (bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     y
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */