package com.appyet.activity.forum;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.appyet.a.a.a;
import com.appyet.a.a.f;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.manager.an;
import java.util.Iterator;
import java.util.List;

public class ForumReplyPostActivity
  extends SherlockActivity
{
  protected ApplicationContext a;
  protected long b;
  private EditText c;
  private Module d;
  private String e;
  private String f;
  private com.appyet.a.a.d g;
  private a h = null;
  private ProgressDialog i;
  
  public void onBackPressed()
  {
    if (c.getText().length() > 0)
    {
      new AlertDialog.Builder(this).setIcon(17301543).setTitle(getString(2131230815)).setMessage(getString(2131230816)).setPositiveButton(getString(2131230817), new c(this)).setNegativeButton(getString(2131230818), null).show();
      return;
    }
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903111);
    a = ((ApplicationContext)getApplicationContext());
    do
    {
      try
      {
        paramBundle = getIntent().getExtras();
        b = paramBundle.getLong("ARG_MODULE_ID");
        d = a.h.g(b);
        e = paramBundle.getString("ARG_FORUM_ID");
        f = paramBundle.getString("ARG_TOPIC_ID");
        g = a.p.a(b);
        paramBundle = g.b.iterator();
        while (paramBundle.hasNext())
        {
          a locala = (a)paramBundle.next();
          if (a.equals(e)) {
            h = locala;
          }
        }
        c = ((EditText)findViewById(2131361946));
      }
      catch (Exception paramBundle)
      {
        com.appyet.d.d.a(paramBundle);
        return;
      }
      setTitle(2131230964);
    } while (((g.e != null) && (g.e.a)) || (g.d == null));
    paramBundle = new Intent(a, ForumSignInActivity.class);
    paramBundle.putExtra("ARG_MODULE_ID", b);
    a.startActivity(paramBundle);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131689478, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(c.getWindowToken(), 0);
      c.clearFocus();
      new d(this, (byte)0).a(new Void[0]);
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.forum.ForumReplyPostActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */