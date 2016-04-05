import java.lang.reflect.Type;

class ab$d
  implements ay<Byte>, am<Byte>
{
  ab$d()
  {
    this(b);
  }
  
  private ab$d(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Byte)paramObject;
    au localau = new au;
    localau.<init>((Number)paramObject);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = d.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.d
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */