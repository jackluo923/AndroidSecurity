import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class bl
  implements ParameterizedType
{
  private final Type a;
  private final Type[] b;
  private final Type c;
  
  public bl(Type paramType1, Type[] paramArrayOfType, Type paramType2)
  {
    a = paramType1;
    b = paramArrayOfType;
    c = paramType2;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool5 = true;
    boolean bool4 = false;
    boolean bool1 = paramObject instanceof ParameterizedType;
    if (!bool1) {}
    for (bool1 = bool4;; bool1 = bool5)
    {
      return bool1;
      paramObject = (ParameterizedType)paramObject;
      if (this != paramObject) {
        break;
      }
    }
    Object localObject1 = ((ParameterizedType)paramObject).getOwnerType();
    Object localObject2 = ((ParameterizedType)paramObject).getRawType();
    Type localType2 = c;
    if (localType2 == null)
    {
      if (localObject1 != null) {
        break label124;
      }
      label66:
      localObject1 = a;
      if (localObject1 != null) {
        break label130;
      }
      if (localObject2 != null) {
        break label124;
      }
    }
    for (;;)
    {
      localObject1 = b;
      localObject2 = ((ParameterizedType)paramObject).getActualTypeArguments();
      boolean bool2 = Arrays.equals((Object[])localObject1, (Object[])localObject2);
      if (bool2)
      {
        bool2 = bool5;
        break;
        localType2 = c;
        bool2 = localType2.equals(bool2);
        if (bool2) {
          break label66;
        }
      }
      label124:
      label130:
      boolean bool3;
      do
      {
        bool2 = bool4;
        break;
        Type localType1 = a;
        bool3 = localType1.equals(localObject2);
      } while (!bool3);
    }
  }
  
  public final Type[] getActualTypeArguments()
  {
    Type[] arrayOfType = b;
    return arrayOfType;
  }
  
  public final Type getOwnerType()
  {
    Type localType = c;
    return localType;
  }
  
  public final Type getRawType()
  {
    Type localType = a;
    return localType;
  }
  
  public final int hashCode()
  {
    Type localType4 = 0;
    Type[] arrayOfType = b;
    Type localType1 = Arrays.hashCode(arrayOfType);
    Type localType2 = c;
    if (localType2 == null)
    {
      localType2 = localType4;
      localType1 ^= localType2;
      localType2 = a;
      if (localType2 != null) {
        break label58;
      }
    }
    label58:
    Type localType3;
    int j;
    for (localType2 = localType4;; j = localType3.hashCode())
    {
      localType1 ^= localType2;
      return localType1;
      localType2 = c;
      int i = localType2.hashCode();
      break;
      localType3 = a;
    }
  }
}

/* Location:
 * Qualified Name:     bl
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */