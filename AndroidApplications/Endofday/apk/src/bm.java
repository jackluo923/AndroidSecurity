final class bm
{
  public static void a(Object paramObject)
  {
    if (paramObject != null) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str = "condition failed: ";
      localObject = ((StringBuilder)localObject).append(str);
      localObject = ((StringBuilder)localObject).append(paramBoolean);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException.<init>((String)localObject);
      throw localIllegalArgumentException;
    }
  }
}

/* Location:
 * Qualified Name:     bm
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */