import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class aq
{
  private static final Pattern a;
  
  static
  {
    Object localObject = "(^[a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$)|(^[\\$_][a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$)";
    localObject = Pattern.compile((String)localObject);
    a = (Pattern)localObject;
  }
  
  public static String a(String paramString)
  {
    bm.a(paramString);
    String str1 = "";
    Object localObject2 = paramString.trim();
    boolean bool1 = str1.equals(localObject2);
    if (!bool1) {}
    int i;
    for (bool1 = true;; i = 0)
    {
      bm.a(bool1);
      Object localObject1 = a;
      localObject1 = ((Pattern)localObject1).matcher(paramString);
      boolean bool2 = ((Matcher)localObject1).matches();
      if (bool2) {
        break;
      }
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject2 = ((StringBuilder)localObject2).append(paramString);
      String str2 = " is not a valid JSON field name.";
      localObject2 = ((StringBuilder)localObject2).append(str2);
      localObject2 = ((StringBuilder)localObject2).toString();
      localIllegalArgumentException.<init>((String)localObject2);
      throw localIllegalArgumentException;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     aq
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */