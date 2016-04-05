package mobi.monaca.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA1Util
{
  public static String toHashedString(String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance("SHA-1").digest(paramString.getBytes());
      StringBuilder localStringBuilder = new StringBuilder();
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(String.format("%02x", new Object[] { Byte.valueOf(paramString[i]) }));
        i += 1;
      }
      paramString = localStringBuilder.toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.SHA1Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */