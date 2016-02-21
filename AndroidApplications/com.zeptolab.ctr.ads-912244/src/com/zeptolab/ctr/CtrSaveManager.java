package com.zeptolab.ctr;

import android.app.Activity;
import android.os.Environment;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class CtrSaveManager {
    protected final String SAVE_FILE;
    protected final String SAVE_KEY;
    protected final String SAVE_VALUE;
    protected ThreadPoolExecutor exe;
    byte[] key;
    public Activity mainActivity;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ String[] val$skip;

        AnonymousClass_2(String[] strArr) {
            this.val$skip = strArr;
        }

        public void run() {
            File remoteSave = CtrSaveManager.this.remoteSave();
            if (remoteSave == null || !remoteSave.exists()) {
                remoteSave = CtrSaveManager.this.oldRemoteSave();
            }
            if (remoteSave != null) {
                try {
                    InputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(remoteSave));
                    OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
                    instance.init(GoogleScorer.CLIENT_PLUS, new SecretKeySpec(CtrSaveManager.this.key, "AES"));
                    CtrSaveManager.crypt(bufferedInputStream, byteArrayOutputStream, instance);
                    ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    Map map = (Map) objectInputStream.readObject();
                    bufferedInputStream.close();
                    byteArrayOutputStream.close();
                    objectInputStream.close();
                    if (map.containsKey(CtrSaveManager.this.SAVE_KEY) && map.get(CtrSaveManager.this.SAVE_KEY).equals(CtrSaveManager.this.SAVE_VALUE)) {
                        map.remove(CtrSaveManager.this.SAVE_KEY);
                        CtrPreferences.getInstance().setAllProps(map, this.val$skip);
                        CtrSaveManager.this.restoreSuccess();
                        L.i("SAVEMANAGER", "Restore done");
                    } else {
                        CtrSaveManager.this.restoreBroken();
                        L.i("SAVEMANAGER", "Restore broken");
                    }
                    boolean z = 1;
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (i == 0) {
                    CtrSaveManager.this.restoreBroken();
                }
            }
            int i2 = 0;
            if (i2 == 0) {
                CtrSaveManager.this.restoreBroken();
            }
        }
    }

    CtrSaveManager(Activity activity) {
        this.key = new byte[32];
        this.exe = new ThreadPoolExecutor(1, 1, 59, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.mainActivity = activity;
        this.SAVE_KEY = ZBuildConfig.savemanager_key;
        this.SAVE_VALUE = ZBuildConfig.savemanager_value;
        this.SAVE_FILE = ZBuildConfig.savemanager_file;
        this.key = new byte[32];
        this.key[0] = (byte) 111;
        this.key[1] = (byte) 81;
        this.key[2] = (byte) -53;
        this.key[3] = (byte) 55;
        this.key[4] = (byte) 87;
        this.key[5] = (byte) -127;
        this.key[6] = (byte) 118;
        this.key[7] = (byte) -31;
        this.key[8] = (byte) -71;
        this.key[9] = (byte) 84;
        this.key[10] = (byte) 93;
        this.key[11] = (byte) 72;
        this.key[12] = (byte) -25;
        this.key[13] = (byte) 121;
        this.key[14] = (byte) -54;
        this.key[15] = (byte) 71;
        this.key[16] = (byte) -11;
        this.key[17] = Byte.MIN_VALUE;
        this.key[18] = (byte) 59;
        this.key[19] = (byte) -64;
        this.key[20] = (byte) -14;
        this.key[21] = (byte) -85;
        this.key[22] = (byte) -47;
        this.key[23] = (byte) 90;
        this.key[24] = (byte) 74;
        this.key[25] = (byte) 102;
        this.key[26] = (byte) -25;
        this.key[27] = (byte) 105;
        this.key[28] = (byte) -44;
        this.key[29] = (byte) -103;
        this.key[30] = (byte) 58;
        this.key[31] = (byte) -26;
    }

    public static void crypt(InputStream inputStream, OutputStream outputStream, Cipher cipher) {
        int blockSize = cipher.getBlockSize();
        byte[] bArr = new byte[blockSize];
        byte[] bArr2 = new byte[cipher.getOutputSize(blockSize)];
        boolean z = 1;
        int i = 0;
        while (i != 0) {
            i = inputStream.read(bArr);
            if (i == blockSize) {
                outputStream.write(bArr2, 0, cipher.update(bArr, 0, blockSize, bArr2));
            } else {
                z = false;
            }
        }
        outputStream.write(i > 0 ? cipher.doFinal(bArr, 0, i) : cipher.doFinal());
    }

    private native void restoreBroken();

    private native void restoreSuccess();

    public void backup() {
        L.i("SAVEMANAGER", "BACKUP");
        this.exe.execute(new Runnable() {
            public void run() {
                File oldRemoteSave = CtrSaveManager.this.oldRemoteSave();
                if (oldRemoteSave != null) {
                    oldRemoteSave.delete();
                    oldRemoteSave = oldRemoteSave.getParentFile();
                    if (oldRemoteSave.list().length == 0) {
                        oldRemoteSave.delete();
                    }
                }
                oldRemoteSave = CtrSaveManager.this.remoteSave();
                if (oldRemoteSave != null) {
                    try {
                        Map hashMap = new HashMap();
                        hashMap.putAll(CtrPreferences.getInstance().getAllProps());
                        hashMap.put(CtrSaveManager.this.SAVE_KEY, CtrSaveManager.this.SAVE_VALUE);
                        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                        objectOutputStream.writeObject(hashMap);
                        InputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                        byteArrayOutputStream = new BufferedOutputStream(new FileOutputStream(oldRemoteSave));
                        Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
                        instance.init(1, new SecretKeySpec(CtrSaveManager.this.key, "AES"));
                        CtrSaveManager.crypt(byteArrayInputStream, byteArrayOutputStream, instance);
                        objectOutputStream.close();
                        byteArrayInputStream.close();
                        byteArrayOutputStream.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public boolean isSaveAvailable() {
        File remoteSave = remoteSave();
        return remoteSave != null && (remoteSave.exists() || oldRemoteSave() != null);
    }

    public File oldRemoteSave() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            File file = new File(Environment.getExternalStorageDirectory(), "Cut the Rope");
            if (file.exists()) {
                File file2 = new File(file, ZBuildConfig.savemanager_oldfile);
                if (file2.exists()) {
                    return file2;
                }
            }
        }
        return null;
    }

    public File remoteSave() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File file = new File(Environment.getExternalStorageDirectory(), "ZeptoLab/Cut the Rope");
        if (file.exists() || file.mkdirs()) {
            return new File(file, this.SAVE_FILE);
        }
        L.e("SAVEMANAGER", "Cannot create SaveManager directory");
        return null;
    }

    public void restore(String[] strArr) {
        L.i("SAVEMANAGER", "RESTORE");
        this.mainActivity.runOnUiThread(new AnonymousClass_2(strArr));
    }
}