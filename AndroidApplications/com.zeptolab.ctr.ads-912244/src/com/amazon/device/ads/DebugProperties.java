package com.amazon.device.ads;

import android.os.Environment;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Properties;
import javax.crypto.Cipher;

class DebugProperties {
    public static final String DEBUG_AAX_AD_HOSTNAME = "debug.aaxHostname";
    public static final String DEBUG_AAX_AD_PARAMS = "debug.aaxAdParams";
    public static final String DEBUG_AAX_CONFIG_HOSTNAME = "debug.aaxConfigHostname";
    public static final String DEBUG_AAX_CONFIG_PARAMS = "debug.aaxConfigParams";
    public static final String DEBUG_AAX_CONFIG_USE_SECURE = "debug.aaxConfigUseSecure";
    public static final String DEBUG_ADID = "debug.adid";
    public static final String DEBUG_AD_PREF_URL = "debug.adPrefURL";
    public static final String DEBUG_APPID = "debug.appid";
    public static final String DEBUG_CHANNEL = "debug.channel";
    public static final String DEBUG_CONFIG_FEATURE_USE_GPS_ADVERTISING_ID = "debug.fUseGPSAID";
    public static final String DEBUG_DINFO = "debug.dinfo";
    public static final String DEBUG_ECPM = "debug.ec";
    public static final String DEBUG_GEOLOC = "debug.geoloc";
    public static final String DEBUG_IDFA = "debug.idfa";
    public static final String DEBUG_LOGGING = "debug.logging";
    public static final String DEBUG_MADS_HOSTNAME = "debug.madsHostname";
    public static final String DEBUG_MADS_USE_SECURE = "debug.madsUseSecure";
    public static final String DEBUG_MD5UDID = "debug.md5udid";
    public static final String DEBUG_MXSZ = "debug.mxsz";
    public static final String DEBUG_NORETRYTTL = "debug.noRetryTTL";
    public static final String DEBUG_NORETRYTTL_MAX = "debug.noRetryTTLMax";
    public static final String DEBUG_ON = "debug.mode";
    public static final String DEBUG_OPT_OUT = "debug.optOut";
    public static final String DEBUG_PA = "debug.pa";
    public static final String DEBUG_PK = "debug.pk";
    public static final String DEBUG_PKG = "debug.pkg";
    public static final String DEBUG_PT = "debug.pt";
    public static final String DEBUG_SEND_GEO = "debug.sendGeo";
    public static final String DEBUG_SHA1UDID = "debug.sha1udid";
    public static final String DEBUG_SHOULD_FETCH_CONFIG = "debug.shouldFetchConfig";
    public static final String DEBUG_SHOULD_IDENTIFY_USER = "debug.shouldIdentifyUser";
    public static final String DEBUG_SHOULD_REGISTER_SIS = "debug.shouldRegisterSIS";
    public static final String DEBUG_SIS_DOMAIN = "debug.sisDomain";
    public static final String DEBUG_SIS_URL = "debug.sisURL";
    public static final String DEBUG_SIZE = "debug.size";
    public static final String DEBUG_SLOT = "debug.slot";
    public static final String DEBUG_SLOTS = "debug.slots";
    public static final String DEBUG_SLOT_ID = "debug.slotId";
    public static final String DEBUG_SP = "debug.sp";
    public static final String DEBUG_TEST = "debug.test";
    public static final String DEBUG_TLS_ENABLED = "debug.tlsEnabled";
    public static final String DEBUG_UA = "debug.ua";
    public static final String DEBUG_UI = "debug.ui";
    public static final String DEBUG_VER = "debug.ver";
    private static final String a;
    private static final String b = "/com.amazon.device.ads.debug";
    private static final BigInteger c;
    private static final BigInteger d;
    private static Properties e;
    private static boolean f;

    static {
        a = DebugProperties.class.getSimpleName();
        c = new BigInteger("22425945969293236512819607281747202268852113345956851069545419503178249900977203670147638322801582881051882957295768557918356441519366172126884608406316888515239296504501830280664879549133570276792155151832332847188532369002492210234019359186842709493620665119919750832332220777141369255943445578381285984064028865613478676828533273460580467686485184132743895959747097454385452868408957601246667523882372216446056029831689133478714597838700864119273209955182548633182248700235085802575904827859971001196599005060045450779595767759943984991630413046800554347791145167910883355627096118148593841261053098773337592734097");
        d = new BigInteger("5599215006722084151841970702827860151139465197978118529242591197804380779249736540498127864809226859371835159226553869008622098243456195347852554241917744888762998133926842072150379542281041403163862165638226686887497980590930009552760406707269286898150890998325325890252103828011111664174475487114957696526157790937869377570600085450453371238028811033168218737171144699577236108423054506552958366535341910569552237227686862748056351625445281035713423043506793107235726047151346608576583081807969458368853010104969843563629579750936551771756389538574062221915919980316992216032119182896925094308799622409361028579777");
        e = new Properties();
        f = false;
    }

    DebugProperties() {
    }

    static void a() {
        f = true;
    }

    static void a(String str, String str2) {
        e.put(str, str2);
    }

    protected static byte[] a(byte[] bArr) {
        byte[] bArr2 = null;
        try {
            Key generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new RSAPrivateKeySpec(c, d));
            Cipher instance = Cipher.getInstance("RSA");
            instance.init(GoogleScorer.CLIENT_PLUS, generatePrivate);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            Log.d(a, "Exception " + e + " trying to decrypt debug file");
            return bArr2;
        }
    }

    static void b() {
        f = false;
    }

    public static boolean containsDebugProperty(String str) {
        return f ? e.containsKey(str) : false;
    }

    public static Boolean getDebugPropertyAsBoolean(String str, Boolean bool) {
        if (!f) {
            return bool;
        }
        String property = e.getProperty(str);
        if (property == null) {
            return bool;
        }
        try {
            return Boolean.valueOf(Boolean.parseBoolean(property));
        } catch (NumberFormatException e) {
            Log.e(a, "Unable to parse boolean debug property - property: %s, value: %s", new Object[]{str, property});
            return bool;
        }
    }

    public static boolean getDebugPropertyAsBoolean(String str, boolean z) {
        return getDebugPropertyAsBoolean(str, Boolean.valueOf(z)).booleanValue();
    }

    public static int getDebugPropertyAsInteger(String str, int i) {
        return getDebugPropertyAsInteger(str, Integer.valueOf(i)).intValue();
    }

    public static Integer getDebugPropertyAsInteger(String str, Integer num) {
        if (!f) {
            return num;
        }
        String property = e.getProperty(str);
        if (property == null) {
            return num;
        }
        try {
            return Integer.valueOf(Integer.parseInt(property));
        } catch (NumberFormatException e) {
            Log.e(a, "Unable to parse integer debug property - property: %s, value: %s", new Object[]{str, property});
            return num;
        }
    }

    public static long getDebugPropertyAsLong(String str, long j) {
        return getDebugPropertyAsLong(str, Long.valueOf(j)).longValue();
    }

    public static Long getDebugPropertyAsLong(String str, Long l) {
        if (!f) {
            return l;
        }
        String property = e.getProperty(str);
        if (property == null) {
            return l;
        }
        try {
            return Long.valueOf(Long.parseLong(property));
        } catch (NumberFormatException e) {
            Log.e(a, "Unable to parse long debug property - property: %s, value: %s", new Object[]{str, property});
            return l;
        }
    }

    public static String getDebugPropertyAsString(String str, String str2) {
        return f ? e.getProperty(str, str2) : str2;
    }

    public static boolean isDebugModeOn() {
        return f;
    }

    public static void readDebugProperties() {
        InputStream bufferedInputStream;
        Throwable th;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            File file = new File(Environment.getExternalStorageDirectory() + b);
            if (file.exists() && file.length() <= 2147483647L) {
                int i = 0;
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    try {
                        byte[] bArr = new byte[((int) file.length())];
                        while (i < bArr.length) {
                            int read = bufferedInputStream.read(bArr, i, bArr.length - i);
                            if (read > 0) {
                                i += read;
                            }
                        }
                        byte[] a = a(bArr);
                        if (a != null) {
                            InputStream byteArrayInputStream = new ByteArrayInputStream(a);
                            e.clear();
                            e.load(byteArrayInputStream);
                            if (e.getProperty(DEBUG_ON, "false").equals("true")) {
                                f = true;
                            }
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        throw th;
                    }
                } catch (Exception e) {
                }
            }
        }
    }
}