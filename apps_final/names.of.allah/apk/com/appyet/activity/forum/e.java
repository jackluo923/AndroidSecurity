package com.appyet.activity.forum;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class e
  implements View.OnClickListener
{
  e(ForumSignInActivity paramForumSignInActivity) {}
  
  public final void onClick(View paramView)
  {
    paramView = (InputMethodManager)a.getSystemService("input_method");
    paramView.hideSoftInputFromWindow(ForumSignInActivity.a(a).getWindowToken(), 0);
    paramView.hideSoftInputFromWindow(ForumSignInActivity.b(a).getWindowToken(), 0);
    ForumSignInActivity.a(a).clearFocus();
    ForumSignInActivity.b(a).clearFocus();
    new g(a, (byte)0).a(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.forum.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */