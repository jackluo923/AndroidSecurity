package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.Fragment.SavedState;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class FragmentManagerImpl extends FragmentManager {
    static final Interpolator ACCELERATE_CUBIC;
    static final Interpolator ACCELERATE_QUINT;
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC;
    static final Interpolator DECELERATE_QUINT;
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    ArrayList mActive;
    FragmentActivity mActivity;
    ArrayList mAdded;
    ArrayList mAvailBackStackIndices;
    ArrayList mAvailIndices;
    ArrayList mBackStack;
    ArrayList mBackStackChangeListeners;
    ArrayList mBackStackIndices;
    FragmentContainer mContainer;
    ArrayList mCreatedMenus;
    int mCurState;
    boolean mDestroyed;
    Runnable mExecCommit;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList mPendingActions;
    SparseArray mStateArray;
    Bundle mStateBundle;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ int val$flags;
        final /* synthetic */ String val$name;

        AnonymousClass_3(String str, int i) {
            this.val$name = str;
            this.val$flags = i;
        }

        public void run() {
            FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, this.val$name, -1, this.val$flags);
        }
    }

    class AnonymousClass_4 implements Runnable {
        final /* synthetic */ int val$flags;
        final /* synthetic */ int val$id;

        AnonymousClass_4(int i, int i2) {
            this.val$id = i;
            this.val$flags = i2;
        }

        public void run() {
            FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, this.val$id, this.val$flags);
        }
    }

    class AnonymousClass_5 implements AnimationListener {
        final /* synthetic */ Fragment val$fragment;

        AnonymousClass_5(Fragment fragment) {
            this.val$fragment = fragment;
        }

        public void onAnimationEnd(Animation animation) {
            if (this.val$fragment.mAnimatingAway != null) {
                this.val$fragment.mAnimatingAway = null;
                FragmentManagerImpl.this.moveToState(this.val$fragment, this.val$fragment.mStateAfterAnimating, 0, 0, false);
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    static {
        boolean z = HONEYCOMB;
        DEBUG = false;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
        DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
        DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
        ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
        ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    }

    FragmentManagerImpl() {
        this.mCurState = 0;
        this.mStateBundle = null;
        this.mStateArray = null;
        this.mExecCommit = new Runnable() {
            public void run() {
                FragmentManagerImpl.this.execPendingActions();
            }
        };
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    static Animation makeFadeAnimation(Context context, float f, float f2) {
        Animation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    static Animation makeOpenCloseAnimation(Context context, float f, float f2, float f3, float f4) {
        Animation animationSet = new AnimationSet(false);
        Animation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        scaleAnimation = new AlphaAnimation(f3, f4);
        scaleAnimation.setInterpolator(DECELERATE_CUBIC);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        return animationSet;
    }

    public static int reverseTransit(int i) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN:
                return FragmentTransaction.TRANSIT_FRAGMENT_CLOSE;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    private void throwException(RuntimeException runtimeException) {
        Log.e(TAG, runtimeException.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        if (this.mActivity != null) {
            try {
                this.mActivity.dump("  ", null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
            }
        } else {
            try {
                dump("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e(TAG, "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public static int transitToStyleIndex(int i, boolean z) {
        switch (i) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN:
                return z ? ANIM_STYLE_OPEN_ENTER : ANIM_STYLE_OPEN_EXIT;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE:
                return z ? ANIM_STYLE_FADE_ENTER : ANIM_STYLE_FADE_EXIT;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE:
                return z ? ANIM_STYLE_CLOSE_ENTER : ANIM_STYLE_CLOSE_EXIT;
            default:
                return -1;
        }
    }

    void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList();
        }
        this.mBackStack.add(backStackRecord);
        reportBackStackChanged();
    }

    public void addFragment(Fragment fragment, boolean z) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (!fragment.mDetached) {
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (z) {
                moveToState(fragment);
            }
        }
    }

    public void addOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        int size;
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList();
                }
                size = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + size + " to " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            } else {
                size = ((Integer) this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1)).intValue();
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + size + " with " + backStackRecord);
                }
                this.mBackStackIndices.set(size, backStackRecord);
            }
        }
        return size;
    }

    public void attachActivity(FragmentActivity fragmentActivity, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mActivity != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mActivity = fragmentActivity;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void attachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v(TAG, "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, i, i2, HONEYCOMB);
            }
        }
    }

    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public void detachFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v(TAG, "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
                moveToState(fragment, ANIM_STYLE_OPEN_ENTER, i, i2, HONEYCOMB);
            }
        }
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        moveToState(ANIM_STYLE_OPEN_EXIT, HONEYCOMB);
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            int i = 0;
            while (i < this.mAdded.size()) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null) {
                    fragment.performConfigurationChanged(configuration);
                }
                i++;
            }
        }
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        int i = 0;
        while (i < this.mAdded.size()) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
            i++;
        }
        return HONEYCOMB;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        moveToState(ANIM_STYLE_OPEN_ENTER, HONEYCOMB);
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z;
        Fragment fragment;
        int i = 0;
        ArrayList arrayList = null;
        if (this.mAdded != null) {
            int i2 = 0;
            z = false;
            while (i2 < this.mAdded.size()) {
                fragment = (Fragment) this.mAdded.get(i2);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                }
                i2++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.mCreatedMenus != null) {
            while (i < this.mCreatedMenus.size()) {
                fragment = (Fragment) this.mCreatedMenus.get(i);
                if (arrayList == null || !arrayList.contains(fragment)) {
                    fragment.onDestroyOptionsMenu();
                }
                i++;
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, HONEYCOMB);
        this.mActivity = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchDestroyView() {
        moveToState(ANIM_STYLE_OPEN_ENTER, HONEYCOMB);
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            int i = 0;
            while (i < this.mAdded.size()) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null) {
                    fragment.performLowMemory();
                }
                i++;
            }
        }
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded == null) {
            return HONEYCOMB;
        }
        int i = 0;
        while (i < this.mAdded.size()) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
            i++;
        }
        return HONEYCOMB;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            int i = 0;
            while (i < this.mAdded.size()) {
                Fragment fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null) {
                    fragment.performOptionsMenuClosed(menu);
                }
                i++;
            }
        }
    }

    public void dispatchPause() {
        moveToState(ANIM_STYLE_CLOSE_EXIT, HONEYCOMB);
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
            return false;
        }
        int i = 0;
        boolean z = false;
        while (i < this.mAdded.size()) {
            Fragment fragment = (Fragment) this.mAdded.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
            i++;
        }
        return z;
    }

    public void dispatchReallyStop() {
        moveToState(ANIM_STYLE_OPEN_EXIT, HONEYCOMB);
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        moveToState(ANIM_STYLE_FADE_ENTER, HONEYCOMB);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        moveToState(ANIM_STYLE_CLOSE_EXIT, HONEYCOMB);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        moveToState(ANIM_STYLE_CLOSE_ENTER, HONEYCOMB);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int i;
        Fragment fragment;
        int i2 = 0;
        String str2 = str + "    ";
        if (this.mActive != null) {
            size = this.mActive.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                i = 0;
                while (i < size) {
                    fragment = (Fragment) this.mActive.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.dump(str2, fileDescriptor, printWriter, strArr);
                    }
                    i++;
                }
            }
        }
        if (this.mAdded != null) {
            size = this.mAdded.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                i = 0;
                while (i < size) {
                    fragment = (Fragment) this.mAdded.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                    i++;
                }
            }
        }
        if (this.mCreatedMenus != null) {
            size = this.mCreatedMenus.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                i = 0;
                while (i < size) {
                    fragment = (Fragment) this.mCreatedMenus.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                    i++;
                }
            }
        }
        if (this.mBackStack != null) {
            size = this.mBackStack.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                i = 0;
                while (i < size) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(backStackRecord.toString());
                    backStackRecord.dump(str2, fileDescriptor, printWriter, strArr);
                    i++;
                }
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null) {
                int size2 = this.mBackStackIndices.size();
                if (size2 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    i = 0;
                    while (i < size2) {
                        backStackRecord = (BackStackRecord) this.mBackStackIndices.get(i);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                        printWriter.println(backStackRecord);
                        i++;
                    }
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null) {
            i = this.mPendingActions.size();
            if (i > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                while (i2 < i) {
                    Runnable runnable = (Runnable) this.mPendingActions.get(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(runnable);
                    i2++;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mActivity=");
        printWriter.println(this.mActivity);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    public void enqueueAction(Runnable runnable, boolean z) {
        if (!z) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mActivity == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == 1) {
                this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                this.mActivity.mHandler.post(this.mExecCommit);
            }
        }
    }

    public boolean execPendingActions() {
        if (this.mExecutingActions) {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        } else if (Looper.myLooper() != this.mActivity.mHandler.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        } else {
            boolean z = false;
            while (true) {
                synchronized (this) {
                    int size;
                    if (this.mPendingActions != null && this.mPendingActions.size() != 0) {
                        size = this.mPendingActions.size();
                        if (this.mTmpActions == null || this.mTmpActions.length < size) {
                            this.mTmpActions = new Runnable[size];
                        }
                        this.mPendingActions.toArray(this.mTmpActions);
                        this.mPendingActions.clear();
                        this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                        this.mExecutingActions = true;
                        int i = 0;
                        while (i < size) {
                            this.mTmpActions[i].run();
                            this.mTmpActions[i] = null;
                            i++;
                        }
                        this.mExecutingActions = false;
                        z = true;
                    }
                    if (this.mHavePendingDeferredStart) {
                        size = 0;
                        int i2 = 0;
                        while (size < this.mActive.size()) {
                            Fragment fragment = (Fragment) this.mActive.get(size);
                            if (!(fragment == null || fragment.mLoaderManager == null)) {
                                i2 |= fragment.mLoaderManager.hasRunningLoaders();
                            }
                            size++;
                        }
                        if (i2 == 0) {
                            this.mHavePendingDeferredStart = false;
                            startPendingDeferredFragments();
                        }
                    }
                    return z;
                }
            }
        }
    }

    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    public Fragment findFragmentById(int i) {
        int i2;
        Fragment fragment;
        if (this.mAdded != null) {
            i2 = this.mAdded.size() - 1;
            while (i2 >= 0) {
                fragment = (Fragment) this.mAdded.get(i2);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
                i2--;
            }
        }
        if (this.mActive != null) {
            i2 = this.mActive.size() - 1;
            while (i2 >= 0) {
                fragment = (Fragment) this.mActive.get(i2);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
                i2--;
            }
        }
        return null;
    }

    public Fragment findFragmentByTag(String str) {
        int i;
        Fragment fragment;
        if (!(this.mAdded == null || str == null)) {
            i = this.mAdded.size() - 1;
            while (i >= 0) {
                fragment = (Fragment) this.mAdded.get(i);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
                i--;
            }
        }
        if (!(this.mActive == null || str == null)) {
            i = this.mActive.size() - 1;
            while (i >= 0) {
                fragment = (Fragment) this.mActive.get(i);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
                i--;
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        if (!(this.mActive == null || str == null)) {
            int i = this.mActive.size() - 1;
            while (i >= 0) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null) {
                    fragment = fragment.findFragmentByWho(str);
                    if (fragment != null) {
                        return fragment;
                    }
                }
                i--;
            }
        }
        return null;
    }

    public void freeBackStackIndex(int i) {
        synchronized (this) {
            this.mBackStackIndices.set(i, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + i);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(i));
        }
    }

    public BackStackEntry getBackStackEntryAt(int i) {
        return (BackStackEntry) this.mBackStack.get(i);
    }

    public int getBackStackEntryCount() {
        return this.mBackStack != null ? this.mBackStack.size() : 0;
    }

    public Fragment getFragment(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = (Fragment) this.mActive.get(i);
        if (fragment != null) {
            return fragment;
        }
        throwException(new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public List getFragments() {
        return this.mActive;
    }

    public void hideFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, true, i2);
                if (loadAnimation != null) {
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    Animation loadAnimation(Fragment fragment, int i, boolean z, int i2) {
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.mNextAnim);
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.mNextAnim != 0) {
            onCreateAnimation = AnimationUtils.loadAnimation(this.mActivity, fragment.mNextAnim);
            if (onCreateAnimation != null) {
                return onCreateAnimation;
            }
        }
        if (i == 0) {
            return null;
        }
        int transitToStyleIndex = transitToStyleIndex(i, z);
        if (transitToStyleIndex < 0) {
            return null;
        }
        switch (transitToStyleIndex) {
            case ANIM_STYLE_OPEN_ENTER:
                return makeOpenCloseAnimation(this.mActivity, 1.125f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f);
            case ANIM_STYLE_OPEN_EXIT:
                return makeOpenCloseAnimation(this.mActivity, 1.0f, 0.975f, 1.0f, BitmapDescriptorFactory.HUE_RED);
            case ANIM_STYLE_CLOSE_ENTER:
                return makeOpenCloseAnimation(this.mActivity, 0.975f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f);
            case ANIM_STYLE_CLOSE_EXIT:
                return makeOpenCloseAnimation(this.mActivity, 1.0f, 1.075f, 1.0f, BitmapDescriptorFactory.HUE_RED);
            case ANIM_STYLE_FADE_ENTER:
                return makeFadeAnimation(this.mActivity, BitmapDescriptorFactory.HUE_RED, 1.0f);
            case ANIM_STYLE_FADE_EXIT:
                return makeFadeAnimation(this.mActivity, 1.0f, BitmapDescriptorFactory.HUE_RED);
            default:
                if (i2 == 0 && this.mActivity.getWindow() != null) {
                    i2 = this.mActivity.getWindow().getAttributes().windowAnimations;
                }
                return i == 0 ? null : null;
        }
    }

    void makeActive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList();
                }
                fragment.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(fragment);
            } else {
                fragment.setIndex(((Integer) this.mAvailIndices.remove(this.mAvailIndices.size() - 1)).intValue(), this.mParent);
                this.mActive.set(fragment.mIndex, fragment);
            }
            if (DEBUG) {
                Log.v(TAG, "Allocated fragment index " + fragment);
            }
        }
    }

    void makeInactive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + fragment);
            }
            this.mActive.set(fragment.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList();
            }
            this.mAvailIndices.add(Integer.valueOf(fragment.mIndex));
            this.mActivity.invalidateSupportFragment(fragment.mWho);
            fragment.initState();
        }
    }

    void moveToState(int i, int i2, int i3, boolean z) {
        if (this.mActivity == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || this.mCurState != i) {
            this.mCurState = i;
            if (this.mActive != null) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < this.mActive.size()) {
                    int i6;
                    Fragment fragment = (Fragment) this.mActive.get(i4);
                    if (fragment != null) {
                        moveToState(fragment, i, i2, i3, HONEYCOMB);
                        if (fragment.mLoaderManager != null) {
                            i6 = i5 | fragment.mLoaderManager.hasRunningLoaders();
                            i4++;
                            i5 = i6;
                        }
                    }
                    i6 = i5;
                    i4++;
                    i5 = i6;
                }
                if (i5 == 0) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mActivity != null && this.mCurState == 5) {
                    this.mActivity.supportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }

    void moveToState(int i, boolean z) {
        moveToState(i, 0, 0, z);
    }

    void moveToState(Fragment fragment) {
        moveToState(fragment, this.mCurState, 0, 0, false);
    }

    void moveToState(Fragment fragment, int i, int i2, int i3, boolean z) {
        if ((!fragment.mAdded || fragment.mDetached) && i > 1) {
            i = 1;
        }
        if (fragment.mRemoving && i > fragment.mState) {
            i = fragment.mState;
        }
        if (fragment.mDeferStart && fragment.mState < 4 && i > 3) {
            i = 3;
        }
        if (fragment.mState < i) {
            if (!fragment.mFromLayout || fragment.mInLayout) {
                if (fragment.mAnimatingAway != null) {
                    fragment.mAnimatingAway = null;
                    moveToState(fragment, fragment.mStateAfterAnimating, 0, 0, true);
                }
                ViewGroup viewGroup;
                Animation loadAnimation;
                switch (fragment.mState) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        if (DEBUG) {
                            Log.v(TAG, "moveto CREATED: " + fragment);
                        }
                        if (fragment.mSavedFragmentState != null) {
                            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            fragment.mTarget = getFragment(fragment.mSavedFragmentState, TARGET_STATE_TAG);
                            if (fragment.mTarget != null) {
                                fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
                            }
                            fragment.mUserVisibleHint = fragment.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
                            if (!fragment.mUserVisibleHint) {
                                fragment.mDeferStart = true;
                                if (i > 3) {
                                    i = 3;
                                }
                            }
                        }
                        fragment.mActivity = this.mActivity;
                        fragment.mParentFragment = this.mParent;
                        fragment.mFragmentManager = this.mParent != null ? this.mParent.mChildFragmentManager : this.mActivity.mFragments;
                        fragment.mCalled = false;
                        fragment.onAttach(this.mActivity);
                        if (fragment.mCalled) {
                            if (fragment.mParentFragment == null) {
                                this.mActivity.onAttachFragment(fragment);
                            }
                            if (!fragment.mRetaining) {
                                fragment.performCreate(fragment.mSavedFragmentState);
                            }
                            fragment.mRetaining = false;
                            if (fragment.mFromLayout) {
                                fragment.mView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
                                if (fragment.mView != null) {
                                    fragment.mInnerView = fragment.mView;
                                    fragment.mView = NoSaveStateFrameLayout.wrap(fragment.mView);
                                    if (fragment.mHidden) {
                                        fragment.mView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                                    }
                                    fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                                } else {
                                    fragment.mInnerView = null;
                                }
                            }
                            if (i > 1) {
                                if (DEBUG) {
                                    Log.v(TAG, "moveto ACTIVITY_CREATED: " + fragment);
                                }
                                if (!fragment.mFromLayout) {
                                    if (fragment.mContainerId == 0) {
                                        viewGroup = (ViewGroup) this.mContainer.findViewById(fragment.mContainerId);
                                        if (viewGroup == null && !fragment.mRestored) {
                                            throwException(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + fragment.getResources().getResourceName(fragment.mContainerId) + ") for fragment " + fragment));
                                        }
                                    } else {
                                        viewGroup = null;
                                    }
                                    fragment.mContainer = viewGroup;
                                    fragment.mView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), viewGroup, fragment.mSavedFragmentState);
                                    if (fragment.mView == null) {
                                        fragment.mInnerView = fragment.mView;
                                        fragment.mView = NoSaveStateFrameLayout.wrap(fragment.mView);
                                        if (viewGroup != null) {
                                            loadAnimation = loadAnimation(fragment, i2, true, i3);
                                            if (loadAnimation != null) {
                                                fragment.mView.startAnimation(loadAnimation);
                                            }
                                            viewGroup.addView(fragment.mView);
                                        }
                                        if (fragment.mHidden) {
                                            fragment.mView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                                        }
                                        fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                                    } else {
                                        fragment.mInnerView = null;
                                    }
                                }
                                fragment.performActivityCreated(fragment.mSavedFragmentState);
                                if (fragment.mView != null) {
                                    fragment.restoreViewState(fragment.mSavedFragmentState);
                                }
                                fragment.mSavedFragmentState = null;
                            }
                            if (i > 3) {
                                if (DEBUG) {
                                    Log.v(TAG, "moveto STARTED: " + fragment);
                                }
                                fragment.performStart();
                            }
                            if (i > 4) {
                                if (DEBUG) {
                                    Log.v(TAG, "moveto RESUMED: " + fragment);
                                }
                                fragment.mResumed = true;
                                fragment.performResume();
                                fragment.mSavedFragmentState = null;
                                fragment.mSavedViewState = null;
                            }
                        } else {
                            throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onAttach()");
                        }
                    case ANIM_STYLE_OPEN_ENTER:
                        if (i > 1) {
                            if (DEBUG) {
                                Log.v(TAG, "moveto ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.mFromLayout) {
                                if (fragment.mContainerId == 0) {
                                    viewGroup = null;
                                } else {
                                    viewGroup = (ViewGroup) this.mContainer.findViewById(fragment.mContainerId);
                                    throwException(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + fragment.getResources().getResourceName(fragment.mContainerId) + ") for fragment " + fragment));
                                }
                                fragment.mContainer = viewGroup;
                                fragment.mView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), viewGroup, fragment.mSavedFragmentState);
                                if (fragment.mView == null) {
                                    fragment.mInnerView = null;
                                } else {
                                    fragment.mInnerView = fragment.mView;
                                    fragment.mView = NoSaveStateFrameLayout.wrap(fragment.mView);
                                    if (viewGroup != null) {
                                        loadAnimation = loadAnimation(fragment, i2, true, i3);
                                        if (loadAnimation != null) {
                                            fragment.mView.startAnimation(loadAnimation);
                                        }
                                        viewGroup.addView(fragment.mView);
                                    }
                                    if (fragment.mHidden) {
                                        fragment.mView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                                    }
                                    fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                                }
                            }
                            fragment.performActivityCreated(fragment.mSavedFragmentState);
                            if (fragment.mView != null) {
                                fragment.restoreViewState(fragment.mSavedFragmentState);
                            }
                            fragment.mSavedFragmentState = null;
                        }
                        if (i > 3) {
                            if (DEBUG) {
                                Log.v(TAG, "moveto STARTED: " + fragment);
                            }
                            fragment.performStart();
                        }
                        if (i > 4) {
                            if (DEBUG) {
                                Log.v(TAG, "moveto RESUMED: " + fragment);
                            }
                            fragment.mResumed = true;
                            fragment.performResume();
                            fragment.mSavedFragmentState = null;
                            fragment.mSavedViewState = null;
                        }
                        break;
                    case ANIM_STYLE_OPEN_EXIT:
                    case ANIM_STYLE_CLOSE_ENTER:
                        if (i > 3) {
                            if (DEBUG) {
                                Log.v(TAG, "moveto STARTED: " + fragment);
                            }
                            fragment.performStart();
                        }
                        if (i > 4) {
                            if (DEBUG) {
                                Log.v(TAG, "moveto RESUMED: " + fragment);
                            }
                            fragment.mResumed = true;
                            fragment.performResume();
                            fragment.mSavedFragmentState = null;
                            fragment.mSavedViewState = null;
                        }
                        break;
                    case ANIM_STYLE_CLOSE_EXIT:
                        if (i > 4) {
                            if (DEBUG) {
                                Log.v(TAG, "moveto RESUMED: " + fragment);
                            }
                            fragment.mResumed = true;
                            fragment.performResume();
                            fragment.mSavedFragmentState = null;
                            fragment.mSavedViewState = null;
                        }
                        break;
                }
            } else {
                return;
            }
        } else if (fragment.mState > i) {
            View view;
            Animation loadAnimation2;
            switch (fragment.mState) {
                case ANIM_STYLE_OPEN_ENTER:
                    if (i < 1) {
                        if (this.mDestroyed && fragment.mAnimatingAway != null) {
                            view = fragment.mAnimatingAway;
                            fragment.mAnimatingAway = null;
                            view.clearAnimation();
                        }
                        if (fragment.mAnimatingAway != null) {
                            fragment.mStateAfterAnimating = i;
                            i = 1;
                        } else {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom CREATED: " + fragment);
                            }
                            if (!fragment.mRetaining) {
                                fragment.performDestroy();
                            }
                            fragment.mCalled = false;
                            fragment.onDetach();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (!z) {
                                if (fragment.mRetaining) {
                                    fragment.mActivity = null;
                                    fragment.mFragmentManager = null;
                                } else {
                                    makeInactive(fragment);
                                }
                            }
                        }
                    }
                    break;
                case ANIM_STYLE_OPEN_EXIT:
                    if (i < 2) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        if (!(fragment.mView == null || this.mActivity.isFinishing() || fragment.mSavedViewState != null)) {
                            saveFragmentViewState(fragment);
                        }
                        fragment.performDestroyView();
                        if (!(fragment.mView == null || fragment.mContainer == null)) {
                            loadAnimation2 = (this.mCurState <= 0 || this.mDestroyed) ? null : loadAnimation(fragment, i2, HONEYCOMB, i3);
                            if (loadAnimation2 != null) {
                                fragment.mAnimatingAway = fragment.mView;
                                fragment.mStateAfterAnimating = i;
                                loadAnimation2.setAnimationListener(new AnonymousClass_5(fragment));
                                fragment.mView.startAnimation(loadAnimation2);
                            }
                            fragment.mContainer.removeView(fragment.mView);
                        }
                        fragment.mContainer = null;
                        fragment.mView = null;
                        fragment.mInnerView = null;
                    }
                    if (i < 1) {
                        view = fragment.mAnimatingAway;
                        fragment.mAnimatingAway = null;
                        view.clearAnimation();
                        if (fragment.mAnimatingAway != null) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom CREATED: " + fragment);
                            }
                            if (fragment.mRetaining) {
                                fragment.performDestroy();
                            }
                            fragment.mCalled = false;
                            fragment.onDetach();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.mRetaining) {
                                    fragment.mActivity = null;
                                    fragment.mFragmentManager = null;
                                } else {
                                    makeInactive(fragment);
                                }
                            }
                        } else {
                            fragment.mStateAfterAnimating = i;
                            i = 1;
                        }
                    }
                    break;
                case ANIM_STYLE_CLOSE_ENTER:
                    if (i < 3) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom STOPPED: " + fragment);
                        }
                        fragment.performReallyStop();
                    }
                    if (i < 2) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        saveFragmentViewState(fragment);
                        fragment.performDestroyView();
                        if (loadAnimation2 != null) {
                            fragment.mAnimatingAway = fragment.mView;
                            fragment.mStateAfterAnimating = i;
                            loadAnimation2.setAnimationListener(new AnonymousClass_5(fragment));
                            fragment.mView.startAnimation(loadAnimation2);
                        }
                        fragment.mContainer.removeView(fragment.mView);
                        fragment.mContainer = null;
                        fragment.mView = null;
                        fragment.mInnerView = null;
                    }
                    if (i < 1) {
                        view = fragment.mAnimatingAway;
                        fragment.mAnimatingAway = null;
                        view.clearAnimation();
                        if (fragment.mAnimatingAway != null) {
                            fragment.mStateAfterAnimating = i;
                            i = 1;
                        } else {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom CREATED: " + fragment);
                            }
                            if (fragment.mRetaining) {
                                fragment.performDestroy();
                            }
                            fragment.mCalled = false;
                            fragment.onDetach();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.mRetaining) {
                                    makeInactive(fragment);
                                } else {
                                    fragment.mActivity = null;
                                    fragment.mFragmentManager = null;
                                }
                            }
                        }
                    }
                    break;
                case ANIM_STYLE_CLOSE_EXIT:
                    if (i < 4) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom STARTED: " + fragment);
                        }
                        fragment.performStop();
                    }
                    if (i < 3) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom STOPPED: " + fragment);
                        }
                        fragment.performReallyStop();
                    }
                    if (i < 2) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        saveFragmentViewState(fragment);
                        fragment.performDestroyView();
                        if (loadAnimation2 != null) {
                            fragment.mAnimatingAway = fragment.mView;
                            fragment.mStateAfterAnimating = i;
                            loadAnimation2.setAnimationListener(new AnonymousClass_5(fragment));
                            fragment.mView.startAnimation(loadAnimation2);
                        }
                        fragment.mContainer.removeView(fragment.mView);
                        fragment.mContainer = null;
                        fragment.mView = null;
                        fragment.mInnerView = null;
                    }
                    if (i < 1) {
                        view = fragment.mAnimatingAway;
                        fragment.mAnimatingAway = null;
                        view.clearAnimation();
                        if (fragment.mAnimatingAway != null) {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom CREATED: " + fragment);
                            }
                            if (fragment.mRetaining) {
                                fragment.performDestroy();
                            }
                            fragment.mCalled = false;
                            fragment.onDetach();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.mRetaining) {
                                    fragment.mActivity = null;
                                    fragment.mFragmentManager = null;
                                } else {
                                    makeInactive(fragment);
                                }
                            }
                        } else {
                            fragment.mStateAfterAnimating = i;
                            i = 1;
                        }
                    }
                    break;
                case ANIM_STYLE_FADE_ENTER:
                    if (i < 5) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom RESUMED: " + fragment);
                        }
                        fragment.performPause();
                        fragment.mResumed = false;
                    }
                    if (i < 4) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom STARTED: " + fragment);
                        }
                        fragment.performStop();
                    }
                    if (i < 3) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom STOPPED: " + fragment);
                        }
                        fragment.performReallyStop();
                    }
                    if (i < 2) {
                        if (DEBUG) {
                            Log.v(TAG, "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        saveFragmentViewState(fragment);
                        fragment.performDestroyView();
                        if (loadAnimation2 != null) {
                            fragment.mAnimatingAway = fragment.mView;
                            fragment.mStateAfterAnimating = i;
                            loadAnimation2.setAnimationListener(new AnonymousClass_5(fragment));
                            fragment.mView.startAnimation(loadAnimation2);
                        }
                        fragment.mContainer.removeView(fragment.mView);
                        fragment.mContainer = null;
                        fragment.mView = null;
                        fragment.mInnerView = null;
                    }
                    if (i < 1) {
                        view = fragment.mAnimatingAway;
                        fragment.mAnimatingAway = null;
                        view.clearAnimation();
                        if (fragment.mAnimatingAway != null) {
                            fragment.mStateAfterAnimating = i;
                            i = 1;
                        } else {
                            if (DEBUG) {
                                Log.v(TAG, "movefrom CREATED: " + fragment);
                            }
                            if (fragment.mRetaining) {
                                fragment.performDestroy();
                            }
                            fragment.mCalled = false;
                            fragment.onDetach();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.mRetaining) {
                                    makeInactive(fragment);
                                } else {
                                    fragment.mActivity = null;
                                    fragment.mFragmentManager = null;
                                }
                            }
                        }
                    }
                    break;
                default:
                    break;
            }
        }
        fragment.mState = i;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    public void performPendingDeferredStart(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
        } else {
            fragment.mDeferStart = false;
            moveToState(fragment, this.mCurState, 0, 0, false);
        }
    }

    public void popBackStack() {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, -1, 0);
            }
        }, HONEYCOMB);
    }

    public void popBackStack(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        enqueueAction(new AnonymousClass_4(i, i2), HONEYCOMB);
    }

    public void popBackStack(String str, int i) {
        enqueueAction(new AnonymousClass_3(str, i), HONEYCOMB);
    }

    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, null, -1, 0);
    }

    public boolean popBackStackImmediate(int i, int i2) {
        checkStateLoss();
        executePendingTransactions();
        if (i >= 0) {
            return popBackStackState(this.mActivity.mHandler, null, i, i2);
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    public boolean popBackStackImmediate(String str, int i) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, str, -1, i);
    }

    boolean popBackStackState(Handler handler, String str, int i, int i2) {
        if (this.mBackStack == null) {
            return HONEYCOMB;
        }
        int size;
        if (str == null && i < 0 && (i2 & 1) == 0) {
            size = this.mBackStack.size() - 1;
            if (size < 0) {
                return HONEYCOMB;
            }
            ((BackStackRecord) this.mBackStack.remove(size)).popFromBackStack(true);
            reportBackStackChanged();
        } else {
            int size2;
            boolean z = -1;
            if (str != null || i >= 0) {
                BackStackRecord backStackRecord;
                size2 = this.mBackStack.size() - 1;
                while (size2 >= 0) {
                    backStackRecord = (BackStackRecord) this.mBackStack.get(size2);
                    if (str == null || !str.equals(backStackRecord.getName())) {
                        if (i >= 0 && i == backStackRecord.mIndex) {
                            break;
                        }
                        size2--;
                    } else {
                        break;
                    }
                }
                if (size2 < 0) {
                    return HONEYCOMB;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        backStackRecord = (BackStackRecord) this.mBackStack.get(size2);
                        if ((str == null || !str.equals(backStackRecord.getName())) && (i < 0 || i != backStackRecord.mIndex)) {
                            break;
                        }
                        size2--;
                    }
                }
                size = size2;
            }
            if (size == this.mBackStack.size() - 1) {
                return HONEYCOMB;
            }
            ArrayList arrayList = new ArrayList();
            size2 = this.mBackStack.size() - 1;
            while (size2 > size) {
                arrayList.add(this.mBackStack.remove(size2));
                size2--;
            }
            int size3 = arrayList.size() - 1;
            int i3 = 0;
            while (i3 <= size3) {
                if (DEBUG) {
                    Log.v(TAG, "Popping back stack state: " + arrayList.get(i3));
                }
                ((BackStackRecord) arrayList.get(i3)).popFromBackStack(i3 == size3);
                i3++;
            }
            reportBackStackChanged();
        }
        return true;
    }

    public void putFragment(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public void removeFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        int i3 = !fragment.isInBackStack();
        if (!fragment.mDetached || i3 != 0) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            moveToState(fragment, i3 != 0 ? 0 : 1, i, i2, HONEYCOMB);
        }
    }

    public void removeOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            int i = 0;
            while (i < this.mBackStackChangeListeners.size()) {
                ((OnBackStackChangedListener) this.mBackStackChangeListeners.get(i)).onBackStackChanged();
                i++;
            }
        }
    }

    void restoreAllState(Parcelable parcelable, ArrayList arrayList) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                int i;
                Fragment fragment;
                if (arrayList != null) {
                    i = 0;
                    while (i < arrayList.size()) {
                        fragment = (Fragment) arrayList.get(i);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                        fragmentState.mInstance = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
                            fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                        }
                        i++;
                    }
                }
                this.mActive = new ArrayList(fragmentManagerState.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                int i2 = 0;
                while (i2 < fragmentManagerState.mActive.length) {
                    FragmentState fragmentState2 = fragmentManagerState.mActive[i2];
                    if (fragmentState2 != null) {
                        Fragment instantiate = fragmentState2.instantiate(this.mActivity, this.mParent);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: active #" + i2 + ": " + instantiate);
                        }
                        this.mActive.add(instantiate);
                        fragmentState2.mInstance = null;
                    } else {
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: avail #" + i2);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i2));
                    }
                    i2++;
                }
                if (arrayList != null) {
                    int i3 = 0;
                    while (i3 < arrayList.size()) {
                        fragment = (Fragment) arrayList.get(i3);
                        if (fragment.mTargetIndex >= 0) {
                            if (fragment.mTargetIndex < this.mActive.size()) {
                                fragment.mTarget = (Fragment) this.mActive.get(fragment.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + fragment + " target no longer exists: " + fragment.mTargetIndex);
                                fragment.mTarget = null;
                            }
                        }
                        i3++;
                    }
                }
                if (fragmentManagerState.mAdded != null) {
                    this.mAdded = new ArrayList(fragmentManagerState.mAdded.length);
                    i = 0;
                    while (i < fragmentManagerState.mAdded.length) {
                        fragment = (Fragment) this.mActive.get(fragmentManagerState.mAdded[i]);
                        if (fragment == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i]));
                        }
                        fragment.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: added #" + i + ": " + fragment);
                        }
                        if (this.mAdded.contains(fragment)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(fragment);
                        i++;
                    }
                } else {
                    this.mAdded = null;
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
                    i2 = 0;
                    while (i2 < fragmentManagerState.mBackStack.length) {
                        BackStackRecord instantiate2 = fragmentManagerState.mBackStack[i2].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: back stack #" + i2 + " (index " + instantiate2.mIndex + "): " + instantiate2);
                            instantiate2.dump("  ", new PrintWriter(new LogWriter(TAG)), HONEYCOMB);
                        }
                        this.mBackStack.add(instantiate2);
                        if (instantiate2.mIndex >= 0) {
                            setBackStackIndex(instantiate2.mIndex, instantiate2);
                        }
                        i2++;
                    }
                } else {
                    this.mBackStack = null;
                }
            }
        }
    }

    ArrayList retainNonConfig() {
        ArrayList arrayList = null;
        if (this.mActive != null) {
            int i = 0;
            while (i < this.mActive.size()) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (DEBUG) {
                        Log.v(TAG, "retainNonConfig: keeping retained " + fragment);
                    }
                }
                i++;
            }
        }
        return arrayList;
    }

    Parcelable saveAllState() {
        BackStackState[] backStackStateArr = null;
        execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null || this.mActive.size() <= 0) {
            return null;
        }
        int i;
        int size = this.mActive.size();
        FragmentState[] fragmentStateArr = new FragmentState[size];
        int i2 = 0;
        boolean z = false;
        while (i2 < size) {
            boolean z2;
            Fragment fragment = (Fragment) this.mActive.get(i2);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i2] = fragmentState;
                if (fragment.mState <= 0 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
                } else {
                    fragmentState.mSavedFragmentState = saveFragmentBasicState(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fragmentState.mSavedFragmentState, TARGET_STATE_TAG, fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, fragment.mTargetRequestCode);
                        }
                    }
                }
                if (DEBUG) {
                    Log.v(TAG, "Saved state of " + fragment + ": " + fragmentState.mSavedFragmentState);
                }
                z2 = true;
            } else {
                int i3 = i;
            }
            i2++;
            z = z2;
        }
        if (i != 0) {
            int[] iArr;
            FragmentManagerState fragmentManagerState;
            if (this.mAdded != null) {
                i2 = this.mAdded.size();
                if (i2 > 0) {
                    iArr = new int[i2];
                    i = 0;
                    while (i < i2) {
                        iArr[i] = ((Fragment) this.mAdded.get(i)).mIndex;
                        if (iArr[i] < 0) {
                            throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i) + " has cleared index: " + iArr[i]));
                        }
                        if (DEBUG) {
                            Log.v(TAG, "saveAllState: adding fragment #" + i + ": " + this.mAdded.get(i));
                        }
                        i++;
                    }
                    if (this.mBackStack != null) {
                        i2 = this.mBackStack.size();
                        if (i2 > 0) {
                            backStackStateArr = new BackStackState[i2];
                            i = 0;
                            while (i < i2) {
                                backStackStateArr[i] = new BackStackState(this, (BackStackRecord) this.mBackStack.get(i));
                                if (DEBUG) {
                                    Log.v(TAG, "saveAllState: adding back stack #" + i + ": " + this.mBackStack.get(i));
                                }
                                i++;
                            }
                        }
                    }
                    fragmentManagerState = new FragmentManagerState();
                    fragmentManagerState.mActive = fragmentStateArr;
                    fragmentManagerState.mAdded = iArr;
                    fragmentManagerState.mBackStack = backStackStateArr;
                    return fragmentManagerState;
                }
            }
            iArr = null;
            if (this.mBackStack != null) {
                i2 = this.mBackStack.size();
                if (i2 > 0) {
                    backStackStateArr = new BackStackState[i2];
                    i = 0;
                    while (i < i2) {
                        backStackStateArr[i] = new BackStackState(this, (BackStackRecord) this.mBackStack.get(i));
                        if (DEBUG) {
                            Log.v(TAG, "saveAllState: adding back stack #" + i + ": " + this.mBackStack.get(i));
                        }
                        i++;
                    }
                }
            }
            fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.mActive = fragmentStateArr;
            fragmentManagerState.mAdded = iArr;
            fragmentManagerState.mBackStack = backStackStateArr;
            return fragmentManagerState;
        } else if (!DEBUG) {
            return null;
        } else {
            Log.v(TAG, "saveAllState: no fragments!");
            return null;
        }
    }

    Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        if (this.mStateBundle.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (fragment.mView != null) {
            saveFragmentViewState(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, fragment.mUserVisibleHint);
        }
        return bundle;
    }

    public SavedState saveFragmentInstanceState(Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0) {
            return null;
        }
        Bundle saveFragmentBasicState = saveFragmentBasicState(fragment);
        return saveFragmentBasicState != null ? new SavedState(saveFragmentBasicState) : null;
    }

    void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray();
            } else {
                this.mStateArray.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                fragment.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    public void setBackStackIndex(int i, BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList();
            }
            int size = this.mBackStackIndices.size();
            if (i < size) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + i + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(i, backStackRecord);
            } else {
                while (size < i) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + i + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
        }
    }

    public void showFragment(Fragment fragment, int i, int i2) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, i, true, i2);
                if (loadAnimation != null) {
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(HONEYCOMB);
        }
    }

    void startPendingDeferredFragments() {
        if (this.mActive != null) {
            int i = 0;
            while (i < this.mActive.size()) {
                Fragment fragment = (Fragment) this.mActive.get(i);
                if (fragment != null) {
                    performPendingDeferredStart(fragment);
                }
                i++;
            }
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, stringBuilder);
        } else {
            DebugUtils.buildShortClassTag(this.mActivity, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }
}