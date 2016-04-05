package uk.co.senab.a.a.a;

import android.app.Activity;
import android.content.Context;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.app.SherlockExpandableListActivity;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.app.SherlockListActivity;
import com.actionbarsherlock.app.SherlockPreferenceActivity;
import uk.co.senab.a.b.e;

public final class d
  implements e
{
  public final Context a(Activity paramActivity)
  {
    Object localObject;
    if ((paramActivity instanceof SherlockActivity)) {
      localObject = ((SherlockActivity)paramActivity).getSupportActionBar();
    }
    for (;;)
    {
      if (localObject != null) {}
      for (localObject = ((ActionBar)localObject).getThemedContext();; localObject = null)
      {
        if (localObject == null)
        {
          return paramActivity;
          if ((paramActivity instanceof SherlockListActivity))
          {
            localObject = ((SherlockListActivity)paramActivity).getSupportActionBar();
            break;
          }
          if ((paramActivity instanceof SherlockFragmentActivity))
          {
            localObject = ((SherlockFragmentActivity)paramActivity).getSupportActionBar();
            break;
          }
          if ((paramActivity instanceof SherlockExpandableListActivity))
          {
            localObject = ((SherlockExpandableListActivity)paramActivity).getSupportActionBar();
            break;
          }
          if (!(paramActivity instanceof SherlockPreferenceActivity)) {
            break label109;
          }
          localObject = ((SherlockPreferenceActivity)paramActivity).getSupportActionBar();
          break;
        }
        return (Context)localObject;
      }
      label109:
      localObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */