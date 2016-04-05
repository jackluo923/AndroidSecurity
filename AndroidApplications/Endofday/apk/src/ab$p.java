import java.lang.reflect.Type;
import java.util.GregorianCalendar;

class ab$p
  implements ay<GregorianCalendar>, am<GregorianCalendar>
{
  ab$p()
  {
    this(b);
  }
  
  private ab$p(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (GregorianCalendar)paramObject;
    at localat = new at;
    localat.<init>();
    String str = "year";
    int i = 1;
    i = ((GregorianCalendar)paramObject).get(i);
    Integer localInteger1 = Integer.valueOf(i);
    localat.a(str, localInteger1);
    str = "month";
    int j = 2;
    j = ((GregorianCalendar)paramObject).get(j);
    Integer localInteger2 = Integer.valueOf(j);
    localat.a(str, localInteger2);
    str = "dayOfMonth";
    int k = 5;
    k = ((GregorianCalendar)paramObject).get(k);
    Integer localInteger3 = Integer.valueOf(k);
    localat.a(str, localInteger3);
    str = "hourOfDay";
    int m = 11;
    m = ((GregorianCalendar)paramObject).get(m);
    Integer localInteger4 = Integer.valueOf(m);
    localat.a(str, localInteger4);
    str = "minute";
    int n = 12;
    n = ((GregorianCalendar)paramObject).get(n);
    Integer localInteger5 = Integer.valueOf(n);
    localat.a(str, localInteger5);
    str = "second";
    int i1 = 13;
    i1 = ((GregorianCalendar)paramObject).get(i1);
    Integer localInteger6 = Integer.valueOf(i1);
    localat.a(str, localInteger6);
    return localat;
  }
  
  public String toString()
  {
    Object localObject = p.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.p
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */