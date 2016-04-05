package com.j256.ormlite.android.apptools;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;

public abstract class OrmLiteBaseActivity<H extends OrmLiteSqliteOpenHelper>
  extends Activity
{
  private static Logger logger = LoggerFactory.getLogger(OrmLiteBaseActivity.class);
  private volatile boolean created = false;
  private volatile boolean destroyed = false;
  private volatile H helper;
  
  public ConnectionSource getConnectionSource()
  {
    return getHelper().getConnectionSource();
  }
  
  public H getHelper()
  {
    if (helper == null)
    {
      if (!created) {
        throw new IllegalStateException("A call has not been made to onCreate() yet so the helper is null");
      }
      if (destroyed) {
        throw new IllegalStateException("A call to onDestroy has already been made and the helper cannot be used after that point");
      }
      throw new IllegalStateException("Helper is null for some unknown reason");
    }
    return helper;
  }
  
  protected H getHelperInternal(Context paramContext)
  {
    paramContext = OpenHelperManager.getHelper(paramContext);
    logger.trace("{}: got new helper {} from OpenHelperManager", this, paramContext);
    return paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (helper == null)
    {
      helper = getHelperInternal(this);
      created = true;
    }
    super.onCreate(paramBundle);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    releaseHelper(helper);
    destroyed = true;
  }
  
  protected void releaseHelper(H paramH)
  {
    OpenHelperManager.releaseHelper();
    logger.trace("{}: helper {} was released, set to null", this, paramH);
    helper = null;
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteBaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */