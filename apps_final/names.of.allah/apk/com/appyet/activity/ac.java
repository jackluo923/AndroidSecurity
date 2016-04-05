package com.appyet.activity;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.appyet.context.ApplicationContext;
import com.appyet.context.b;
import com.appyet.d.d;
import com.appyet.manager.bp;
import java.net.URLEncoder;

final class ac
  implements View.OnClickListener
{
  ac(TranslateActivity paramTranslateActivity) {}
  
  public final void onClick(View paramView)
  {
    try
    {
      if (aa).d.z() == b.b) {}
      for (paramView = "http://www.google.com/gwt/x?u=" + URLEncoder.encode(TranslateActivity.b(a), "UTF-8");; paramView = "http://www.instapaper.com/m?u=" + URLEncoder.encode(TranslateActivity.b(a), "UTF-8"))
      {
        paramView = "http://translate.google.com/translate?sl=auto&tl=" + TranslateActivity.c(a) + "&u=" + URLEncoder.encode(paramView, "UTF-8");
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse(paramView));
        a.startActivity(localIntent);
        a.setResult(1);
        a.finish();
        return;
      }
      return;
    }
    catch (Exception paramView)
    {
      d.a(paramView);
      Toast.makeText(TranslateActivity.a(a), 2131230790, 1).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */