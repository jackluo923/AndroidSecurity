import com.google.gson.InstanceCreator;
import java.util.logging.Logger;

final class bc
{
  private static final Logger a;
  private final bk b;
  
  static
  {
    Object localObject = bc.class;
    localObject = ((Class)localObject).getName();
    localObject = Logger.getLogger((String)localObject);
    a = (Logger)localObject;
  }
  
  public bc(bk<InstanceCreator<?>> parambk)
  {
    b = parambk;
  }
  
  public final String toString()
  {
    Object localObject = b;
    localObject = ((bk)localObject).toString();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     bc
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */