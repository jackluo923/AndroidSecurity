import android.os.AsyncTask;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class w
  extends AsyncTask<String, Void, Void>
{
  private static Void a(String[] paramArrayOfString)
  {
    Void localVoid = null;
    int i = 0;
    String str1 = paramArrayOfString[i];
    for (;;)
    {
      if (str1 != null) {
        try
        {
          URL localURL = new java/net/URL;
          localURL.<init>(str1);
          paramArrayOfString = localURL.openConnection();
          paramArrayOfString = (HttpURLConnection)paramArrayOfString;
          boolean bool = true;
          paramArrayOfString.setInstanceFollowRedirects(bool);
          int j = paramArrayOfString.getResponseCode();
          int k = 302;
          Object localObject;
          if (j == k)
          {
            localObject = "Location";
            localObject = paramArrayOfString.getHeaderField((String)localObject);
          }
          else
          {
            localObject = localVoid;
          }
        }
        catch (IOException localIOException)
        {
          String str2 = "Unable to check for redirect.";
          t.b(str2, localIOException);
        }
      }
    }
    return localVoid;
  }
  
  protected final Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    Void localVoid = a(paramArrayOfObject);
    return localVoid;
  }
}

/* Location:
 * Qualified Name:     w
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */