package uk.co.senab.a.b;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;

final class l
  implements e
{
  l(j paramj) {}
  
  public final Context a(Activity paramActivity)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (Build.VERSION.SDK_INT >= 14)
    {
      ActionBar localActionBar = paramActivity.getActionBar();
      localObject1 = localObject2;
      if (localActionBar != null) {
        localObject1 = localActionBar.getThemedContext();
      }
    }
    if (localObject1 == null) {
      return paramActivity;
    }
    return (Context)localObject1;
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */