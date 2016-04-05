final class aa
  extends RuntimeException
{
  private final Object a;
  
  aa(Object paramObject)
  {
    super(str);
    a = paramObject;
  }
  
  public final IllegalStateException a(af paramaf)
  {
    Object localObject1 = new java/lang/StringBuilder;
    Object localObject2 = getMessage();
    ((StringBuilder)localObject1).<init>((String)localObject2);
    Object localObject3;
    if (paramaf != null)
    {
      localObject2 = "\n  ";
      localObject2 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject3 = "Offending field: ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str = paramaf.a();
      localObject3 = ((StringBuilder)localObject3).append(str);
      str = "\n";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).toString();
      ((StringBuilder)localObject2).append((String)localObject3);
    }
    localObject2 = a;
    if (localObject2 != null)
    {
      localObject2 = "\n  ";
      localObject2 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject3 = "Offending object: ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = a;
      ((StringBuilder)localObject2).append(localObject3);
    }
    localObject2 = new java/lang/IllegalStateException;
    localObject1 = ((StringBuilder)localObject1).toString();
    ((IllegalStateException)localObject2).<init>((String)localObject1, this);
    return (IllegalStateException)localObject2;
  }
}

/* Location:
 * Qualified Name:     aa
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */