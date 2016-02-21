package com.a.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;

// compiled from: ProGuard
public abstract class b extends Binder implements a {
    public static a a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new c(iBinder) : (a) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        int a;
        Bundle a2;
        switch (i) {
            case IcsToast.LENGTH_LONG:
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                a = a(parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                a2 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (a2 != null) {
                    parcel2.writeInt(1);
                    a2.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case R.styleable.SherlockTheme_actionBarTabTextStyle:
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                a2 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (a2 != null) {
                    parcel2.writeInt(1);
                    a2.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                a2 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (a2 != null) {
                    parcel2.writeInt(1);
                    a2.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case R.styleable.SherlockTheme_actionBarStyle:
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                a = b(parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            case 1598968902:
                parcel2.writeString("com.android.vending.billing.IInAppBillingService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}