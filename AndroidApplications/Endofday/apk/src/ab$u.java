import java.lang.reflect.Type;

class ab$u
  implements ay<Long>
{
  private final ba a;
  
  ab$u(ba paramba)
  {
    this(paramba, b);
  }
  
  private ab$u(ba paramba, byte paramByte)
  {
    a = paramba;
  }
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Long)paramObject;
    Object localObject = a;
    localObject = ((ba)localObject).a((Long)paramObject);
    return (ao)localObject;
  }
  
  public String toString()
  {
    Object localObject = u.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.u
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */