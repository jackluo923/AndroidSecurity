public enum ba
{
  private static final ba[] d;
  private final ba.b c;
  
  static
  {
    int k = 1;
    int j = 0;
    ba localba = new ba;
    Object localObject1 = "DEFAULT";
    Object localObject2 = new ba$a;
    ((ba.a)localObject2).<init>();
    localba.<init>((String)localObject1, j, (ba.b)localObject2);
    a = localba;
    localba = new ba;
    localObject1 = "STRING";
    localObject2 = new ba$c;
    ((ba.c)localObject2).<init>();
    localba.<init>((String)localObject1, k, (ba.b)localObject2);
    b = localba;
    int i = 2;
    ba[] arrayOfba = new ba[i];
    localObject1 = a;
    arrayOfba[j] = localObject1;
    localObject1 = b;
    arrayOfba[k] = localObject1;
    d = arrayOfba;
  }
  
  private ba(ba.b paramb)
  {
    c = paramb;
  }
  
  public final ao a(Long paramLong)
  {
    Object localObject = c;
    localObject = ((ba.b)localObject).a(paramLong);
    return (ao)localObject;
  }
}

/* Location:
 * Qualified Name:     ba
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */