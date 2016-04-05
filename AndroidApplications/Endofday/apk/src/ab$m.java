import java.lang.reflect.Type;

class ab$m<T extends Enum<T>>
  implements ay<T>, am<T>
{
  ab$m()
  {
    this(b);
  }
  
  private ab$m(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Enum)paramObject;
    au localau = new au;
    String str = ((Enum)paramObject).name();
    localau.<init>(str);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = m.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.m
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */