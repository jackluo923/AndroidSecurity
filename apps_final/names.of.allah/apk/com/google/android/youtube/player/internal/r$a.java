package com.google.android.youtube.player.internal;

import android.os.Handler;
import android.os.Message;
import com.google.android.youtube.player.YouTubeInitializationResult;
import java.util.ArrayList;

final class r$a
  extends Handler
{
  r$a(r paramr) {}
  
  public final void handleMessage(Message paramMessage)
  {
    if (what == 3) {
      a.a((YouTubeInitializationResult)obj);
    }
    do
    {
      return;
      if (what == 4) {
        synchronized (r.a(a))
        {
          if ((r.b(a)) && (a.f()) && (r.a(a).contains(obj))) {
            ((t.a)obj).a();
          }
          return;
        }
      }
    } while (((what == 2) && (!a.f())) || ((what != 2) && (what != 1)));
    ((r.b)obj).a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.r.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */