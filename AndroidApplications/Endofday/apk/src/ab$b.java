import java.lang.reflect.Type;
import java.math.BigInteger;

class ab$b
  implements ay<BigInteger>, am<BigInteger>
{
  ab$b()
  {
    this(b);
  }
  
  private ab$b(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (BigInteger)paramObject;
    au localau = new au;
    localau.<init>((Number)paramObject);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = b.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.b
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */