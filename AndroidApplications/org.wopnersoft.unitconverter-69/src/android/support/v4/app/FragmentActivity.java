package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.c.m;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsToast;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

// compiled from: ProGuard
public class FragmentActivity extends Activity {
    static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    private static final String TAG = "FragmentActivity";
    m mAllLoaderManagers;
    boolean mCheckedForLoaderManager;
    final FragmentContainer mContainer;
    boolean mCreated;
    final FragmentManagerImpl mFragments;
    final Handler mHandler;
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mOptionsMenuInvalidated;
    boolean mReallyStopped;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped;

    // compiled from: ProGuard
    class FragmentTag {
        public static final int[] Fragment;
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        static {
            Fragment = new int[]{16842755, 16842960, 16842961};
        }

        FragmentTag() {
        }
    }

    // compiled from: ProGuard
    final class NonConfigurationInstances {
        Object activity;
        m children;
        Object custom;
        ArrayList fragments;
        m loaders;

        NonConfigurationInstances() {
        }
    }

    public FragmentActivity() {
        this.mHandler = new Handler() {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case MSG_REALLY_STOPPED:
                        if (FragmentActivity.this.mStopped) {
                            FragmentActivity.this.doReallyStop(false);
                        }
                    case MSG_RESUME_PENDING:
                        FragmentActivity.this.onResumeFragments();
                        FragmentActivity.this.mFragments.execPendingActions();
                    default:
                        super.handleMessage(message);
                }
            }
        };
        this.mFragments = new FragmentManagerImpl();
        this.mContainer = new FragmentContainer() {
            public View findViewById(int i) {
                return FragmentActivity.this.findViewById(i);
            }
        };
    }

    private void dumpViewHierarchy(String str, PrintWriter printWriter, View view) {
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
        } else {
            printWriter.println(viewToString(view));
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    String str2 = str + "  ";
                    int i = 0;
                    while (i < childCount) {
                        dumpViewHierarchy(str2, printWriter, viewGroup.getChildAt(i));
                        i++;
                    }
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String viewToString(android.view.View r7) {
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentActivity.viewToString(android.view.View):java.lang.String");
        /*
        r3 = 86;
        r1 = 70;
        r6 = 44;
        r5 = 32;
        r2 = 46;
        r4 = new java.lang.StringBuilder;
        r0 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r4.<init>(r0);
        r0 = r7.getClass();
        r0 = r0.getName();
        r4.append(r0);
        r0 = 123; // 0x7b float:1.72E-43 double:6.1E-322;
        r4.append(r0);
        r0 = java.lang.System.identityHashCode(r7);
        r0 = java.lang.Integer.toHexString(r0);
        r4.append(r0);
        r4.append(r5);
        r0 = r7.getVisibility();
        switch(r0) {
            case 0: goto L_0x011e;
            case 4: goto L_0x0123;
            case 8: goto L_0x012a;
            default: goto L_0x0036;
        };
    L_0x0036:
        r4.append(r2);
    L_0x0039:
        r0 = r7.isFocusable();
        if (r0 == 0) goto L_0x0131;
    L_0x003f:
        r0 = r1;
    L_0x0040:
        r4.append(r0);
        r0 = r7.isEnabled();
        if (r0 == 0) goto L_0x0134;
    L_0x0049:
        r0 = 69;
    L_0x004b:
        r4.append(r0);
        r0 = r7.willNotDraw();
        if (r0 == 0) goto L_0x0137;
    L_0x0054:
        r0 = r2;
    L_0x0055:
        r4.append(r0);
        r0 = r7.isHorizontalScrollBarEnabled();
        if (r0 == 0) goto L_0x013b;
    L_0x005e:
        r0 = 72;
    L_0x0060:
        r4.append(r0);
        r0 = r7.isVerticalScrollBarEnabled();
        if (r0 == 0) goto L_0x013e;
    L_0x0069:
        r0 = r3;
    L_0x006a:
        r4.append(r0);
        r0 = r7.isClickable();
        if (r0 == 0) goto L_0x0141;
    L_0x0073:
        r0 = 67;
    L_0x0075:
        r4.append(r0);
        r0 = r7.isLongClickable();
        if (r0 == 0) goto L_0x0144;
    L_0x007e:
        r0 = 76;
    L_0x0080:
        r4.append(r0);
        r4.append(r5);
        r0 = r7.isFocused();
        if (r0 == 0) goto L_0x0147;
    L_0x008c:
        r4.append(r1);
        r0 = r7.isSelected();
        if (r0 == 0) goto L_0x014a;
    L_0x0095:
        r0 = 83;
    L_0x0097:
        r4.append(r0);
        r0 = r7.isPressed();
        if (r0 == 0) goto L_0x00a2;
    L_0x00a0:
        r2 = 80;
    L_0x00a2:
        r4.append(r2);
        r4.append(r5);
        r0 = r7.getLeft();
        r4.append(r0);
        r4.append(r6);
        r0 = r7.getTop();
        r4.append(r0);
        r0 = 45;
        r4.append(r0);
        r0 = r7.getRight();
        r4.append(r0);
        r4.append(r6);
        r0 = r7.getBottom();
        r4.append(r0);
        r1 = r7.getId();
        r0 = -1;
        if (r1 == r0) goto L_0x0114;
    L_0x00d6:
        r0 = " #";
        r4.append(r0);
        r0 = java.lang.Integer.toHexString(r1);
        r4.append(r0);
        r2 = r7.getResources();
        if (r1 == 0) goto L_0x0114;
    L_0x00e8:
        if (r2 == 0) goto L_0x0114;
    L_0x00ea:
        r0 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r0 = r0 & r1;
        switch(r0) {
            case 16777216: goto L_0x0150;
            case 2130706432: goto L_0x014d;
            default: goto L_0x00f0;
        };
    L_0x00f0:
        r0 = r2.getResourcePackageName(r1);	 Catch:{ NotFoundException -> 0x0153 }
    L_0x00f4:
        r3 = r2.getResourceTypeName(r1);	 Catch:{ NotFoundException -> 0x0153 }
        r1 = r2.getResourceEntryName(r1);	 Catch:{ NotFoundException -> 0x0153 }
        r2 = " ";
        r4.append(r2);	 Catch:{ NotFoundException -> 0x0153 }
        r4.append(r0);	 Catch:{ NotFoundException -> 0x0153 }
        r0 = ":";
        r4.append(r0);	 Catch:{ NotFoundException -> 0x0153 }
        r4.append(r3);	 Catch:{ NotFoundException -> 0x0153 }
        r0 = "/";
        r4.append(r0);	 Catch:{ NotFoundException -> 0x0153 }
        r4.append(r1);	 Catch:{ NotFoundException -> 0x0153 }
    L_0x0114:
        r0 = "}";
        r4.append(r0);
        r0 = r4.toString();
        return r0;
    L_0x011e:
        r4.append(r3);
        goto L_0x0039;
    L_0x0123:
        r0 = 73;
        r4.append(r0);
        goto L_0x0039;
    L_0x012a:
        r0 = 71;
        r4.append(r0);
        goto L_0x0039;
    L_0x0131:
        r0 = r2;
        goto L_0x0040;
    L_0x0134:
        r0 = r2;
        goto L_0x004b;
    L_0x0137:
        r0 = 68;
        goto L_0x0055;
    L_0x013b:
        r0 = r2;
        goto L_0x0060;
    L_0x013e:
        r0 = r2;
        goto L_0x006a;
    L_0x0141:
        r0 = r2;
        goto L_0x0075;
    L_0x0144:
        r0 = r2;
        goto L_0x0080;
    L_0x0147:
        r1 = r2;
        goto L_0x008c;
    L_0x014a:
        r0 = r2;
        goto L_0x0097;
    L_0x014d:
        r0 = "app";
        goto L_0x00f4;
    L_0x0150:
        r0 = "android";
        goto L_0x00f4;
    L_0x0153:
        r0 = move-exception;
        goto L_0x0114;
        */
    }

    void doReallyStop(boolean z) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = z;
            this.mHandler.removeMessages(MSG_REALLY_STOPPED);
            onReallyStop();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        if (VERSION.SDK_INT >= 11) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print("mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            printWriter.print(" mReallyStopped=");
            printWriter.println(this.mReallyStopped);
            printWriter.print(str2);
            printWriter.print("mLoadersStarted=");
            printWriter.println(this.mLoadersStarted);
        } else {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print("mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            printWriter.print(" mReallyStopped=");
            printWriter.println(this.mReallyStopped);
            printWriter.print(str2);
            printWriter.print("mLoadersStarted=");
            printWriter.println(this.mLoadersStarted);
        }
        if (this.mLoaderManager != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
            printWriter.println(":");
            this.mLoaderManager.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
        this.mFragments.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        dumpViewHierarchy(str + "  ", printWriter, getWindow().getDecorView());
    }

    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        return nonConfigurationInstances != null ? nonConfigurationInstances.custom : null;
    }

    LoaderManagerImpl getLoaderManager(String str, boolean z, boolean z2) {
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new m();
        }
        LoaderManagerImpl loaderManagerImpl = (LoaderManagerImpl) this.mAllLoaderManagers.get(str);
        if (loaderManagerImpl != null) {
            loaderManagerImpl.updateActivity(this);
            return loaderManagerImpl;
        } else if (!z2) {
            return loaderManagerImpl;
        } else {
            loaderManagerImpl = new LoaderManagerImpl(str, this, z);
            this.mAllLoaderManagers.put(str, loaderManagerImpl);
            return loaderManagerImpl;
        }
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments;
    }

    public LoaderManager getSupportLoaderManager() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = getLoaderManager("(root)", this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    void invalidateSupportFragment(String str) {
        if (this.mAllLoaderManagers != null) {
            LoaderManagerImpl loaderManagerImpl = (LoaderManagerImpl) this.mAllLoaderManagers.get(str);
            if (loaderManagerImpl != null && !loaderManagerImpl.mRetaining) {
                loaderManagerImpl.doDestroy();
                this.mAllLoaderManagers.remove(str);
            }
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.noteStateNotSaved();
        int i3 = i >> 16;
        if (i3 != 0) {
            i3--;
            if (this.mFragments.mActive == null || i3 < 0 || i3 >= this.mFragments.mActive.size()) {
                Log.w(TAG, "Activity result fragment index out of range: 0x" + Integer.toHexString(i));
            } else {
                Fragment fragment = (Fragment) this.mFragments.mActive.get(i3);
                if (fragment == null) {
                    Log.w(TAG, "Activity result no fragment exists for index: 0x" + Integer.toHexString(i));
                } else {
                    fragment.onActivityResult(65535 & i, i2, intent);
                }
            }
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onBackPressed() {
        if (!this.mFragments.popBackStackImmediate()) {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.dispatchConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle) {
        this.mFragments.attachActivity(this, this.mContainer, null);
        if (getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            this.mAllLoaderManagers = nonConfigurationInstances.loaders;
        }
        if (bundle != null) {
            this.mFragments.restoreAllState(bundle.getParcelable(FRAGMENTS_TAG), nonConfigurationInstances != null ? nonConfigurationInstances.fragments : null);
        }
        this.mFragments.dispatchCreate();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        return VERSION.SDK_INT >= 11 ? super.onCreatePanelMenu(i, menu) | this.mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater()) : true;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        int i = 0;
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return super.onCreateView(str, context, attributeSet);
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(MSG_REALLY_STOPPED, -1);
        String string = obtainStyledAttributes.getString(MSG_RESUME_PENDING);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this, attributeValue)) {
            return super.onCreateView(str, context, attributeSet);
        }
        if (0 != 0) {
            i = null.getId();
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        if (resourceId != -1) {
            fragment = this.mFragments.findFragmentById(resourceId);
        }
        if (fragment == null && string != null) {
            fragment = this.mFragments.findFragmentByTag(string);
        }
        if (fragment == null && i != -1) {
            fragment = this.mFragments.findFragmentById(i);
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + fragment);
        }
        if (fragment == null) {
            Fragment instantiate = Fragment.instantiate(this, attributeValue);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : i;
            instantiate.mContainerId = i;
            instantiate.mTag = string;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this.mFragments;
            instantiate.onInflate(this, attributeSet, instantiate.mSavedFragmentState);
            this.mFragments.addFragment(instantiate, true);
            fragment = instantiate;
        } else if (fragment.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + attributeValue);
        } else {
            fragment.mInLayout = true;
            if (!fragment.mRetaining) {
                fragment.onInflate(this, attributeSet, fragment.mSavedFragmentState);
            }
            this.mFragments.moveToState(fragment);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        return fragment.mView;
    }

    protected void onDestroy() {
        super.onDestroy();
        doReallyStop(false);
        this.mFragments.dispatchDestroy();
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doDestroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (VERSION.SDK_INT >= 5 || i != 4 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i, keyEvent);
        }
        onBackPressed();
        return true;
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case IcsToast.LENGTH_SHORT:
                return this.mFragments.dispatchOptionsItemSelected(menuItem);
            case R.styleable.SherlockTheme_actionBarSplitStyle:
                return this.mFragments.dispatchContextItemSelected(menuItem);
            default:
                return false;
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.noteStateNotSaved();
    }

    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case IcsToast.LENGTH_SHORT:
                this.mFragments.dispatchOptionsMenuClosed(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(MSG_RESUME_PENDING)) {
            this.mHandler.removeMessages(MSG_RESUME_PENDING);
            onResumeFragments();
        }
        this.mFragments.dispatchPause();
    }

    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(MSG_RESUME_PENDING);
        onResumeFragments();
        this.mFragments.execPendingActions();
    }

    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return super.onPreparePanel(i, view, menu);
        }
        if (this.mOptionsMenuInvalidated) {
            this.mOptionsMenuInvalidated = false;
            menu.clear();
            onCreatePanelMenu(i, menu);
        }
        return onPrepareOptionsPanel(view, menu) | this.mFragments.dispatchPrepareOptionsMenu(menu);
    }

    void onReallyStop() {
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (this.mLoaderManager != null) {
                if (this.mRetaining) {
                    this.mLoaderManager.doRetain();
                } else {
                    this.mLoaderManager.doStop();
                }
            }
        }
        this.mFragments.dispatchReallyStop();
    }

    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(MSG_RESUME_PENDING);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    protected void onResumeFragments() {
        this.mFragments.dispatchResume();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public final Object onRetainNonConfigurationInstance() {
        int i = 0;
        if (this.mStopped) {
            doReallyStop(true);
        }
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        ArrayList retainNonConfig = this.mFragments.retainNonConfig();
        boolean z;
        if (this.mAllLoaderManagers != null) {
            int size = this.mAllLoaderManagers.size();
            LoaderManagerImpl[] loaderManagerImplArr = new LoaderManagerImpl[size];
            int i2 = size - 1;
            while (i2 >= 0) {
                loaderManagerImplArr[i2] = (LoaderManagerImpl) this.mAllLoaderManagers.c(i2);
                i2--;
            }
            z = false;
            while (i < size) {
                LoaderManagerImpl loaderManagerImpl = loaderManagerImplArr[i];
                if (loaderManagerImpl.mRetaining) {
                    z = true;
                } else {
                    loaderManagerImpl.doDestroy();
                    this.mAllLoaderManagers.remove(loaderManagerImpl.mWho);
                }
                i++;
            }
        } else {
            z = false;
        }
        if (retainNonConfig == null && i == 0 && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        Object nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.activity = null;
        nonConfigurationInstances.custom = onRetainCustomNonConfigurationInstance;
        nonConfigurationInstances.children = null;
        nonConfigurationInstances.fragments = retainNonConfig;
        nonConfigurationInstances.loaders = this.mAllLoaderManagers;
        return nonConfigurationInstances;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable saveAllState = this.mFragments.saveAllState();
        if (saveAllState != null) {
            bundle.putParcelable(FRAGMENTS_TAG, saveAllState);
        }
    }

    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(MSG_REALLY_STOPPED);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            if (this.mLoaderManager != null) {
                this.mLoaderManager.doStart();
            } else if (!this.mCheckedForLoaderManager) {
                this.mLoaderManager = getLoaderManager("(root)", this.mLoadersStarted, false);
                if (!(this.mLoaderManager == null || this.mLoaderManager.mStarted)) {
                    this.mLoaderManager.doStart();
                }
            }
            this.mCheckedForLoaderManager = true;
        }
        this.mFragments.dispatchStart();
        if (this.mAllLoaderManagers != null) {
            int size = this.mAllLoaderManagers.size();
            LoaderManagerImpl[] loaderManagerImplArr = new LoaderManagerImpl[size];
            int i = size - 1;
            while (i >= 0) {
                loaderManagerImplArr[i] = (LoaderManagerImpl) this.mAllLoaderManagers.c(i);
                i--;
            }
            int i2 = 0;
            while (i2 < size) {
                LoaderManagerImpl loaderManagerImpl = loaderManagerImplArr[i2];
                loaderManagerImpl.finishRetain();
                loaderManagerImpl.doReportStart();
                i2++;
            }
        }
    }

    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(MSG_REALLY_STOPPED);
        this.mFragments.dispatchStop();
    }

    public void startActivityForResult(Intent intent, int i) {
        if (i == -1 || (-65536 & i) == 0) {
            super.startActivityForResult(intent, i);
        } else {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        if (i == -1) {
            super.startActivityForResult(intent, -1);
        } else if ((-65536 & i) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else {
            super.startActivityForResult(intent, (fragment.mIndex + 1) << 16 + 65535 & i);
        }
    }

    public void supportInvalidateOptionsMenu() {
        if (VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
        } else {
            this.mOptionsMenuInvalidated = true;
        }
    }
}