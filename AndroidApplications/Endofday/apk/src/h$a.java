import android.net.Uri;
import android.os.AsyncTask;
import com.google.ads.AdActivity;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

final class h$a
  extends AsyncTask<String, Void, Void>
{
  private d a;
  
  public h$a(d paramd)
  {
    a = paramd;
  }
  
  private Void a(String[] paramArrayOfString)
  {
    int i = 0;
    Object localObject7 = null;
    String str2 = paramArrayOfString[i];
    Object localObject1 = Uri.parse(str2);
    String str4 = str2.toLowerCase();
    String str12 = "http://";
    boolean bool2 = str4.startsWith(str12);
    Object localObject5;
    if (!bool2)
    {
      String str5 = str2.toLowerCase();
      str12 = "https://";
      boolean bool3 = str5.startsWith(str12);
      if (!bool3)
      {
        String str6 = str2.toLowerCase();
        str12 = "tel:";
        boolean bool4 = str6.startsWith(str12);
        if (!bool4)
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          localObject5 = "http://googleads.g.doubleclick.net";
          localObject1 = ((StringBuilder)localObject1).append((String)localObject5);
          localObject1 = ((StringBuilder)localObject1).append(str2);
          localObject1 = ((StringBuilder)localObject1).toString();
          Uri.parse((String)localObject1);
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          localObject5 = "http://googleads.g.doubleclick.net";
          localObject1 = ((StringBuilder)localObject1).append((String)localObject5);
          localObject1 = ((StringBuilder)localObject1).append(str2);
        }
      }
    }
    Object localObject4;
    label272:
    label451:
    Object localObject3;
    label591:
    label596:
    for (localObject1 = ((StringBuilder)localObject1).toString();; localObject3 = localObject4)
    {
      str2 = ((String)localObject1).toLowerCase();
      localObject5 = "http://market.android.com/details";
      boolean bool1 = str2.startsWith((String)localObject5);
      if (bool1)
      {
        String str3 = "http://market.android.com/details";
        int j = str3.length();
        localObject5 = new java/lang/StringBuilder;
        ((StringBuilder)localObject5).<init>();
        str12 = "market://details";
        localObject5 = ((StringBuilder)localObject5).append(str12);
        localObject1 = ((String)localObject1).substring(j);
        localObject1 = ((StringBuilder)localObject5).append((String)localObject1);
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      localObject4 = new java/util/HashMap;
      ((HashMap)localObject4).<init>();
      localObject5 = "u";
      ((HashMap)localObject4).put(localObject5, localObject1);
      localObject1 = a;
      localObject5 = new e;
      str12 = "intent";
      ((e)localObject5).<init>(str12, (HashMap)localObject4);
      AdActivity.launchAdActivity((d)localObject1, (e)localObject5);
      for (localObject1 = localObject7;; localObject1 = localObject7)
      {
        return (Void)localObject1;
        localObject5 = ((String)localObject4).toLowerCase();
        str12 = "http://clk";
        boolean bool5 = ((String)localObject5).startsWith(str12);
        if (!bool5)
        {
          String str7 = ((String)localObject4).toLowerCase();
          str12 = "http://c.admob.com";
          boolean bool6 = str7.startsWith(str12);
          if (!bool6)
          {
            String str8 = ((String)localObject4).toLowerCase();
            str12 = "http://googleads.g.doubleclick.net/aclk";
            boolean bool7 = str8.startsWith(str12);
            if (!bool7)
            {
              String str9 = ((String)localObject4).toLowerCase();
              str12 = "http://www.googleadservices.com/pagead/aclk";
              boolean bool8 = str9.startsWith(str12);
              if (!bool8) {
                break label596;
              }
            }
          }
        }
        String str10 = ((String)localObject4).toLowerCase();
        str12 = "http://googleads.g.doubleclick.net/aclk";
        boolean bool9 = str10.startsWith(str12);
        if (!bool9) {
          break label451;
        }
        localObject1 = u.a((Uri)localObject1);
        if (localObject1 != null) {
          break;
        }
        localObject1 = "An error occurred while parsing the url parameters.";
        t.e((String)localObject1);
      }
      Object localObject6 = "ai";
      localObject1 = ((HashMap)localObject1).get(localObject6);
      localObject1 = (String)localObject1;
      localObject6 = a;
      localObject6 = ((d)localObject6).i();
      ((f)localObject6).a((String)localObject1);
      for (;;)
      {
        try
        {
          localObject1 = new java/net/URL;
          ((URL)localObject1).<init>((String)localObject4);
          localObject1 = ((URL)localObject1).openConnection();
          localObject1 = (HttpURLConnection)localObject1;
          boolean bool10 = false;
          ((HttpURLConnection)localObject1).setInstanceFollowRedirects(bool10);
          int k = ((HttpURLConnection)localObject1).getResponseCode();
          int m = 302;
          String str11;
          if (k == m)
          {
            str11 = "Location";
            localObject1 = ((HttpURLConnection)localObject1).getHeaderField(str11);
            if (localObject1 == null) {
              break label591;
            }
            Uri.parse((String)localObject1);
            localObject4 = localObject1;
            continue;
          }
          String str1 = 200;
          if (str11 != str1)
          {
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            localObject4 = "Did not get HTTP_OK response. Response: ";
            localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
            localObject2 = ((StringBuilder)localObject2).append(str11);
            localObject2 = ((StringBuilder)localObject2).toString();
            t.e((String)localObject2);
            localObject2 = localObject7;
            break label272;
          }
          Object localObject2 = localObject4;
        }
        catch (IOException localIOException)
        {
          localObject4 = "Unable to check for AdMob redirect.";
          t.b((String)localObject4, localIOException);
          localObject3 = localObject7;
        }
        break label272;
        localObject3 = localObject4;
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
 * Qualified Name:     h.a
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */