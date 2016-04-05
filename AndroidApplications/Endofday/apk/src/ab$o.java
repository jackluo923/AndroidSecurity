import java.lang.reflect.Type;

final class ab$o
  implements ay<Float>
{
  private final boolean a;
  
  ab$o()
  {
    boolean bool = false;
    a = bool;
  }
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Float)paramObject;
    boolean bool1 = a;
    if (!bool1)
    {
      float f1 = ((Float)paramObject).floatValue();
      boolean bool2 = Float.isNaN(f1);
      if (!bool2)
      {
        float f2 = ((Float)paramObject).floatValue();
        boolean bool3 = Float.isInfinite(f2);
        if (!bool3) {}
      }
      else
      {
        localObject1 = new java/lang/IllegalArgumentException;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject2 = ((StringBuilder)localObject2).append(paramObject);
        String str = " is not a valid float value as per JSON specification. To override this";
        localObject2 = ((StringBuilder)localObject2).append(str);
        str = " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.";
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
 * Qualified Name:     ab.o
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */