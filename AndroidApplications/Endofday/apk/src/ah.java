import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class ah
  implements GenericArrayType
{
  private final Type a;
  
  public ah(Type paramType)
  {
    a = paramType;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool3 = false;
    boolean bool1 = paramObject instanceof GenericArrayType;
    if (!bool1) {
      bool1 = bool3;
    }
    for (;;)
    {
      return bool1;
      paramObject = (GenericArrayType)paramObject;
      Type localType1 = ((GenericArrayType)paramObject).getGenericComponentType();
      Type localType2 = a;
      boolean bool2;
      if (localType2 == null)
      {
        if (localType1 == null) {
          bool2 = true;
        } else {
          bool2 = bool3;
        }
      }
      else
      {
        localType2 = a;
        bool2 = localType2.equals(bool2);
      }
    }
  }
  
  public final Type getGenericComponentType()
  {
    Type localType = a;
    return localType;
  }
  
  public final int hashCode()
  {
    Type localType1 = a;
    if (localType1 == null) {}
    Type localType2;
    int j;
    for (int i = 0;; j = localType2.hashCode())
    {
      return i;
      localType2 = a;
    }
  }
}

/* Location:
 * Qualified Name:     ah
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */