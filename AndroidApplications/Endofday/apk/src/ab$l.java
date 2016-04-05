import java.lang.reflect.Type;

final class ab$l
  implements ay<Double>
{
  private final boolean a;
  
  ab$l()
  {
    boolean bool = false;
    a = bool;
  }
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Double)paramObject;
    boolean bool1 = a;
    if (!bool1)
    {
      double d1 = ((Double)paramObject).doubleValue();
      boolean bool2 = Double.isNaN(d1);
      if (!bool2)
      {
        double d2 = ((Double)paramObject).doubleValue();
        boolean bool3 = Double.isInfinite(d2);
        if (!bool3) {}
      }
      else
      {
        localObject1 = new java/lang/IllegalArgumentException;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject2 = ((StringBuilder)localObject2).append(paramObject);
        String str = " is not a valid double value as per JSON specification. To override this";
        localObject2 = ((StringBuilder)localObject2).append(str);
        str = " behavior, use GsonBuilder.serializeSpecialDoubleValues() method.";
        localObject2 = ((StringBuilder)localObject2).append(str);
        localObject2 = ((StringBuilder)localObject2).toString();
        ((IllegalArgumentException)localObject1).<init>((String)localObject2);
        throw ((Throwable)localObject1);
      }
    }
    Object localObject1 = new au;
    ((au)localObject1).<init>((Number)paramObject);
    return (ao)localObject1;
  }
}

/* Location:
 * Qualified Name:     ab.l
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */