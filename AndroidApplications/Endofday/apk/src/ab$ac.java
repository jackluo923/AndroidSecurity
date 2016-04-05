import java.lang.reflect.Type;
import java.net.URL;

class ab$ac
  implements ay<URL>, am<URL>
{
  ab$ac()
  {
    this(b);
  }
  
  private ab$ac(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (URL)paramObject;
    au localau = new au;
    String str = ((URL)paramObject).toExternalForm();
    localau.<init>(str);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = ac.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.ac
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */