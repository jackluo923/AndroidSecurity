import java.lang.reflect.Type;
import java.net.URI;

class ab$ab
  implements ay<URI>, am<URI>
{
  ab$ab()
  {
    this(b);
  }
  
  private ab$ab(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (URI)paramObject;
    au localau = new au;
    String str = ((URI)paramObject).toASCIIString();
    localau.<init>(str);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = ab.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.ab
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */