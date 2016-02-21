package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.List;

public interface hg extends IInterface {

    public static abstract class a extends Binder implements hg {

        private static class a implements hg {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(long j, boolean z, PendingIntent pendingIntent) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeLong(j);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(PendingIntent pendingIntent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(PendingIntent pendingIntent, hf hfVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hfVar != null ? hfVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(Location location, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (location != null) {
                    obtain.writeInt(1);
                    location.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeInt(i);
                this.ky.transact(MMException.AD_NO_ACTIVITY, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(hf hfVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeStrongBinder(hfVar != null ? hfVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(hn hnVar, id idVar, hv hvVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (hnVar != null) {
                    obtain.writeInt(1);
                    hnVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hvVar != null ? hvVar.asBinder() : null);
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(hp hpVar, id idVar) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (hpVar != null) {
                    obtain.writeInt(1);
                    hpVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.AD_BROKEN_REFERENCE, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(hr hrVar, id idVar, PendingIntent pendingIntent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (hrVar != null) {
                    obtain.writeInt(1);
                    hrVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(id idVar, PendingIntent pendingIntent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ApiEventType.API_MRAID_GET_DEFAULT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(LocationRequest locationRequest, PendingIntent pendingIntent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (locationRequest != null) {
                    obtain.writeInt(1);
                    locationRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(LocationRequest locationRequest, com.google.android.gms.location.a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (locationRequest != null) {
                    obtain.writeInt(1);
                    locationRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(LocationRequest locationRequest, com.google.android.gms.location.a aVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (locationRequest != null) {
                    obtain.writeInt(1);
                    locationRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(MMException.DISPLAY_AD_NOT_READY, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(com.google.android.gms.location.a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(LatLng latLng, hn hnVar, id idVar, hv hvVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (latLng != null) {
                    obtain.writeInt(1);
                    latLng.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (hnVar != null) {
                    obtain.writeInt(1);
                    hnVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hvVar != null ? hvVar.asBinder() : null);
                this.ky.transact(MMException.REQUEST_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(LatLngBounds latLngBounds, int i, hn hnVar, id idVar, hv hvVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (latLngBounds != null) {
                    obtain.writeInt(1);
                    latLngBounds.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeInt(i);
                if (hnVar != null) {
                    obtain.writeInt(1);
                    hnVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hvVar != null ? hvVar.asBinder() : null);
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(String str, id idVar, hv hvVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeString(str);
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hvVar != null ? hvVar.asBinder() : null);
                this.ky.transact(MMException.REQUEST_BAD_RESPONSE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(List list) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeTypedList(list);
                this.ky.transact(MMException.DISPLAY_AD_NOT_PERMITTED, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(List list, PendingIntent pendingIntent, hf hfVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeTypedList(list);
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hfVar != null ? hfVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(String[] strArr, hf hfVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeStringArray(strArr);
                obtain.writeStrongBinder(hfVar != null ? hfVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public Location aF(String str) {
                Location location;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeString(str);
                this.ky.transact(MMException.DISPLAY_AD_EXPIRED, obtain, obtain2, 0);
                obtain2.readException();
                location = obtain2.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return location;
            }

            public b aG(String str) {
                b au;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeString(str);
                this.ky.transact(ApiEventType.API_MRAID_UNMUTE_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                au = obtain2.readInt() != 0 ? b.CREATOR.au(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return au;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void b(String str, id idVar, hv hvVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                obtain.writeString(str);
                if (idVar != null) {
                    obtain.writeInt(1);
                    idVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(hvVar != null ? hvVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_UNMUTE_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public Location gk() {
                Location location;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                location = obtain2.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return location;
            }

            public void removeActivityUpdates(PendingIntent pendingIntent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setMockLocation(Location location) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (location != null) {
                    obtain.writeInt(1);
                    location.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setMockMode(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static hg P(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof hg)) ? new a(iBinder) : (hg) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = false;
            Location location = null;
            PendingIntent pendingIntent;
            LocationRequest createFromParcel;
            String readString;
            id aD;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    List createTypedArrayList = parcel.createTypedArrayList(hj.CREATOR);
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(createTypedArrayList, pendingIntent, com.google.android.gms.internal.hf.a.O(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(pendingIntent, com.google.android.gms.internal.hf.a.O(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    a(parcel.createStringArray(), com.google.android.gms.internal.hf.a.O(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    a(com.google.android.gms.internal.hf.a.O(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    long readLong = parcel.readLong();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(readLong, z, pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    removeActivityUpdates(pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    location = gk();
                    parcel2.writeNoException();
                    if (location != null) {
                        parcel2.writeInt(1);
                        location.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        createFromParcel = LocationRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(createFromParcel, com.google.android.gms.location.a.a.N(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    LocationRequest createFromParcel2;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    createFromParcel2 = parcel.readInt() != 0 ? LocationRequest.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(createFromParcel2, pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    a(com.google.android.gms.location.a.a.N(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setMockMode(z);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        location = (Location) Location.CREATOR.createFromParcel(parcel);
                    }
                    setMockLocation(location);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    a(parcel.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? hn.CREATOR.aw(parcel) : null, parcel.readInt() != 0 ? id.CREATOR.aD(parcel) : null, com.google.android.gms.internal.hv.a.R(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        aD = id.CREATOR.aD(parcel);
                    }
                    a(readString, aD, com.google.android.gms.internal.hv.a.R(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    LatLng createFromParcel3;
                    hn aw;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    createFromParcel3 = parcel.readInt() != 0 ? LatLng.CREATOR.createFromParcel(parcel) : null;
                    aw = parcel.readInt() != 0 ? hn.CREATOR.aw(parcel) : null;
                    if (parcel.readInt() != 0) {
                        aD = id.CREATOR.aD(parcel);
                    }
                    a(createFromParcel3, aw, aD, com.google.android.gms.internal.hv.a.R(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$targetsdk:
                    hn aw2;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    aw2 = parcel.readInt() != 0 ? hn.CREATOR.aw(parcel) : null;
                    if (parcel.readInt() != 0) {
                        aD = id.CREATOR.aD(parcel);
                    }
                    a(aw2, aD, com.google.android.gms.internal.hv.a.R(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    hr ay;
                    id aD2;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    ay = parcel.readInt() != 0 ? hr.CREATOR.ay(parcel) : null;
                    aD2 = parcel.readInt() != 0 ? id.CREATOR.aD(parcel) : null;
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(ay, aD2, pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    id aD3;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    aD3 = parcel.readInt() != 0 ? id.CREATOR.aD(parcel) : null;
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    a(aD3, pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_NOT_READY:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        createFromParcel = LocationRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(createFromParcel, com.google.android.gms.location.a.a.N(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_EXPIRED:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    location = aF(parcel.readString());
                    parcel2.writeNoException();
                    if (location != null) {
                        parcel2.writeInt(1);
                        location.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case MMException.DISPLAY_AD_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    a(parcel.createTypedArrayList(com.google.android.gms.internal.hx.a.CREATOR));
                    return true;
                case MMException.AD_BROKEN_REFERENCE:
                    hp ax;
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    ax = parcel.readInt() != 0 ? hp.CREATOR.ax(parcel) : null;
                    if (parcel.readInt() != 0) {
                        aD = id.CREATOR.aD(parcel);
                    }
                    a(ax, aD);
                    return true;
                case MMException.AD_NO_ACTIVITY:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    if (parcel.readInt() != 0) {
                        location = (Location) Location.CREATOR.createFromParcel(parcel);
                    }
                    a(location, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    b aG = aG(parcel.readString());
                    parcel2.writeNoException();
                    if (aG != null) {
                        parcel2.writeInt(1);
                        aG.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        aD = id.CREATOR.aD(parcel);
                    }
                    b(readString, aD, com.google.android.gms.internal.hv.a.R(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(long j, boolean z, PendingIntent pendingIntent);

    void a(PendingIntent pendingIntent);

    void a(PendingIntent pendingIntent, hf hfVar, String str);

    void a(Location location, int i);

    void a(hf hfVar, String str);

    void a(hn hnVar, id idVar, hv hvVar);

    void a(hp hpVar, id idVar);

    void a(hr hrVar, id idVar, PendingIntent pendingIntent);

    void a(id idVar, PendingIntent pendingIntent);

    void a(LocationRequest locationRequest, PendingIntent pendingIntent);

    void a(LocationRequest locationRequest, com.google.android.gms.location.a aVar);

    void a(LocationRequest locationRequest, com.google.android.gms.location.a aVar, String str);

    void a(com.google.android.gms.location.a aVar);

    void a(LatLng latLng, hn hnVar, id idVar, hv hvVar);

    void a(LatLngBounds latLngBounds, int i, hn hnVar, id idVar, hv hvVar);

    void a(String str, id idVar, hv hvVar);

    void a(List list);

    void a(List list, PendingIntent pendingIntent, hf hfVar, String str);

    void a(String[] strArr, hf hfVar, String str);

    Location aF(String str);

    b aG(String str);

    void b(String str, id idVar, hv hvVar);

    Location gk();

    void removeActivityUpdates(PendingIntent pendingIntent);

    void setMockLocation(Location location);

    void setMockMode(boolean z);
}