import java.lang.reflect.Type;
import java.math.BigDecimal;

class ab$a
  implements ay<BigDecimal>, am<BigDecimal>
{
  ab$a()
  {
    this(b);
  }
  
  private ab$a(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (BigDecimal)paramObject;
    au localau = new au;
    localau.<init>((Number)paramObject);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = a.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.a
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */