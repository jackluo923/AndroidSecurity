package com.zeptolab.ctr.remotedata;

import android.app.Activity;
import com.zeptolab.utils.Language;
import com.zeptolab.utils.SystemInfo;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public abstract class ServerDataManager {
    protected Activity activity;
    protected boolean execution;
    protected int protocolVersion;
    protected String serverUrl;

    protected ServerDataManager(Activity activity) {
        this.activity = activity;
    }

    protected void injectAdditionalParameters(LinkBuilder linkBuilder) {
        linkBuilder.put("model", SystemInfo.getPhoneModel());
        linkBuilder.put("os", SystemInfo.getOSVersion());
        linkBuilder.put("locale", Language.getSystemLocale());
        linkBuilder.put("lang", Language.getAsString());
        linkBuilder.put("version", SystemInfo.getAppVersion());
        linkBuilder.put("net", Integer.valueOf(SystemInfo.getNetworkType()));
        linkBuilder.put("store", ZBuildConfig.market);
    }

    protected abstract void injectSizes(LinkBuilder linkBuilder, int i);

    protected Object readObject(String str) {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(this.activity.openFileInput(str));
            Object readObject = objectInputStream.readObject();
            objectInputStream.close();
            return readObject;
        } catch (Exception e) {
            return null;
        }
    }

    protected void removeObject(String str) {
        this.activity.deleteFile(str);
    }

    protected void removeObjects(String[] strArr) {
        String[] fileList = this.activity.fileList();
        int length = fileList.length;
        int i = 0;
        while (i < length) {
            String str = fileList[i];
            int length2 = strArr.length;
            int i2 = 0;
            while (i2 < length2) {
                if (str.startsWith(strArr[i2])) {
                    this.activity.deleteFile(str);
                    break;
                } else {
                    i2++;
                }
            }
            i++;
        }
    }

    protected boolean saveBytes(byte[] bArr, String str) {
        try {
            OutputStream openFileOutput = this.activity.openFileOutput(str, 0);
            openFileOutput.write(bArr);
            openFileOutput.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    protected boolean saveObject(Object obj, String str) {
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(this.activity.openFileOutput(str, 0));
            objectOutputStream.writeObject(obj);
            objectOutputStream.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}