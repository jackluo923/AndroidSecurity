import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class bw
{
  static Class<?> a(Class<?> paramClass)
  {
    int i = 0;
    Object localObject = Array.newInstance(paramClass, i);
    localObject = localObject.getClass();
    return (Class<?>)localObject;
  }
  
  static boolean a(Type paramType)
  {
    boolean bool = paramType instanceof Class;
    if (bool)
    {
      paramType = (Class)paramType;
      bool = paramType.isArray();
    }
    for (;;)
    {
      return bool;
      bool = paramType instanceof GenericArrayType;
      if (bool) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  static Class<?> b(Type paramType)
  {
    for (;;)
    {
      boolean bool1 = paramType instanceof Class;
      if (bool1) {
        paramType = (Class)paramType;
      }
      Object localObject1;
      for (Type localType1 = paramType;; localObject1 = a((Class)localObject1))
      {
        return localType1;
        boolean bool2 = paramType instanceof ParameterizedType;
        if (bool2)
        {
          paramType = (ParameterizedType)paramType;
          Type localType2 = paramType.getRawType();
          paramType = localType2;
          break;
        }
        boolean bool3 = paramType instanceof GenericArrayType;
        if (!bool3) {
          break label79;
        }
        paramType = (GenericArrayType)paramType;
        localObject1 = paramType.getGenericComponentType();
        localObject1 = b((Type)localObject1);
      }
      label79:
      boolean bool4 = paramType instanceof WildcardType;
      if (!bool4) {
        break;
      }
      paramType = (WildcardType)paramType;
      localObject2 = paramType.getUpperBounds();
      int i = 0;
      localObject2 = localObject2[i];
      paramType = (Type)localObject2;
    }
    Object localObject2 = new java/lang/IllegalArgumentException;
    Object localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    String str = "Type '";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).append(paramType);
    str = "' is not a Class, ";
    localObject3 = ((StringBuilder)localObject3).append(str);
    str = "ParameterizedType, or GenericArrayType. Can't extract class.";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).toString();
    ((IllegalArgumentException)localObject2).<init>((String)localObject3);
    throw ((Throwable)localObject2);
  }
}

/* Location:
 * Qualified Name:     bw
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */