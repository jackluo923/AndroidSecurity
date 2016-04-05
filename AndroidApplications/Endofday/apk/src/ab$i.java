import java.lang.reflect.Type;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

final class ab$i
  implements ay<Time>, am<Time>
{
  private final DateFormat a;
  
  ab$i()
  {
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    String str = "hh:mm:ss a";
    localSimpleDateFormat.<init>(str);
    a = localSimpleDateFormat;
  }
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Time)paramObject;
    ao localao = a((Time)paramObject);
    return localao;
  }
  
  private ao a(Time paramTime)
  {
    synchronized (a)
    {
      Object localObject1 = a;
      localObject1 = ((DateFormat)localObject1).format(paramTime);
      au localau = new au;
      localau.<init>((String)localObject1);
      return localau;
    }
  }
}

/* Location:
 * Qualified Name:     ab.i
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */