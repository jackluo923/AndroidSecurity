import java.lang.reflect.Type;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

final class ab$h
  implements ay<Date>, am<Date>
{
  private final DateFormat a;
  
  ab$h()
  {
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    String str = "MMM d, yyyy";
    localSimpleDateFormat.<init>(str);
    a = localSimpleDateFormat;
  }
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Date)paramObject;
    ao localao = a((Date)paramObject);
    return localao;
  }
  
  private ao a(Date paramDate)
  {
    synchronized (a)
    {
      Object localObject1 = a;
      localObject1 = ((DateFormat)localObject1).format(paramDate);
      au localau = new au;
      localau.<init>((String)localObject1);
      return localau;
    }
  }
}

/* Location:
 * Qualified Name:     ab.h
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */