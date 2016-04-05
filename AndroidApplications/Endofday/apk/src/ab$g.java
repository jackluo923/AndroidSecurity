import java.lang.reflect.Type;
import java.text.DateFormat;
import java.util.Date;

class ab$g
  implements ay<Date>, am<Date>
{
  private final DateFormat a;
  
  ab$g()
  {
    DateFormat localDateFormat = DateFormat.getDateTimeInstance();
    a = localDateFormat;
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
  
  public String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = g.class;
    localObject2 = ((Class)localObject2).getSimpleName();
    ((StringBuilder)localObject1).append((String)localObject2);
    char c1 = '(';
    StringBuilder localStringBuilder = ((StringBuilder)localObject1).append(c1);
    Object localObject3 = a;
    localObject3 = localObject3.getClass();
    localObject3 = ((Class)localObject3).getSimpleName();
    localStringBuilder = localStringBuilder.append((String)localObject3);
    char c2 = ')';
    localStringBuilder.append(c2);
    localObject1 = ((StringBuilder)localObject1).toString();
    return (String)localObject1;
  }
}

/* Location:
 * Qualified Name:     ab.g
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */