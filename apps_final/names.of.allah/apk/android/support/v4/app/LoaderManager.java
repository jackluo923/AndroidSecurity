package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.g;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class LoaderManager
{
  public static void enableDebugLogging(boolean paramBoolean)
  {
    LoaderManagerImpl.DEBUG = paramBoolean;
  }
  
  public abstract void destroyLoader(int paramInt);
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract <D> g<D> getLoader(int paramInt);
  
  public boolean hasRunningLoaders()
  {
    return false;
  }
  
  public abstract <D> g<D> initLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks);
  
  public abstract <D> g<D> restartLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks);
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */