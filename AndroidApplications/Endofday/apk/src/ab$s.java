import java.lang.reflect.Type;
import java.util.Locale;

class ab$s
  implements ay<Locale>, am<Locale>
{
  ab$s()
  {
    this(b);
  }
  
  private ab$s(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Locale)paramObject;
    au localau = new au;
    String str = ((Locale)paramObject).toString();
    localau.<init>(str);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = s.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.s
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */