package android.support.v4.app;

import android.view.View;
import com.actionbarsherlock.ActionBarSherlock.OnCreatePanelMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnMenuItemSelectedListener;
import com.actionbarsherlock.ActionBarSherlock.OnPreparePanelListener;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.util.ArrayList;

public abstract class Watson
  extends FragmentActivity
  implements ActionBarSherlock.OnCreatePanelMenuListener, ActionBarSherlock.OnMenuItemSelectedListener, ActionBarSherlock.OnPreparePanelListener
{
  private static final String TAG = "Watson";
  private ArrayList<Fragment> mCreatedMenus;
  
  public abstract MenuInflater getSupportMenuInflater();
  
  public abstract boolean onCreateOptionsMenu(Menu paramMenu);
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    int m = 0;
    int k = 0;
    Object localObject;
    int i;
    int j;
    if (paramInt == 0)
    {
      m = onCreateOptionsMenu(paramMenu);
      MenuInflater localMenuInflater = getSupportMenuInflater();
      localObject = null;
      ArrayList localArrayList = null;
      if (mFragments.mAdded != null)
      {
        i = 0;
        paramInt = 0;
        j = paramInt;
        localObject = localArrayList;
        if (i >= mFragments.mAdded.size()) {
          break label164;
        }
        localObject = (Fragment)mFragments.mAdded.get(i);
        if ((localObject == null) || (mHidden) || (!mHasMenu) || (!mMenuVisible) || (!(localObject instanceof Watson.OnCreateOptionsMenuListener))) {
          break label241;
        }
        ((Watson.OnCreateOptionsMenuListener)localObject).onCreateOptionsMenu(paramMenu, localMenuInflater);
        if (localArrayList != null) {
          break label238;
        }
        localArrayList = new ArrayList();
        label143:
        localArrayList.add(localObject);
        paramInt = 1;
      }
    }
    label164:
    label238:
    label241:
    for (;;)
    {
      i += 1;
      break;
      j = 0;
      if (mCreatedMenus != null)
      {
        paramInt = k;
        while (paramInt < mCreatedMenus.size())
        {
          paramMenu = (Fragment)mCreatedMenus.get(paramInt);
          if ((localObject == null) || (!((ArrayList)localObject).contains(paramMenu))) {
            paramMenu.onDestroyOptionsMenu();
          }
          paramInt += 1;
        }
      }
      mCreatedMenus = ((ArrayList)localObject);
      m |= j;
      return m;
      break label143;
    }
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt == 0)
    {
      if (!onOptionsItemSelected(paramMenuItem)) {
        break label25;
      }
      bool1 = true;
    }
    label25:
    do
    {
      return bool1;
      bool1 = bool2;
    } while (mFragments.mAdded == null);
    paramInt = 0;
    for (;;)
    {
      bool1 = bool2;
      if (paramInt >= mFragments.mAdded.size()) {
        break;
      }
      Fragment localFragment = (Fragment)mFragments.mAdded.get(paramInt);
      if ((localFragment != null) && (!mHidden) && (mHasMenu) && (mMenuVisible) && ((localFragment instanceof Watson.OnOptionsItemSelectedListener)) && (((Watson.OnOptionsItemSelectedListener)localFragment).onOptionsItemSelected(paramMenuItem))) {
        return true;
      }
      paramInt += 1;
    }
  }
  
  public abstract boolean onOptionsItemSelected(MenuItem paramMenuItem);
  
  public abstract boolean onPrepareOptionsMenu(Menu paramMenu);
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    int k = 0;
    if (paramInt == 0)
    {
      k = onPrepareOptionsMenu(paramMenu);
      if (mFragments.mAdded != null)
      {
        int i = 0;
        for (paramInt = 0;; paramInt = j)
        {
          j = paramInt;
          if (i >= mFragments.mAdded.size()) {
            break;
          }
          paramView = (Fragment)mFragments.mAdded.get(i);
          j = paramInt;
          if (paramView != null)
          {
            j = paramInt;
            if (!mHidden)
            {
              j = paramInt;
              if (mHasMenu)
              {
                j = paramInt;
                if (mMenuVisible)
                {
                  j = paramInt;
                  if ((paramView instanceof Watson.OnPrepareOptionsMenuListener))
                  {
                    j = 1;
                    ((Watson.OnPrepareOptionsMenuListener)paramView).onPrepareOptionsMenu(paramMenu);
                  }
                }
              }
            }
          }
          i += 1;
        }
      }
      int j = 0;
      k = (k | j) & paramMenu.hasVisibleItems();
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.Watson
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */