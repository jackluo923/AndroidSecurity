package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import java.util.ArrayList;

public final class FragmentTabHost extends TabHost implements OnTabChangeListener {
    private final ArrayList a;
    private Context b;
    private FragmentManager c;
    private int d;
    private OnTabChangeListener e;
    private b f;
    private boolean g;

    class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        String a;

        static {
            CREATOR = new a();
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return new StringBuilder("FragmentTabHost.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" curTab=").append(this.a).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.a);
        }
    }

    private FragmentTransaction a(String str, FragmentTransaction fragmentTransaction) {
        b bVar = null;
        int i = 0;
        while (i < this.a.size()) {
            b bVar2 = (b) this.a.get(i);
            if (!bVar2.a.equals(str)) {
                bVar2 = bVar;
            }
            i++;
            bVar = bVar2;
        }
        if (bVar == null) {
            throw new IllegalStateException(new StringBuilder("No tab known for tag ").append(str).toString());
        }
        if (this.f != bVar) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.c.beginTransaction();
            }
            if (!(this.f == null || this.f.d == null)) {
                fragmentTransaction.detach(this.f.d);
            }
            if (bVar != null) {
                if (bVar.d == null) {
                    bVar.d = Fragment.instantiate(this.b, bVar.b.getName(), bVar.c);
                    fragmentTransaction.add(this.d, bVar.d, bVar.a);
                } else {
                    fragmentTransaction.attach(bVar.d);
                }
            }
            this.f = bVar;
        }
        return fragmentTransaction;
    }

    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        FragmentTransaction fragmentTransaction = null;
        int i = 0;
        while (i < this.a.size()) {
            b bVar = (b) this.a.get(i);
            bVar.d = this.c.findFragmentByTag(bVar.a);
            if (!(bVar.d == null || bVar.d.isDetached())) {
                if (bVar.a.equals(currentTabTag)) {
                    this.f = bVar;
                } else {
                    if (fragmentTransaction == null) {
                        fragmentTransaction = this.c.beginTransaction();
                    }
                    fragmentTransaction.detach(bVar.d);
                }
            }
            i++;
        }
        this.g = true;
        FragmentTransaction a = a(currentTabTag, fragmentTransaction);
        if (a != null) {
            a.commit();
            this.c.executePendingTransactions();
        }
    }

    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g = false;
    }

    protected final void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.a);
    }

    protected final Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = getCurrentTabTag();
        return savedState;
    }

    public final void onTabChanged(String str) {
        if (this.g) {
            FragmentTransaction a = a(str, null);
            if (a != null) {
                a.commit();
            }
        }
        if (this.e != null) {
            this.e.onTabChanged(str);
        }
    }

    public final void setOnTabChangedListener(OnTabChangeListener onTabChangeListener) {
        this.e = onTabChangeListener;
    }

    @Deprecated
    public final void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}