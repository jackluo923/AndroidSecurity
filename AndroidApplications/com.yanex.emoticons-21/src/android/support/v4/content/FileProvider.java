package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.support.v4.app.NotificationCompat;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

public class FileProvider extends ContentProvider {
    private static final String[] a;
    private static final File b;
    private static HashMap c;
    private b d;

    static {
        a = new String[]{"_display_name", "_size"};
        b = new File("/");
        c = new HashMap();
    }

    private static b a(Context context, String str) {
        b bVar;
        synchronized (c) {
            try {
                bVar = (b) c.get(str);
                if (bVar == null) {
                    bVar = new c(str);
                    XmlResourceParser loadXmlMetaData = context.getPackageManager().resolveContentProvider(str, NotificationCompat.FLAG_HIGH_PRIORITY).loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                    if (loadXmlMetaData == null) {
                        throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
                    }
                    while (true) {
                        int next = loadXmlMetaData.next();
                        if (next == 1) {
                            c.put(str, bVar);
                        } else if (next == 2) {
                            File a;
                            String name = loadXmlMetaData.getName();
                            String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                            String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                            if ("root-path".equals(name)) {
                                a = a(b, new String[]{attributeValue2});
                            } else if ("files-path".equals(name)) {
                                a = a(context.getFilesDir(), new String[]{attributeValue2});
                            } else if ("cache-path".equals(name)) {
                                a = a(context.getCacheDir(), new String[]{attributeValue2});
                            } else if ("external-path".equals(name)) {
                                a = a(Environment.getExternalStorageDirectory(), new String[]{attributeValue2});
                            } else {
                                a = null;
                            }
                            if (a != null) {
                                bVar.a(attributeValue, a);
                            }
                        }
                    }
                }
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
            } catch (XmlPullParserException e2) {
                throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
            } catch (Throwable th) {
            }
        }
        return bVar;
    }

    private static File a(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        File file2 = file;
        while (i < length) {
            String str = strArr[i];
            i++;
            file2 = str != null ? new File(file2, str) : file2;
        }
        return file2;
    }

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (providerInfo.grantUriPermissions) {
            this.d = a(context, providerInfo.authority);
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return this.d.a(uri).delete() ? 1 : 0;
    }

    public String getType(Uri uri) {
        File a = this.d.a(uri);
        int lastIndexOf = a.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(a.getName().substring(lastIndexOf + 1));
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    public boolean onCreate() {
        return true;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) {
        int i;
        File a = this.d.a(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if ("rwt".equals(str)) {
            i = 1006632960;
        } else {
            throw new IllegalArgumentException(new StringBuilder("Invalid mode: ").append(str).toString());
        }
        return ParcelFileDescriptor.open(a, i);
    }

    public Cursor query(Uri uri, ?[] Arr, String str, String[] strArr, String str2) {
        Object obj;
        File a = this.d.a(uri);
        if (Arr == null) {
            Arr = a;
        }
        Object obj2 = new Object[Arr.length];
        Object obj3 = new Object[Arr.length];
        int length = Arr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3;
            obj = Arr[i];
            if ("_display_name".equals(obj)) {
                obj2[i2] = "_display_name";
                i3 = i2 + 1;
                obj3[i2] = a.getName();
            } else if ("_size".equals(obj)) {
                obj2[i2] = "_size";
                i3 = i2 + 1;
                obj3[i2] = Long.valueOf(a.length());
            } else {
                i3 = i2;
            }
            i++;
            i2 = i3;
        }
        obj = new Object[i2];
        System.arraycopy(obj2, 0, obj, 0, i2);
        Object obj4 = new Object[i2];
        System.arraycopy(obj3, 0, obj4, 0, i2);
        Cursor matrixCursor = new MatrixCursor(obj, 1);
        matrixCursor.addRow(obj4);
        return matrixCursor;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}