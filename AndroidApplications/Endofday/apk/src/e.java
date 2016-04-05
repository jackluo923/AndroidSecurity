import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

public final class e
{
  private String a;
  private HashMap b;
  
  public e(Bundle paramBundle)
  {
    Object localObject = "action";
    localObject = paramBundle.getString((String)localObject);
    a = ((String)localObject);
    localObject = "params";
    localObject = paramBundle.getSerializable((String)localObject);
    boolean bool = localObject instanceof HashMap;
    if (bool) {}
    for (localObject = (HashMap)localObject;; localObject = null)
    {
      b = ((HashMap)localObject);
      return;
    }
  }
  
  public e(String paramString)
  {
    a = paramString;
  }
  
  public e(String paramString, HashMap<String, String> paramHashMap)
  {
    this(paramString);
    b = paramHashMap;
  }
  
  public final Bundle a()
  {
    Bundle localBundle = new android/os/Bundle;
    localBundle.<init>();
    String str = "action";
    Object localObject = a;
    localBundle.putString(str, (String)localObject);
    str = "params";
    localObject = b;
    localBundle.putSerializable(str, (Serializable)localObject);
    return localBundle;
  }
  
  public final String b()
  {
    String str = a;
    return str;
  }
  
  public final HashMap<String, String> c()
  {
    HashMap localHashMap = b;
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     e
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */