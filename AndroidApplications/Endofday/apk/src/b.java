import android.os.AsyncTask;
import com.google.ads.AdRequest.ErrorCode;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.StringTokenizer;

public final class b
  extends AsyncTask<String, Void, Void>
{
  private c a;
  private d b;
  private String c;
  
  b(c paramc, d paramd, String paramString)
  {
    a = paramc;
    b = paramd;
    c = paramString;
  }
  
  private Void a(String[] paramArrayOfString)
  {
    int i = 0;
    localObject8 = null;
    Object localObject1 = paramArrayOfString[i];
    localObject4 = localObject1;
    for (;;)
    {
      try
      {
        localObject1 = new java/net/URL;
        ((URL)localObject1).<init>((String)localObject4);
        localObject1 = ((URL)localObject1).openConnection();
        localObject1 = (HttpURLConnection)localObject1;
        String str1 = "User-Agent";
        String str2 = c;
        ((HttpURLConnection)localObject1).setRequestProperty(str1, str2);
        boolean bool = false;
        ((HttpURLConnection)localObject1).setInstanceFollowRedirects(bool);
        ((HttpURLConnection)localObject1).connect();
        j = ((HttpURLConnection)localObject1).getResponseCode();
        m = 302;
        if (j != m) {
          continue;
        }
        localObject4 = "Location";
        localObject4 = ((HttpURLConnection)localObject1).getHeaderField((String)localObject4);
        if (localObject4 != null) {
          continue;
        }
        localObject1 = "Could not get redirect location from a 302 redirect.";
        t.c((String)localObject1);
        localObject1 = a;
        localObject4 = AdRequest.ErrorCode.INTERNAL_ERROR;
        ((c)localObject1).a((AdRequest.ErrorCode)localObject4);
        localObject1 = localObject8;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        int j;
        localObject4 = "Received malformed ad url from javascript.";
        t.a((String)localObject4, localMalformedURLException);
        Object localObject2 = a;
        localObject4 = AdRequest.ErrorCode.INTERNAL_ERROR;
        ((c)localObject2).a((AdRequest.ErrorCode)localObject4);
        localObject2 = localObject8;
        continue;
        int m = 200;
        if (j == m) {
          continue;
        }
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject4 = "Invalid response code: ";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
        localObject2 = ((StringBuilder)localObject2).append(j);
        localObject2 = ((StringBuilder)localObject2).toString();
        t.c((String)localObject2);
        localObject2 = a;
        localObject4 = AdRequest.ErrorCode.INTERNAL_ERROR;
        ((c)localObject2).a((AdRequest.ErrorCode)localObject4);
        localObject2 = localObject8;
        continue;
        a((HttpURLConnection)localObject2);
        b((HttpURLConnection)localObject2);
        c((HttpURLConnection)localObject2);
        localObject2 = ((HttpURLConnection)localObject2).getInputStream();
        localObject5 = new java/io/BufferedReader;
        localObject7 = new java/io/InputStreamReader;
        ((InputStreamReader)localObject7).<init>((InputStream)localObject2);
        ((BufferedReader)localObject5).<init>((Reader)localObject7);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject7 = ((BufferedReader)localObject5).readLine();
        if (localObject7 == null) {
          continue;
        }
        ((StringBuilder)localObject2).append((String)localObject7);
        localObject7 = "\n";
        ((StringBuilder)localObject2).append((String)localObject7);
        continue;
      }
      catch (IOException localIOException)
      {
        localObject4 = "IOException connecting to ad url.";
        t.b((String)localObject4, localIOException);
        Object localObject3 = a;
        localObject4 = AdRequest.ErrorCode.NETWORK_ERROR;
        ((c)localObject3).a((AdRequest.ErrorCode)localObject4);
        localObject3 = localObject8;
        continue;
        localObject3 = ((StringBuilder)localObject3).toString();
        Object localObject5 = new java/lang/StringBuilder;
        ((StringBuilder)localObject5).<init>();
        Object localObject7 = "Response content is: ";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject7);
        localObject5 = ((StringBuilder)localObject5).append((String)localObject3);
        localObject5 = ((StringBuilder)localObject5).toString();
        t.a((String)localObject5);
        if (localObject3 == null) {
          continue;
        }
        localObject5 = ((String)localObject3).trim();
        int k = ((String)localObject5).length();
        if (k > 0) {
          continue;
        }
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        Object localObject6 = "Response message is null or zero length: ";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject6);
        localObject3 = ((StringBuilder)localObject4).append((String)localObject3);
        localObject3 = ((StringBuilder)localObject3).toString();
        t.c((String)localObject3);
        localObject3 = a;
        localObject4 = AdRequest.ErrorCode.NO_FILL;
        ((c)localObject3).a((AdRequest.ErrorCode)localObject4);
        localObject3 = localObject8;
        continue;
        localObject6 = a;
        ((c)localObject6).a((String)localObject3, (String)localObject4);
        localObject3 = localObject8;
        continue;
      }
      return (Void)localObject1;
      a((HttpURLConnection)localObject1);
      b((HttpURLConnection)localObject1);
      c((HttpURLConnection)localObject1);
    }
  }
  
  private void a(HttpURLConnection paramHttpURLConnection)
  {
    String str1 = "X-Afma-Tracking-Urls";
    str1 = paramHttpURLConnection.getHeaderField(str1);
    if (str1 != null)
    {
      StringTokenizer localStringTokenizer = new java/util/StringTokenizer;
      localStringTokenizer.<init>(str1);
      for (;;)
      {
        boolean bool = localStringTokenizer.hasMoreTokens();
        if (!bool) {
          break;
        }
        String str2 = localStringTokenizer.nextToken();
        d locald = b;
        locald.a(str2);
      }
    }
  }
  
  private void b(HttpURLConnection paramHttpURLConnection)
  {
    String str = "X-Afma-Refresh-Rate";
    str = paramHttpURLConnection.getHeaderField(str);
    if (str != null)
    {
      float f = Float.parseFloat(str);
      d locald3 = b;
      locald3.a(f);
      d locald1 = b;
      boolean bool = locald1.l();
      if (!bool)
      {
        d locald2 = b;
        locald2.a();
      }
    }
  }
  
  private void c(HttpURLConnection paramHttpURLConnection)
  {
    Object localObject = "X-Afma-Orientation";
    localObject = paramHttpURLConnection.getHeaderField((String)localObject);
    if (localObject != null)
    {
      String str1 = "portrait";
      int i = ((String)localObject).equals(str1);
      if (i == 0) {
        break label40;
      }
      localObject = b;
      i = 1;
      ((d)localObject).a(i);
    }
    for (;;)
    {
      return;
      label40:
      String str2 = "landscape";
      boolean bool = ((String)localObject).equals(str2);
      if (bool)
      {
        d locald = b;
        int j = 0;
        locald.a(j);
      }
    }
  }
  
  protected final Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (String[])paramArrayOfObject;
    Void localVoid = a(paramArrayOfObject);
    return localVoid;
  }
}

/* Location:
 * Qualified Name:     b
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */