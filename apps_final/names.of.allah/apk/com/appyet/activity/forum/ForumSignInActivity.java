package com.appyet.activity.forum;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.manager.an;

public class ForumSignInActivity
  extends SherlockActivity
{
  protected ApplicationContext a;
  protected long b;
  private EditText c;
  private EditText d;
  private Button e;
  private Button f;
  private Module g;
  private com.appyet.a.a.d h;
  private ProgressDialog i;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903112);
    a = ((ApplicationContext)getApplicationContext());
    try
    {
      b = getIntent().getExtras().getLong("ARG_MODULE_ID");
      g = a.h.g(b);
      h = a.p.a(b);
      c = ((EditText)findViewById(2131361954));
      d = ((EditText)findViewById(2131361955));
      f = ((Button)findViewById(2131361957));
      e = ((Button)findViewById(2131361956));
      f.setOnClickListener(new e(this));
      e.setOnClickListener(new f(this));
      setTitle(2131230991);
      return;
    }
    catch (Exception paramBundle)
    {
      com.appyet.d.d.a(paramBundle);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131689479, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    paramMenuItem.getItemId();
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.forum.ForumSignInActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */