import java.lang.reflect.Type;

final class aw
  implements av
{
  private final bh a;
  private final bk b;
  private final boolean c;
  private final bd d;
  
  aw(bh parambh, boolean paramBoolean, bk<ay<?>> parambk)
  {
    a = parambh;
    c = paramBoolean;
    b = parambk;
    bd localbd = new bd;
    localbd.<init>();
    d = localbd;
  }
  
  public final ao a(Object paramObject, Type paramType)
  {
    ao localao = b(paramObject, paramType);
    return localao;
  }
  
  public final ao b(Object paramObject, Type paramType)
  {
    Object localObject1 = a;
    Object localObject2 = new bi;
    boolean bool = true;
    ((bi)localObject2).<init>(paramObject, paramType, bool);
    bg localbg = ((bh)localObject1).a((bi)localObject2);
    localObject1 = new ax;
    localObject2 = a;
    bool = c;
    bk localbk = b;
    bd localbd = d;
    aw localaw = this;
    ((ax)localObject1).<init>((bh)localObject2, bool, localbk, localaw, localbd);
    localbg.a((bg.a)localObject1);
    localObject1 = ((ax)localObject1).b();
    return (ao)localObject1;
  }
}

/* Location:
 * Qualified Name:     aw
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */