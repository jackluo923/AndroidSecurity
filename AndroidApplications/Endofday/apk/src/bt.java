import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;

final class bt
{
  private final ParameterizedType a;
  
  public bt(Type paramType)
  {
    boolean bool1 = paramType instanceof ParameterizedType;
    if (!bool1)
    {
      localObject1 = new java/lang/IllegalArgumentException;
      localObject2 = "Collection objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType.";
      ((IllegalArgumentException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    Object localObject1 = new br;
    ((br)localObject1).<init>(paramType);
    Object localObject2 = Collection.class;
    localObject1 = ((br)localObject1).b();
    boolean bool2 = ((Class)localObject2).isAssignableFrom((Class)localObject1);
    bm.a(bool2);
    paramType = (ParameterizedType)paramType;
    a = paramType;
  }
  
  public final Type a()
  {
    Object localObject = a;
    localObject = ((ParameterizedType)localObject).getActualTypeArguments();
    int i = 0;
    localObject = localObject[i];
    return (Type)localObject;
  }
}

/* Location:
 * Qualified Name:     bt
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */