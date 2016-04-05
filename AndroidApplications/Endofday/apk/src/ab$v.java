import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ab$v
  implements ay<Map>, am<Map>
{
  public final ao a(Object paramObject, Type paramType, av paramav)
  {
    paramObject = (Map)paramObject;
    at localat = new at;
    localat.<init>();
    Object localObject1 = null;
    boolean bool1 = paramType instanceof ParameterizedType;
    if (bool1)
    {
      localObject1 = new bv;
      ((bv)localObject1).<init>(paramType);
      localObject1 = ((bv)localObject1).a();
    }
    Object localObject2 = ((Map)paramObject).entrySet();
    localObject2 = ((Set)localObject2).iterator();
    Object localObject3;
    for (;;)
    {
      boolean bool2 = ((Iterator)localObject2).hasNext();
      if (!bool2) {
        break label171;
      }
      this = ((Iterator)localObject2).next();
      this = (Map.Entry)this;
      localObject3 = getValue();
      if (localObject3 != null) {
        break;
      }
      localObject3 = as.h();
      localObject4 = getKey();
      localObject4 = String.valueOf(localObject4);
      localat.a((String)localObject4, (ao)localObject3);
    }
    if (localObject1 == null) {}
    for (Object localObject4 = localObject3.getClass();; localObject4 = localObject1)
    {
      localObject3 = paramav.a(localObject3, (Type)localObject4);
      break;
    }
    label171:
    return localat;
  }
  
  public String toString()
  {
    Object localObject = v.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     ab.v
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */