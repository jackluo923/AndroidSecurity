import android.app.Activity;
import android.content.Context;
import android.webkit.WebView;
import android.widget.VideoView;
import com.google.ads.AdActivity;
import java.util.HashMap;

public final class s
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    int k = 0;
    String str1 = "action";
    this = paramHashMap.get(str1);
    this = (String)this;
    boolean bool1 = paramWebView instanceof g;
    Object localObject1;
    if (bool1)
    {
      paramWebView = (g)paramWebView;
      localObject1 = paramWebView.b();
      if (localObject1 != null) {
        break label69;
      }
      localObject1 = "Could not get adActivity to create the video.";
      t.a((String)localObject1);
    }
    for (;;)
    {
      return;
      localObject1 = "Could not get adWebView to create the video.";
      t.a((String)localObject1);
      continue;
      label69:
      String str2 = "load";
      boolean bool3 = equals(str2);
      Object localObject3;
      Object localObject5;
      if (bool3)
      {
        localObject3 = "url";
        this = paramHashMap.get(localObject3);
        this = (String)this;
        localObject3 = new android/widget/VideoView;
        localObject5 = paramd.b();
        localObject5 = ((Activity)localObject5).getApplicationContext();
        ((VideoView)localObject3).<init>((Context)localObject5);
        ((VideoView)localObject3).setVideoPath(this);
        ((AdActivity)localObject1).showVideo((VideoView)localObject3);
      }
      else
      {
        localObject1 = ((AdActivity)localObject1).getVideoView();
        if (localObject1 == null)
        {
          localObject1 = "Could not get the VideoView for a video GMSG.";
          t.e((String)localObject1);
        }
        else
        {
          localObject3 = "play";
          boolean bool4 = equals(localObject3);
          if (bool4)
          {
            ((VideoView)localObject1).setVisibility(localObject5);
            ((VideoView)localObject1).start();
          }
          else
          {
            String str3 = "pause";
            boolean bool5 = equals(str3);
            if (bool5)
            {
              ((VideoView)localObject1).pause();
            }
            else
            {
              String str4 = "stop";
              boolean bool6 = equals(str4);
              if (bool6)
              {
                ((VideoView)localObject1).stopPlayback();
              }
              else
              {
                String str5 = "remove";
                boolean bool7 = equals(str5);
                if (bool7)
                {
                  int i = 8;
                  ((VideoView)localObject1).setVisibility(i);
                }
                else
                {
                  String str6 = "replay";
                  boolean bool8 = equals(str6);
                  if (bool8)
                  {
                    ((VideoView)localObject1).setVisibility(localObject5);
                    ((VideoView)localObject1).seekTo(localObject5);
                    ((VideoView)localObject1).start();
                  }
                  else
                  {
                    String str7 = "currentTime";
                    boolean bool9 = equals(str7);
                    if (bool9)
                    {
                      Object localObject4 = "time";
                      this = paramHashMap.get(localObject4);
                      this = (String)this;
                      if (this == null)
                      {
                        localObject1 = "No \"time\" parameter!";
                        t.e((String)localObject1);
                      }
                      else
                      {
                        localObject4 = Float.valueOf(this);
                        float f1 = ((Float)localObject4).floatValue();
                        float f2 = 1000.0F;
                        f1 *= f2;
                        int j = (int)f1;
                        ((VideoView)localObject1).seekTo(j);
                      }
                    }
                    else
                    {
                      localObject1 = "position";
                      boolean bool2 = equals(localObject1);
                      if (!bool2)
                      {
                        Object localObject2 = new java/lang/StringBuilder;
                        ((StringBuilder)localObject2).<init>();
                        String str8 = "Unknown movie action: ";
                        localObject2 = ((StringBuilder)localObject2).append(str8);
                        localObject2 = ((StringBuilder)localObject2).append(this);
                        localObject2 = ((StringBuilder)localObject2).toString();
                        t.e((String)localObject2);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     s
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */