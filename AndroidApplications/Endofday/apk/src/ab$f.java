import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

final class ab$f
  implements ay<Collection>, am<Collection>
{
  ab$f()
  {
    this(b);
  }
  
  private ab$f(byte paramByte) {}
  
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Collection)paramObject;
    if (paramObject == null)
    {
      localObject1 = as.h();
      return (ao)localObject1;
    }
    Object localObject1 = new ak;
    ((ak)localObject1).<init>();
    Object localObject2 = null;
    boolean bool1 = paramType instanceof ParameterizedType;
    if (bool1)
    {
      localObject2 = new bt;
      ((bt)localObject2).<init>(paramType);
      localObject2 = ((bt)localObject2).a();
    }
    Iterator localIterator = ((Collection)paramObject).iterator();
    Object localObject3;
    for (;;)
    {
      boolean bool2 = localIterator.hasNext();
      if (!bool2) {
        break;
      }
      localObject3 = localIterator.next();
      if (localObject3 != null) {
        break label111;
      }
      localObject3 = as.h();
      ((ak)localObject1).a((ao)localObject3);
    }
    label111:
    if (localObject2 != null)
    {
      localObject4 = Object.class;
      if (localObject2 != localObject4) {
        break label156;
      }
    }
    label156:
    for (Object localObject4 = localObject3.getClass();; localObject4 = localObject2)
    {
      localObject3 = paramav.a(localObject3, (Type)localObject4);
      ((ak)localObject1).a((ao)localObject3);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ab.f
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */