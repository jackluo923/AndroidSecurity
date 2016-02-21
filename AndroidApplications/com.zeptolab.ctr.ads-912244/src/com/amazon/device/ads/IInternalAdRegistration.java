package com.amazon.device.ads;

import android.content.Context;
import java.io.File;

interface IInternalAdRegistration {
    void contextReceived(Context context);

    AppInfo getAppInfo();

    Context getApplicationContext();

    DeviceInfo getDeviceInfo();

    File getFilesDir();

    boolean getIsAppDisabled();

    int getNoRetryTtlRemainingMillis();

    RegistrationInfo getRegistrationInfo();

    boolean isRegistered();

    void register();

    void setIsAppDisabled(boolean z);

    void setNoRetryTtl(int i);
}