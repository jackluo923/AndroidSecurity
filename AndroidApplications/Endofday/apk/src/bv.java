import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

final class bv
{
  private final Type a;
  private final Type b;
  
  public bv(Type paramType)
  {
    boolean bool1 = paramType instanceof Class;
    Class localClass2;
    Class localClass1;
    if (bool1)
    {
      localClass2 = Properties.class;
      Object localObject1 = paramType;
      localObject1 = (Class)localObject1;
      Object localObject2 = localObject1;
      boolean bool2 = localClass2.isAssignableFrom((Class)localObject2);
      if (bool2)
      {
        localClass1 = String.class;
        a = localClass1;
        localClass1 = String.class;
      }
    }
    for (b = localClass1;; b = ((Type)localObject4))
    {
      return;
      boolean bool3 = paramType instanceof ParameterizedType;
      if (!bool3) {
        break;
      }
      Object localObject3 = new br;
      ((br)localObject3).<init>(paramType);
      localClass2 = Map.class;
      localObject3 = ((br)localObject3).b();
      boolean bool4 = localClass2.isAssignableFrom((Class)localObject3);
      bm.a(bool4);
      paramType = (ParameterizedType)paramType;
      localObject4 = paramType.getActualTypeArguments();
      int i = 0;
      localObject4 = localObject4[i];
      a = ((Type)localObject4);
      localObject4 = paramType.getActualTypeArguments();
      i = 1;
      localObject4 = localObject4[i];
    }
    Object localObject4 = new java/lang/IllegalArgumentException;
    String str = "Map objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType.";
    ((IllegalArgumentException)localObject4).<init>(str);
    throw ((Throwable)localObject4);
  }
  
  public final Type a()
  {
    Type localType = b;
    return localType;
  }
}

/* Location:
 * Qualified Name:     bv
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */