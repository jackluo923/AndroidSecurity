package com.appyet.activity.forum;

import android.os.Build;
import android.widget.EditText;
import com.appyet.context.ApplicationContext;
import com.appyet.f.a;
import com.appyet.manager.an;
import com.appyet.manager.ao;

final class d
  extends a<Void, Void, Void>
{
  private ao b;
  
  private d(ForumReplyPostActivity paramForumReplyPostActivity) {}
  
  private Void f()
  {
    try
    {
      String str1 = ForumReplyPostActivity.a(a).getText().toString() + "\n\n " + String.format(a.getString(2131230995), new Object[] { Build.MODEL, a.getString(2131230998) });
      b = a.a.p.b(a.b, ForumReplyPostActivity.b(a), ForumReplyPostActivity.c(a), str1);
      return null;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str2 = ForumReplyPostActivity.a(a).getText().toString();
      }
    }
  }
  
  protected final void a()
  {
    ForumReplyPostActivity.e(a);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.forum.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */