package com.a.a.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

// compiled from: ProGuard
class c implements a {
    private IBinder a;

    c(IBinder iBinder) {
        this.a = iBinder;
    }

    public int a(int i, String str, String str2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
        obtain.writeInt(i);
        obtain.writeString(str);
        obtain.writeString(str2);
        this.a.transact(1, obtain, obtain2, 0);
        obtain2.readException();
        int readInt = obtain2.readInt();
        obtain2.recycle();
        obtain.recycle();
        return readInt;
    }

    public Bundle a(int i, String str, String str2, Bundle bundle) {
        Bundle bundle2;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
        obtain.writeInt(i);
        obtain.writeString(str);
        obtain.writeString(str2);
        if (bundle != null) {
            obtain.writeInt(1);
            bundle.writeToParcel(obtain, 0);
        } else {
            obtain.writeInt(0);
        }
        this.a.transact(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, obtain, obtain2, 0);
        obtain2.readException();
        bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
        obtain2.recycle();
        obtain.recycle();
        return bundle2;
    }

    public Bundle a(int i, String str, String str2, String str3) {
        Bundle bundle;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
        obtain.writeInt(i);
        obtain.writeString(str);
        obtain.writeString(str2);
        obtain.writeString(str3);
        this.a.transact(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, obtain, obtain2, 0);
        obtain2.readException();
        bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
        obtain2.recycle();
        obtain.recycle();
        return bundle;
    }

    public Bundle a(int i, String str, String str2, String str3, String str4) {
        Bundle bundle;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
        obtain.writeInt(i);
        obtain.writeString(str);
        obtain.writeString(str2);
        obtain.writeString(str3);
        obtain.writeString(str4);
        this.a.transact(R.styleable.SherlockTheme_actionBarTabTextStyle, obtain, obtain2, 0);
        obtain2.readException();
        bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
        obtain2.recycle();
        obtain.recycle();
        return bundle;
    }

    public IBinder asBinder() {
        return this.a;
    }

    public int b(int i, String str, String str2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
        obtain.writeInt(i);
        obtain.writeString(str);
        obtain.writeString(str2);
        this.a.transact(R.styleable.SherlockTheme_actionBarStyle, obtain, obtain2, 0);
        obtain2.readException();
        int readInt = obtain2.readInt();
        obtain2.recycle();
        obtain.recycle();
        return readInt;
    }
}