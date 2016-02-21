package android.support.v4.app;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost implements OnTabChangeListener {
    private final ArrayList a;
    private Context b;
    private o c;
    private int d;
    private OnTabChangeListener e;
    private y f;
    private boolean g;

    class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        String a;

        static {
            CREATOR = new x();
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.a + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.a);
        }
    }

    private z a(String str, z zVar) {
        y yVar = null;
        int i = 0;
        while (i < this.a.size()) {
            y yVar2 = (y) this.a.get(i);
            if (!yVar2.a.equals(str)) {
                yVar2 = yVar;
            }
            i++;
            yVar = yVar2;
        }
        if (yVar == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        if (this.f != yVar) {
            if (zVar == null) {
                zVar = this.c.a();
            }
            if (!(this.f == null || this.f.d == null)) {
                zVar.b(this.f.d);
            }
            if (yVar != null) {
                if (yVar.d == null) {
                    yVar.d = Fragment.a(this.b, yVar.b.getName(), yVar.c);
                    zVar.a(this.d, yVar.d, yVar.a);
                } else {
                    zVar.c(yVar.d);
                }
            }
            this.f = yVar;
        }
        return zVar;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        z zVar = null;
        int i = 0;
        while (i < this.a.size()) {
            y yVar = (y) this.a.get(i);
            yVar.d = this.c.a(yVar.a);
            if (!(yVar.d == null || yVar.d.n())) {
                if (yVar.a.equals(currentTabTag)) {
                    this.f = yVar;
                } else {
                    if (zVar == null) {
                        zVar = this.c.a();
                    }
                    zVar.b(yVar.d);
                }
            }
            i++;
        }
        this.g = true;
        z a = a(currentTabTag, zVar);
        if (a != null) {
            a.a();
            this.c.b();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g = false;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.a);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = getCurrentTabTag();
        return savedState;
    }

    public void onTabChanged(String str) {
        if (this.g) {
            z a = a(str, null);
            if (a != null) {
                a.a();
            }
        }
        if (this.e != null) {
            this.e.onTabChanged(str);
        }
    }

    public void setOnTabChangedListener(OnTabChangeListener onTabChangeListener) {
        this.e = onTabChangeListener;
    }

    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}