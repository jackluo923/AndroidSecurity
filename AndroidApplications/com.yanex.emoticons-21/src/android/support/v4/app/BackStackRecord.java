package android.support.v4.app;

import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.b.b;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class BackStackRecord extends FragmentTransaction implements BackStackEntry, Runnable {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    Op mTail;
    int mTransition;
    int mTransitionStyle;

    final class Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList removed;

        Op() {
        }
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mAllowAddToBackStack = true;
        this.mIndex = -1;
        this.mManager = fragmentManagerImpl;
    }

    private void doAddOp(int i, Fragment fragment, String str, int i2) {
        fragment.mFragmentManager = this.mManager;
        if (str != null) {
            if (fragment.mTag == null || str.equals(fragment.mTag)) {
                fragment.mTag = str;
            } else {
                throw new IllegalStateException(new StringBuilder("Can't change tag of fragment ").append(fragment).append(": was ").append(fragment.mTag).append(" now ").append(str).toString());
            }
        }
        if (i != 0) {
            if (fragment.mFragmentId == 0 || fragment.mFragmentId == i) {
                fragment.mFragmentId = i;
                fragment.mContainerId = i;
            } else {
                throw new IllegalStateException(new StringBuilder("Can't change container ID of fragment ").append(fragment).append(": was ").append(fragment.mFragmentId).append(" now ").append(i).toString());
            }
        }
        Op op = new Op();
        op.cmd = i2;
        op.fragment = fragment;
        addOp(op);
    }

    public final FragmentTransaction add(int i, Fragment fragment) {
        doAddOp(i, fragment, null, OP_ADD);
        return this;
    }

    public final FragmentTransaction add(int i, Fragment fragment, String str) {
        doAddOp(i, fragment, str, OP_ADD);
        return this;
    }

    public final FragmentTransaction add(Fragment fragment, String str) {
        doAddOp(OP_NULL, fragment, str, OP_ADD);
        return this;
    }

    final void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        this.mNumOp++;
    }

    public final FragmentTransaction addToBackStack(String str) {
        if (this.mAllowAddToBackStack) {
            this.mAddToBackStack = true;
            this.mName = str;
            return this;
        } else {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
    }

    public final FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    final void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v(TAG, new StringBuilder("Bump nesting in ").append(this).append(" by ").append(i).toString());
            }
            Op op = this.mHead;
            while (op != null) {
                Fragment fragment;
                if (op.fragment != null) {
                    fragment = op.fragment;
                    fragment.mBackStackNesting += i;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v(TAG, new StringBuilder("Bump nesting of ").append(op.fragment).append(" to ").append(op.fragment.mBackStackNesting).toString());
                    }
                }
                if (op.removed != null) {
                    int i2 = op.removed.size() - 1;
                    while (i2 >= 0) {
                        fragment = (Fragment) op.removed.get(i2);
                        fragment.mBackStackNesting += i;
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v(TAG, new StringBuilder("Bump nesting of ").append(fragment).append(" to ").append(fragment.mBackStackNesting).toString());
                        }
                        i2--;
                    }
                }
                op = op.next;
            }
        }
    }

    public final int commit() {
        return commitInternal(false);
    }

    public final int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    final int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, new StringBuilder("Commit: ").append(this).toString());
            dump("  ", null, new PrintWriter(new b(TAG)), null);
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    public final FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public final FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(str, printWriter, true);
    }

    public final void dump(String str, PrintWriter printWriter, boolean z) {
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (!(this.mEnterAnim == 0 && this.mExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (!(this.mPopEnterAnim == 0 && this.mPopExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (!(this.mBreadCrumbTitleRes == 0 && this.mBreadCrumbTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (!(this.mBreadCrumbShortTitleRes == 0 && this.mBreadCrumbShortTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str2 = str + "    ";
            int i = 0;
            Op op = this.mHead;
            while (op != null) {
                String str3;
                switch (op.cmd) {
                    case OP_NULL:
                        str3 = "NULL";
                        break;
                    case OP_ADD:
                        str3 = "ADD";
                        break;
                    case OP_REPLACE:
                        str3 = "REPLACE";
                        break;
                    case OP_REMOVE:
                        str3 = "REMOVE";
                        break;
                    case OP_HIDE:
                        str3 = "HIDE";
                        break;
                    case OP_SHOW:
                        str3 = "SHOW";
                        break;
                    case OP_DETACH:
                        str3 = "DETACH";
                        break;
                    case OP_ATTACH:
                        str3 = "ATTACH";
                        break;
                    default:
                        str3 = new StringBuilder("cmd=").append(op.cmd).toString();
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str3);
                printWriter.print(" ");
                printWriter.println(op.fragment);
                if (z) {
                    if (!(op.enterAnim == 0 && op.exitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.enterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.exitAnim));
                    }
                    if (!(op.popEnterAnim == 0 && op.popExitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.popEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.popExitAnim));
                    }
                }
                if (op.removed != null && op.removed.size() > 0) {
                    int i2 = 0;
                    while (i2 < op.removed.size()) {
                        printWriter.print(str2);
                        if (op.removed.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str2);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(op.removed.get(i2));
                        i2++;
                    }
                }
                op = op.next;
                i++;
            }
        }
    }

    public final CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mActivity.getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    public final int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    public final CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mActivity.getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    public final int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    public final int getId() {
        return this.mIndex;
    }

    public final String getName() {
        return this.mName;
    }

    public final int getTransition() {
        return this.mTransition;
    }

    public final int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    public final FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public final boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    public final boolean isEmpty() {
        return this.mNumOp == 0;
    }

    public final void popFromBackStack(boolean z) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, new StringBuilder("popFromBackStack: ").append(this).toString());
            dump("  ", null, new PrintWriter(new b(TAG)), null);
        }
        bumpBackStackNesting(-1);
        Op op = this.mTail;
        while (op != null) {
            Fragment fragment;
            switch (op.cmd) {
                case OP_ADD:
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popExitAnim;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case OP_REPLACE:
                    fragment = op.fragment;
                    if (fragment != null) {
                        fragment.mNextAnim = op.popExitAnim;
                        this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    }
                    if (op.removed != null) {
                        int i = 0;
                        while (i < op.removed.size()) {
                            fragment = (Fragment) op.removed.get(i);
                            fragment.mNextAnim = op.popEnterAnim;
                            this.mManager.addFragment(fragment, false);
                            i++;
                        }
                    }
                    break;
                case OP_REMOVE:
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.addFragment(fragment, false);
                    break;
                case OP_HIDE:
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.showFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case OP_SHOW:
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popExitAnim;
                    this.mManager.hideFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case OP_DETACH:
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.attachFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                case OP_ATTACH:
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.detachFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder("Unknown cmd: ").append(op.cmd).toString());
            }
            op = op.prev;
        }
        if (z) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle, true);
        }
        if (this.mIndex >= 0) {
            this.mManager.freeBackStackIndex(this.mIndex);
            this.mIndex = -1;
        }
    }

    public final FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public final FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, null);
    }

    public final FragmentTransaction replace(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(i, fragment, str, OP_REPLACE);
        return this;
    }

    public final void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, new StringBuilder("Run: ").append(this).toString());
        }
        if (!this.mAddToBackStack || this.mIndex >= 0) {
            bumpBackStackNesting(OP_ADD);
            Op op = this.mHead;
            while (op != null) {
                Fragment fragment;
                switch (op.cmd) {
                    case OP_ADD:
                        fragment = op.fragment;
                        fragment.mNextAnim = op.enterAnim;
                        this.mManager.addFragment(fragment, false);
                        break;
                    case OP_REPLACE:
                        Fragment fragment2;
                        fragment = op.fragment;
                        if (this.mManager.mAdded != null) {
                            int i = 0;
                            fragment2 = fragment;
                            while (i < this.mManager.mAdded.size()) {
                                fragment = (Fragment) this.mManager.mAdded.get(i);
                                if (FragmentManagerImpl.DEBUG) {
                                    Log.v(TAG, new StringBuilder("OP_REPLACE: adding=").append(fragment2).append(" old=").append(fragment).toString());
                                }
                                if (fragment2 == null || fragment.mContainerId == fragment2.mContainerId) {
                                    if (fragment == fragment2) {
                                        fragment2 = null;
                                        op.fragment = null;
                                    } else {
                                        if (op.removed == null) {
                                            op.removed = new ArrayList();
                                        }
                                        op.removed.add(fragment);
                                        fragment.mNextAnim = op.exitAnim;
                                        if (this.mAddToBackStack) {
                                            fragment.mBackStackNesting++;
                                            if (FragmentManagerImpl.DEBUG) {
                                                Log.v(TAG, new StringBuilder("Bump nesting of ").append(fragment).append(" to ").append(fragment.mBackStackNesting).toString());
                                            }
                                        }
                                        this.mManager.removeFragment(fragment, this.mTransition, this.mTransitionStyle);
                                    }
                                }
                                i++;
                            }
                        } else {
                            fragment2 = fragment;
                        }
                        if (fragment2 != null) {
                            fragment2.mNextAnim = op.enterAnim;
                            this.mManager.addFragment(fragment2, false);
                        }
                        break;
                    case OP_REMOVE:
                        fragment = op.fragment;
                        fragment.mNextAnim = op.exitAnim;
                        this.mManager.removeFragment(fragment, this.mTransition, this.mTransitionStyle);
                        break;
                    case OP_HIDE:
                        fragment = op.fragment;
                        fragment.mNextAnim = op.exitAnim;
                        this.mManager.hideFragment(fragment, this.mTransition, this.mTransitionStyle);
                        break;
                    case OP_SHOW:
                        fragment = op.fragment;
                        fragment.mNextAnim = op.enterAnim;
                        this.mManager.showFragment(fragment, this.mTransition, this.mTransitionStyle);
                        break;
                    case OP_DETACH:
                        fragment = op.fragment;
                        fragment.mNextAnim = op.exitAnim;
                        this.mManager.detachFragment(fragment, this.mTransition, this.mTransitionStyle);
                        break;
                    case OP_ATTACH:
                        fragment = op.fragment;
                        fragment.mNextAnim = op.enterAnim;
                        this.mManager.attachFragment(fragment, this.mTransition, this.mTransitionStyle);
                        break;
                    default:
                        throw new IllegalArgumentException(new StringBuilder("Unknown cmd: ").append(op.cmd).toString());
                }
                op = op.next;
            }
            this.mManager.moveToState(this.mManager.mCurState, this.mTransition, this.mTransitionStyle, true);
            if (this.mAddToBackStack) {
                this.mManager.addBackStackState(this);
            }
        } else {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
    }

    public final FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.mBreadCrumbShortTitleRes = i;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    public final FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    public final FragmentTransaction setBreadCrumbTitle(int i) {
        this.mBreadCrumbTitleRes = i;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    public final FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    public final FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, OP_NULL, OP_NULL);
    }

    public final FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.mEnterAnim = i;
        this.mExitAnim = i2;
        this.mPopEnterAnim = i3;
        this.mPopExitAnim = i4;
        return this;
    }

    public final FragmentTransaction setTransition(int i) {
        this.mTransition = i;
        return this;
    }

    public final FragmentTransaction setTransitionStyle(int i) {
        this.mTransitionStyle = i;
        return this;
    }

    public final FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("BackStackEntry{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.mIndex);
        }
        if (this.mName != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.mName);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}