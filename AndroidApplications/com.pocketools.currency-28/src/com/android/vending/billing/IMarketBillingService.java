package com.android.vending.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IMarketBillingService extends IInterface {

    public static abstract class Stub extends Binder implements IMarketBillingService {
        private static final String DESCRIPTOR = "com.android.vending.billing.IMarketBillingService";
        static final int TRANSACTION_sendBillingRequest = 1;

        private static class Proxy implements IMarketBillingService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return DESCRIPTOR;
            }

            public Bundle sendBillingRequest(Bundle bundle) throws RemoteException {
                Bundle _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                _data.writeInterfaceToken(DESCRIPTOR);
                if (bundle != null) {
                    _data.writeInt(TRANSACTION_sendBillingRequest);
                    bundle.writeToParcel(_data, 0);
                } else {
                    _data.writeInt(0);
                }
                this.mRemote.transact(TRANSACTION_sendBillingRequest, _data, _reply, 0);
                _reply.readException();
                _result = _reply.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(_reply) : null;
                _reply.recycle();
                _data.recycle();
                return _result;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMarketBillingService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            return (iin == null || !(iin instanceof IMarketBillingService)) ? new Proxy(obj) : (IMarketBillingService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case TRANSACTION_sendBillingRequest:
                    data.enforceInterface(DESCRIPTOR);
                    Bundle _result = sendBillingRequest(data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    if (_result != null) {
                        reply.writeInt(TRANSACTION_sendBillingRequest);
                        _result.writeToParcel(reply, TRANSACTION_sendBillingRequest);
                        return true;
                    } else {
                        reply.writeInt(0);
                        return true;
                    }
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    Bundle sendBillingRequest(Bundle bundle) throws RemoteException;
}