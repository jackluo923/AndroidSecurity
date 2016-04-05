package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.g;

public abstract interface LoaderManager$LoaderCallbacks<D>
{
  public abstract g<D> onCreateLoader(int paramInt, Bundle paramBundle);
  
  public abstract void onLoadFinished(g<D> paramg, D paramD);
  
  public abstract void onLoaderReset(g<D> paramg);
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManager.LoaderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */