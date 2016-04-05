package com.google.android.youtube.player.internal;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;

public class y
  extends Activity
{
  private Activity a;
  
  public y(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a.addContentView(paramView, paramLayoutParams);
  }
  
  public boolean bindService(Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    return a.bindService(paramIntent, paramServiceConnection, paramInt);
  }
  
  public int checkCallingOrSelfPermission(String paramString)
  {
    return a.checkCallingOrSelfPermission(paramString);
  }
  
  public int checkCallingOrSelfUriPermission(Uri paramUri, int paramInt)
  {
    return a.checkCallingOrSelfUriPermission(paramUri, paramInt);
  }
  
  public int checkCallingPermission(String paramString)
  {
    return a.checkCallingPermission(paramString);
  }
  
  public int checkCallingUriPermission(Uri paramUri, int paramInt)
  {
    return a.checkCallingUriPermission(paramUri, paramInt);
  }
  
  public int checkPermission(String paramString, int paramInt1, int paramInt2)
  {
    return a.checkPermission(paramString, paramInt1, paramInt2);
  }
  
  public int checkUriPermission(Uri paramUri, int paramInt1, int paramInt2, int paramInt3)
  {
    return a.checkUriPermission(paramUri, paramInt1, paramInt2, paramInt3);
  }
  
  public int checkUriPermission(Uri paramUri, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    return a.checkUriPermission(paramUri, paramString1, paramString2, paramInt1, paramInt2, paramInt3);
  }
  
  public void clearWallpaper()
  {
    a.clearWallpaper();
  }
  
  public void closeContextMenu()
  {
    a.closeContextMenu();
  }
  
  public void closeOptionsMenu()
  {
    a.closeOptionsMenu();
  }
  
  public Context createPackageContext(String paramString, int paramInt)
  {
    return a.createPackageContext(paramString, paramInt);
  }
  
  public PendingIntent createPendingResult(int paramInt1, Intent paramIntent, int paramInt2)
  {
    return a.createPendingResult(paramInt1, paramIntent, paramInt2);
  }
  
  public String[] databaseList()
  {
    return a.databaseList();
  }
  
  public boolean deleteDatabase(String paramString)
  {
    return a.deleteDatabase(paramString);
  }
  
  public boolean deleteFile(String paramString)
  {
    return a.deleteFile(paramString);
  }
  
  public boolean dispatchGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    return a.dispatchGenericMotionEvent(paramMotionEvent);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return a.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    return a.dispatchKeyShortcutEvent(paramKeyEvent);
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return a.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return a.dispatchTouchEvent(paramMotionEvent);
  }
  
  public boolean dispatchTrackballEvent(MotionEvent paramMotionEvent)
  {
    return a.dispatchTrackballEvent(paramMotionEvent);
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void enforceCallingOrSelfPermission(String paramString1, String paramString2)
  {
    a.enforceCallingOrSelfPermission(paramString1, paramString2);
  }
  
  public void enforceCallingOrSelfUriPermission(Uri paramUri, int paramInt, String paramString)
  {
    a.enforceCallingOrSelfUriPermission(paramUri, paramInt, paramString);
  }
  
  public void enforceCallingPermission(String paramString1, String paramString2)
  {
    a.enforceCallingPermission(paramString1, paramString2);
  }
  
  public void enforceCallingUriPermission(Uri paramUri, int paramInt, String paramString)
  {
    a.enforceCallingUriPermission(paramUri, paramInt, paramString);
  }
  
  public void enforcePermission(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    a.enforcePermission(paramString1, paramInt1, paramInt2, paramString2);
  }
  
  public void enforceUriPermission(Uri paramUri, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    a.enforceUriPermission(paramUri, paramInt1, paramInt2, paramInt3, paramString);
  }
  
  public void enforceUriPermission(Uri paramUri, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3)
  {
    a.enforceUriPermission(paramUri, paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramString3);
  }
  
  public boolean equals(Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  public String[] fileList()
  {
    return a.fileList();
  }
  
  public View findViewById(int paramInt)
  {
    return a.findViewById(paramInt);
  }
  
  public void finish()
  {
    a.finish();
  }
  
  public void finishActivity(int paramInt)
  {
    a.finishActivity(paramInt);
  }
  
  public void finishActivityFromChild(Activity paramActivity, int paramInt)
  {
    a.finishActivityFromChild(paramActivity, paramInt);
  }
  
  public void finishAffinity()
  {
    a.finishAffinity();
  }
  
  public void finishFromChild(Activity paramActivity)
  {
    a.finishFromChild(paramActivity);
  }
  
  public ActionBar getActionBar()
  {
    return a.getActionBar();
  }
  
  public Context getApplicationContext()
  {
    return a.getApplicationContext();
  }
  
  public ApplicationInfo getApplicationInfo()
  {
    return a.getApplicationInfo();
  }
  
  public AssetManager getAssets()
  {
    return a.getAssets();
  }
  
  public Context getBaseContext()
  {
    return a.getBaseContext();
  }
  
  public File getCacheDir()
  {
    return a.getCacheDir();
  }
  
  public ComponentName getCallingActivity()
  {
    return a.getCallingActivity();
  }
  
  public String getCallingPackage()
  {
    return a.getCallingPackage();
  }
  
  public int getChangingConfigurations()
  {
    return a.getChangingConfigurations();
  }
  
  public ClassLoader getClassLoader()
  {
    return a.getClassLoader();
  }
  
  public ComponentName getComponentName()
  {
    return a.getComponentName();
  }
  
  public ContentResolver getContentResolver()
  {
    return a.getContentResolver();
  }
  
  public View getCurrentFocus()
  {
    return a.getCurrentFocus();
  }
  
  public File getDatabasePath(String paramString)
  {
    return a.getDatabasePath(paramString);
  }
  
  public File getDir(String paramString, int paramInt)
  {
    return a.getDir(paramString, paramInt);
  }
  
  public File getExternalCacheDir()
  {
    return a.getExternalCacheDir();
  }
  
  public File getExternalFilesDir(String paramString)
  {
    return a.getExternalFilesDir(paramString);
  }
  
  public File getFileStreamPath(String paramString)
  {
    return a.getFileStreamPath(paramString);
  }
  
  public File getFilesDir()
  {
    return a.getFilesDir();
  }
  
  public FragmentManager getFragmentManager()
  {
    return a.getFragmentManager();
  }
  
  public Intent getIntent()
  {
    return a.getIntent();
  }
  
  public Object getLastNonConfigurationInstance()
  {
    return a.getLastNonConfigurationInstance();
  }
  
  public LayoutInflater getLayoutInflater()
  {
    return a.getLayoutInflater();
  }
  
  public LoaderManager getLoaderManager()
  {
    return a.getLoaderManager();
  }
  
  public String getLocalClassName()
  {
    return a.getLocalClassName();
  }
  
  public Looper getMainLooper()
  {
    return a.getMainLooper();
  }
  
  public MenuInflater getMenuInflater()
  {
    return a.getMenuInflater();
  }
  
  public File getObbDir()
  {
    return a.getObbDir();
  }
  
  public String getPackageCodePath()
  {
    return a.getPackageCodePath();
  }
  
  public PackageManager getPackageManager()
  {
    return a.getPackageManager();
  }
  
  public String getPackageName()
  {
    return a.getPackageName();
  }
  
  public String getPackageResourcePath()
  {
    return a.getPackageResourcePath();
  }
  
  public Intent getParentActivityIntent()
  {
    return a.getParentActivityIntent();
  }
  
  public SharedPreferences getPreferences(int paramInt)
  {
    return a.getPreferences(paramInt);
  }
  
  public int getRequestedOrientation()
  {
    return a.getRequestedOrientation();
  }
  
  public Resources getResources()
  {
    return a.getResources();
  }
  
  public SharedPreferences getSharedPreferences(String paramString, int paramInt)
  {
    return a.getSharedPreferences(paramString, paramInt);
  }
  
  public Object getSystemService(String paramString)
  {
    return a.getSystemService(paramString);
  }
  
  public int getTaskId()
  {
    return a.getTaskId();
  }
  
  public Resources.Theme getTheme()
  {
    return a.getTheme();
  }
  
  public Drawable getWallpaper()
  {
    return a.getWallpaper();
  }
  
  public int getWallpaperDesiredMinimumHeight()
  {
    return a.getWallpaperDesiredMinimumHeight();
  }
  
  public int getWallpaperDesiredMinimumWidth()
  {
    return a.getWallpaperDesiredMinimumWidth();
  }
  
  public Window getWindow()
  {
    return a.getWindow();
  }
  
  public WindowManager getWindowManager()
  {
    return a.getWindowManager();
  }
  
  public void grantUriPermission(String paramString, Uri paramUri, int paramInt)
  {
    a.grantUriPermission(paramString, paramUri, paramInt);
  }
  
  public boolean hasWindowFocus()
  {
    return a.hasWindowFocus();
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public void invalidateOptionsMenu()
  {
    a.invalidateOptionsMenu();
  }
  
  public boolean isChangingConfigurations()
  {
    return a.isChangingConfigurations();
  }
  
  public boolean isFinishing()
  {
    return a.isFinishing();
  }
  
  public boolean isRestricted()
  {
    return a.isRestricted();
  }
  
  public boolean isTaskRoot()
  {
    return a.isTaskRoot();
  }
  
  public boolean moveTaskToBack(boolean paramBoolean)
  {
    return a.moveTaskToBack(paramBoolean);
  }
  
  public boolean navigateUpTo(Intent paramIntent)
  {
    return a.navigateUpTo(paramIntent);
  }
  
  public boolean navigateUpToFromChild(Activity paramActivity, Intent paramIntent)
  {
    return a.navigateUpToFromChild(paramActivity, paramIntent);
  }
  
  public void onActionModeFinished(ActionMode paramActionMode)
  {
    a.onActionModeFinished(paramActionMode);
  }
  
  public void onActionModeStarted(ActionMode paramActionMode)
  {
    a.onActionModeStarted(paramActionMode);
  }
  
  public void onAttachFragment(Fragment paramFragment)
  {
    a.onAttachFragment(paramFragment);
  }
  
  public void onAttachedToWindow()
  {
    a.onAttachedToWindow();
  }
  
  public void onBackPressed()
  {
    a.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    a.onConfigurationChanged(paramConfiguration);
  }
  
  public void onContentChanged()
  {
    a.onContentChanged();
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return a.onContextItemSelected(paramMenuItem);
  }
  
  public void onContextMenuClosed(Menu paramMenu)
  {
    a.onContextMenuClosed(paramMenu);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    a.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public CharSequence onCreateDescription()
  {
    return a.onCreateDescription();
  }
  
  public void onCreateNavigateUpTaskStack(TaskStackBuilder paramTaskStackBuilder)
  {
    a.onCreateNavigateUpTaskStack(paramTaskStackBuilder);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return a.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return a.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public View onCreatePanelView(int paramInt)
  {
    return a.onCreatePanelView(paramInt);
  }
  
  public boolean onCreateThumbnail(Bitmap paramBitmap, Canvas paramCanvas)
  {
    return a.onCreateThumbnail(paramBitmap, paramCanvas);
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.onCreateView(paramString, paramContext, paramAttributeSet);
  }
  
  public void onDetachedFromWindow()
  {
    a.onDetachedFromWindow();
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    return a.onGenericMotionEvent(paramMotionEvent);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return a.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent)
  {
    return a.onKeyLongPress(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyMultiple(int paramInt1, int paramInt2, KeyEvent paramKeyEvent)
  {
    return a.onKeyMultiple(paramInt1, paramInt2, paramKeyEvent);
  }
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    return a.onKeyShortcut(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return a.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    a.onLowMemory();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return a.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return a.onMenuOpened(paramInt, paramMenu);
  }
  
  public boolean onNavigateUp()
  {
    return a.onNavigateUp();
  }
  
  public boolean onNavigateUpFromChild(Activity paramActivity)
  {
    return a.onNavigateUpFromChild(paramActivity);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return a.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onOptionsMenuClosed(Menu paramMenu)
  {
    a.onOptionsMenuClosed(paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    a.onPanelClosed(paramInt, paramMenu);
  }
  
  public void onPrepareNavigateUpTaskStack(TaskStackBuilder paramTaskStackBuilder)
  {
    a.onPrepareNavigateUpTaskStack(paramTaskStackBuilder);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return a.onPrepareOptionsMenu(paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return a.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    return a.onRetainNonConfigurationInstance();
  }
  
  public boolean onSearchRequested()
  {
    return a.onSearchRequested();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return a.onTouchEvent(paramMotionEvent);
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    return a.onTrackballEvent(paramMotionEvent);
  }
  
  public void onTrimMemory(int paramInt)
  {
    a.onTrimMemory(paramInt);
  }
  
  public void onUserInteraction()
  {
    a.onUserInteraction();
  }
  
  public void onWindowAttributesChanged(WindowManager.LayoutParams paramLayoutParams)
  {
    a.onWindowAttributesChanged(paramLayoutParams);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    a.onWindowFocusChanged(paramBoolean);
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    return a.onWindowStartingActionMode(paramCallback);
  }
  
  public void openContextMenu(View paramView)
  {
    a.openContextMenu(paramView);
  }
  
  public FileInputStream openFileInput(String paramString)
  {
    return a.openFileInput(paramString);
  }
  
  public FileOutputStream openFileOutput(String paramString, int paramInt)
  {
    return a.openFileOutput(paramString, paramInt);
  }
  
  public void openOptionsMenu()
  {
    a.openOptionsMenu();
  }
  
  public SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return a.openOrCreateDatabase(paramString, paramInt, paramCursorFactory);
  }
  
  public SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    return a.openOrCreateDatabase(paramString, paramInt, paramCursorFactory, paramDatabaseErrorHandler);
  }
  
  public void overridePendingTransition(int paramInt1, int paramInt2)
  {
    a.overridePendingTransition(paramInt1, paramInt2);
  }
  
  public Drawable peekWallpaper()
  {
    return a.peekWallpaper();
  }
  
  public void recreate()
  {
    a.recreate();
  }
  
  public void registerComponentCallbacks(ComponentCallbacks paramComponentCallbacks)
  {
    a.registerComponentCallbacks(paramComponentCallbacks);
  }
  
  public void registerForContextMenu(View paramView)
  {
    a.registerForContextMenu(paramView);
  }
  
  public Intent registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    return a.registerReceiver(paramBroadcastReceiver, paramIntentFilter);
  }
  
  public Intent registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter, String paramString, Handler paramHandler)
  {
    return a.registerReceiver(paramBroadcastReceiver, paramIntentFilter, paramString, paramHandler);
  }
  
  public void removeStickyBroadcast(Intent paramIntent)
  {
    a.removeStickyBroadcast(paramIntent);
  }
  
  public void revokeUriPermission(Uri paramUri, int paramInt)
  {
    a.revokeUriPermission(paramUri, paramInt);
  }
  
  public void sendBroadcast(Intent paramIntent)
  {
    a.sendBroadcast(paramIntent);
  }
  
  public void sendBroadcast(Intent paramIntent, String paramString)
  {
    a.sendBroadcast(paramIntent, paramString);
  }
  
  public void sendOrderedBroadcast(Intent paramIntent, String paramString)
  {
    a.sendOrderedBroadcast(paramIntent, paramString);
  }
  
  public void sendOrderedBroadcast(Intent paramIntent, String paramString1, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString2, Bundle paramBundle)
  {
    a.sendOrderedBroadcast(paramIntent, paramString1, paramBroadcastReceiver, paramHandler, paramInt, paramString2, paramBundle);
  }
  
  public void sendStickyBroadcast(Intent paramIntent)
  {
    a.sendStickyBroadcast(paramIntent);
  }
  
  public void sendStickyOrderedBroadcast(Intent paramIntent, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString, Bundle paramBundle)
  {
    a.sendStickyOrderedBroadcast(paramIntent, paramBroadcastReceiver, paramHandler, paramInt, paramString, paramBundle);
  }
  
  public void setContentView(int paramInt)
  {
    a.setContentView(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    a.setContentView(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a.setContentView(paramView, paramLayoutParams);
  }
  
  public void setFinishOnTouchOutside(boolean paramBoolean)
  {
    a.setFinishOnTouchOutside(paramBoolean);
  }
  
  public void setIntent(Intent paramIntent)
  {
    a.setIntent(paramIntent);
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    a.setRequestedOrientation(paramInt);
  }
  
  public void setTheme(int paramInt)
  {
    a.setTheme(paramInt);
  }
  
  public void setTitle(int paramInt)
  {
    a.setTitle(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    a.setTitle(paramCharSequence);
  }
  
  public void setTitleColor(int paramInt)
  {
    a.setTitleColor(paramInt);
  }
  
  public void setVisible(boolean paramBoolean)
  {
    a.setVisible(paramBoolean);
  }
  
  public void setWallpaper(Bitmap paramBitmap)
  {
    a.setWallpaper(paramBitmap);
  }
  
  public void setWallpaper(InputStream paramInputStream)
  {
    a.setWallpaper(paramInputStream);
  }
  
  public boolean shouldUpRecreateTask(Intent paramIntent)
  {
    return a.shouldUpRecreateTask(paramIntent);
  }
  
  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    return a.startActionMode(paramCallback);
  }
  
  public void startActivities(Intent[] paramArrayOfIntent)
  {
    a.startActivities(paramArrayOfIntent);
  }
  
  public void startActivities(Intent[] paramArrayOfIntent, Bundle paramBundle)
  {
    a.startActivities(paramArrayOfIntent, paramBundle);
  }
  
  public void startActivity(Intent paramIntent)
  {
    a.startActivity(paramIntent);
  }
  
  public void startActivity(Intent paramIntent, Bundle paramBundle)
  {
    a.startActivity(paramIntent, paramBundle);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    a.startActivityForResult(paramIntent, paramInt);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
  
  public void startActivityFromChild(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    a.startActivityFromChild(paramActivity, paramIntent, paramInt);
  }
  
  public void startActivityFromChild(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a.startActivityFromChild(paramActivity, paramIntent, paramInt, paramBundle);
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    a.startActivityFromFragment(paramFragment, paramIntent, paramInt);
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
  }
  
  public boolean startActivityIfNeeded(Intent paramIntent, int paramInt)
  {
    return a.startActivityIfNeeded(paramIntent, paramInt);
  }
  
  public boolean startActivityIfNeeded(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    return a.startActivityIfNeeded(paramIntent, paramInt, paramBundle);
  }
  
  public boolean startInstrumentation(ComponentName paramComponentName, String paramString, Bundle paramBundle)
  {
    return a.startInstrumentation(paramComponentName, paramString, paramBundle);
  }
  
  public void startIntentSender(IntentSender paramIntentSender, Intent paramIntent, int paramInt1, int paramInt2, int paramInt3)
  {
    a.startIntentSender(paramIntentSender, paramIntent, paramInt1, paramInt2, paramInt3);
  }
  
  public void startIntentSender(IntentSender paramIntentSender, Intent paramIntent, int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
    a.startIntentSender(paramIntentSender, paramIntent, paramInt1, paramInt2, paramInt3, paramBundle);
  }
  
  public void startIntentSenderForResult(IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4)
  {
    a.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4);
  }
  
  public void startIntentSenderForResult(IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
  {
    a.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public void startIntentSenderFromChild(Activity paramActivity, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4)
  {
    a.startIntentSenderFromChild(paramActivity, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4);
  }
  
  public void startIntentSenderFromChild(Activity paramActivity, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
  {
    a.startIntentSenderFromChild(paramActivity, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public void startManagingCursor(Cursor paramCursor)
  {
    a.startManagingCursor(paramCursor);
  }
  
  public boolean startNextMatchingActivity(Intent paramIntent)
  {
    return a.startNextMatchingActivity(paramIntent);
  }
  
  public boolean startNextMatchingActivity(Intent paramIntent, Bundle paramBundle)
  {
    return a.startNextMatchingActivity(paramIntent, paramBundle);
  }
  
  public void startSearch(String paramString, boolean paramBoolean1, Bundle paramBundle, boolean paramBoolean2)
  {
    a.startSearch(paramString, paramBoolean1, paramBundle, paramBoolean2);
  }
  
  public ComponentName startService(Intent paramIntent)
  {
    return a.startService(paramIntent);
  }
  
  public void stopManagingCursor(Cursor paramCursor)
  {
    a.stopManagingCursor(paramCursor);
  }
  
  public boolean stopService(Intent paramIntent)
  {
    return a.stopService(paramIntent);
  }
  
  public void takeKeyEvents(boolean paramBoolean)
  {
    a.takeKeyEvents(paramBoolean);
  }
  
  public String toString()
  {
    return a.toString();
  }
  
  public void triggerSearch(String paramString, Bundle paramBundle)
  {
    a.triggerSearch(paramString, paramBundle);
  }
  
  public void unbindService(ServiceConnection paramServiceConnection)
  {
    a.unbindService(paramServiceConnection);
  }
  
  public void unregisterComponentCallbacks(ComponentCallbacks paramComponentCallbacks)
  {
    a.unregisterComponentCallbacks(paramComponentCallbacks);
  }
  
  public void unregisterForContextMenu(View paramView)
  {
    a.unregisterForContextMenu(paramView);
  }
  
  public void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    a.unregisterReceiver(paramBroadcastReceiver);
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */