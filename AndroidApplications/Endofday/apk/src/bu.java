import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

final class bu
{
  public static br a(Field paramField, Type paramType)
  {
    Object localObject1 = bw.b(paramType);
    Object localObject2 = paramField.getGenericType();
    localObject1 = a((Type)localObject2, paramType, (Class)localObject1);
    localObject2 = new br;
    ((br)localObject2).<init>((Type)localObject1);
    return (br)localObject2;
  }
  
  private static Type a(Type paramType1, Type paramType2, Class<?> paramClass)
  {
    int n = 0;
    for (;;)
    {
      boolean bool1 = paramType1 instanceof Class;
      Type localType1;
      if (bool1) {
        localType1 = paramType1;
      }
      bl localbl;
      for (;;)
      {
        return localType1;
        boolean bool2 = paramType1 instanceof ParameterizedType;
        Object localObject5;
        if (bool2)
        {
          paramType1 = (ParameterizedType)paramType1;
          Object localObject1 = paramType1.getOwnerType();
          localObject5 = paramType1.getActualTypeArguments();
          bm.a(localObject5);
          int k = localObject5.length;
          Type[] arrayOfType = new Type[k];
          for (;;)
          {
            int i1 = localObject5.length;
            if (n >= i1) {
              break;
            }
            Type localType4 = localObject5[n];
            localType4 = a(localType4, paramType2, paramClass);
            arrayOfType[n] = localType4;
            n += 1;
          }
          localObject5 = paramType1.getRawType();
          localbl = new bl;
          localbl.<init>((Type)localObject5, arrayOfType, (Type)localObject1);
          localObject1 = localbl;
        }
        else
        {
          boolean bool3 = paramType1 instanceof GenericArrayType;
          if (!bool3) {
            break;
          }
          paramType1 = (GenericArrayType)paramType1;
          Type localType2 = paramType1.getGenericComponentType();
          localObject5 = a(localType2, paramType2, paramClass);
          boolean bool4 = localType2.equals(localObject5);
          if (bool4)
          {
            Type localType3 = paramType1;
          }
          else
          {
            boolean bool5 = localObject5 instanceof Class;
            Object localObject2;
            if (bool5)
            {
              localObject2 = bw.b((Type)localObject5);
              localObject2 = bw.a((Class)localObject2);
            }
            else
            {
              localObject2 = new ah;
              ((ah)localObject2).<init>((Type)localObject5);
            }
          }
        }
      }
      boolean bool6 = paramType1 instanceof TypeVariable;
      if (bool6)
      {
        bool6 = paramType2 instanceof ParameterizedType;
        if (bool6)
        {
          paramType1 = (TypeVariable)paramType1;
          localObject3 = paramClass.getTypeParameters();
          paramType2 = (ParameterizedType)paramType2;
          int i = localbl;
          for (;;)
          {
            int m = localObject3.length;
            if (i >= m) {
              break label309;
            }
            Object localObject7 = localObject3[i];
            boolean bool8 = paramType1.equals(localObject7);
            if (bool8)
            {
              localObject3 = paramType2.getActualTypeArguments();
              localObject3 = localObject3[i];
              break;
            }
            int j;
            i += 1;
          }
          label309:
          localObject3 = new java/lang/IllegalStateException;
          localObject6 = "How can the type variable not be present in the class declaration!";
          ((IllegalStateException)localObject3).<init>((String)localObject6);
          throw ((Throwable)localObject3);
        }
        Object localObject3 = new java/lang/UnsupportedOperationException;
        localObject6 = new java/lang/StringBuilder;
        ((StringBuilder)localObject6).<init>();
        str = "Expecting parameterized type, got ";
        localObject6 = ((StringBuilder)localObject6).append(str);
        localObject6 = ((StringBuilder)localObject6).append(paramType2);
        str = ".\n Are you missing the use of TypeToken idiom?\n See ";
        localObject6 = ((StringBuilder)localObject6).append(str);
        str = "http://sites.google.com/site/gson/gson-user-guide#TOC-Serializing-and-Deserializing-Gener";
        localObject6 = ((StringBuilder)localObject6).append(str);
        localObject6 = ((StringBuilder)localObject6).toString();
        ((UnsupportedOperationException)localObject3).<init>((String)localObject6);
        throw ((Throwable)localObject3);
      }
      boolean bool7 = paramType1 instanceof WildcardType;
      if (!bool7) {
        break;
      }
      paramType1 = (WildcardType)paramType1;
      localObject4 = paramType1.getUpperBounds();
      localObject4 = localObject4[localbl];
      paramType1 = (Type)localObject4;
    }
    Object localObject4 = new java/lang/IllegalArgumentException;
    Object localObject6 = new java/lang/StringBuilder;
    ((StringBuilder)localObject6).<init>();
    String str = "Type '";
    localObject6 = ((StringBuilder)localObject6).append(str);
    localObject6 = ((StringBuilder)localObject6).append(paramType1);
    str = "' is not a Class, ";
    localObject6 = ((StringBuilder)localObject6).append(str);
    str = "ParameterizedType, GenericArrayType or TypeVariable. Can't extract type.";
    localObject6 = ((StringBuilder)localObject6).append(str);
    localObject6 = ((StringBuilder)localObject6).toString();
    ((IllegalArgumentException)localObject4).<init>((String)localObject6);
    throw ((Throwable)localObject4);
  }
}

/* Location:
 * Qualified Name:     bu
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */