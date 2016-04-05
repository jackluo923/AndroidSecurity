import java.lang.reflect.Type;
import java.util.UUID;

class ab$ad
  implements ay<UUID>, am<UUID>
{
  ab$ad()
  {
    this(b);
  }
  
  private ab$ad(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (UUID)paramObject;
    au localau = new au;
    String str = ((UUID)paramObject).toString();
    localau.<init>(str);
    return localau;
  }
  
  public String toString()
  {
    Object localObject = ad.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.ad
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */