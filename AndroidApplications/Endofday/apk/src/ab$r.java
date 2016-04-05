import java.lang.reflect.Type;

class ab$r
  implements ay<Integer>, am<Integer>
{
  ab$r()
  {
    this(b);
  }
  
  private ab$r(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Integer)paramObject;
    au localau = new au;
    localau.<init>((Number)paramObject);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = r.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.r
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */