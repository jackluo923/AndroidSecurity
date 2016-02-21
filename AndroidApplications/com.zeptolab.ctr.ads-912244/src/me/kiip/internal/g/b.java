package me.kiip.internal.g;

import com.brightcove.player.event.EventType;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public final class b implements HostnameVerifier {
    public static final b a;
    private static final Pattern b;

    static {
        a = new b();
        b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    private b() {
    }

    private List a(X509Certificate x509Certificate, int i) {
        List arrayList = new ArrayList();
        try {
            Collection subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            Iterator it = subjectAlternativeNames.iterator();
            while (it.hasNext()) {
                List list = (List) it.next();
                if (list != null && list.size() >= 2) {
                    Integer num = (Integer) list.get(0);
                    if (num != null && num.intValue() == i) {
                        String str = (String) list.get(1);
                        if (str != null) {
                            arrayList.add(str);
                        }
                    }
                }
            }
            return arrayList;
        } catch (CertificateParsingException e) {
            return Collections.emptyList();
        }
    }

    static boolean a(String str) {
        return b.matcher(str).matches();
    }

    private boolean b_(String str, X509Certificate x509Certificate) {
        Iterator it = a(x509Certificate, (int)GoogleScorer.CLIENT_ALL).iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean c(String str, X509Certificate x509Certificate) {
        String toLowerCase = str.toLowerCase(Locale.US);
        Iterator it = a(x509Certificate, (int)GoogleScorer.CLIENT_PLUS).iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (a(toLowerCase, (String) it.next())) {
                return true;
            }
            z = true;
        }
        if (i == 0) {
            String a = new a(x509Certificate.getSubjectX500Principal()).a("cn");
            if (a != null) {
                return a(toLowerCase, a);
            }
        }
        return false;
    }

    public boolean a(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        String toLowerCase = str2.toLowerCase(Locale.US);
        if (!toLowerCase.contains(EventType.ANY)) {
            return str.equals(toLowerCase);
        }
        if (toLowerCase.startsWith("*.") && str.regionMatches(0, toLowerCase, GoogleScorer.CLIENT_PLUS, toLowerCase.length() - 2)) {
            return true;
        }
        int indexOf = toLowerCase.indexOf(ApiEventType.API_MRAID_UNMUTE_VIDEO);
        if (indexOf > toLowerCase.indexOf(ApiEventType.API_MRAID_SEEK_VIDEO)) {
            return false;
        }
        if (!str.regionMatches(0, toLowerCase, 0, indexOf)) {
            return false;
        }
        int length = toLowerCase.length() - indexOf + 1;
        int length2 = str.length() - length;
        if (str.indexOf(ApiEventType.API_MRAID_SEEK_VIDEO, indexOf) < length2 && !str.endsWith(".clients.google.com")) {
            return false;
        }
        return str.regionMatches(length2, toLowerCase, indexOf + 1, length);
    }

    public boolean a(String str, X509Certificate x509Certificate) {
        return a(str) ? b(str, x509Certificate) : c(str, x509Certificate);
    }

    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }
}