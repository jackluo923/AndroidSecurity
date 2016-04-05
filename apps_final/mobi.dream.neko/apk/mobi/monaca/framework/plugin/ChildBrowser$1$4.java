package mobi.monaca.framework.plugin;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;

class ChildBrowser$1$4
  implements View.OnKeyListener
{
  ChildBrowser$1$4(ChildBrowser.1 param1) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 66))
    {
      ChildBrowser.access$600(this$1.this$0, ChildBrowser.access$500(this$1.this$0).getText().toString());
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.ChildBrowser.1.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */