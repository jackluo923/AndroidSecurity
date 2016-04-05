import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class bs
  extends br
{
  private final Class c;
  private final Type d;
  
  bs(Type paramType)
  {
    super(paramType);
    for (Object localObject = b;; localObject = ((Class)localObject).getComponentType())
    {
      boolean bool1 = ((Class)localObject).isArray();
      if (!bool1) {
        break;
      }
    }
    c = ((Class)localObject);
    localObject = a;
    Class localClass = b;
    boolean bool2 = localObject instanceof GenericArrayType;
    if (bool2) {
      localObject = (GenericArrayType)localObject;
    }
    for (localObject = ((GenericArrayType)localObject).getGenericComponentType();; localObject = localClass.getComponentType())
    {
      d = ((Type)localObject);
      return;
    }
  }
  
  public final Type d()
  {
    Type localType = d;
    return localType;
  }
}

/* Location:
 * Qualified Name:     bs
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */