package me.kiip.internal.e;

import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import me.kiip.internal.c.f;
import me.kiip.internal.c.f.a;
import me.kiip.internal.c.f.b;

public final class c {
    public static final f a;

    static {
        a = new f() {
            private InetAddress a(Proxy proxy, URL url) {
                return (proxy == null || proxy.type() == Type.DIRECT) ? InetAddress.getByName(url.getHost()) : ((InetSocketAddress) proxy.address()).getAddress();
            }

            public b a(Proxy proxy, URL url, List list) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    PasswordAuthentication requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(url.getHost(), a(proxy, url), url.getPort(), url.getProtocol(), aVar.b(), aVar.a(), url, RequestorType.SERVER);
                    if (requestPasswordAuthentication != null) {
                        return b.a(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()));
                    }
                }
                return null;
            }

            public b b(Proxy proxy, URL url, List list) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                    PasswordAuthentication requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), a(proxy, url), inetSocketAddress.getPort(), url.getProtocol(), aVar.b(), aVar.a(), url, RequestorType.PROXY);
                    if (requestPasswordAuthentication != null) {
                        return b.a(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()));
                    }
                }
                return null;
            }
        };
    }

    private static List a(l lVar, String str) {
        List arrayList = new ArrayList();
        int i = 0;
        while (i < lVar.e()) {
            if (str.equalsIgnoreCase(lVar.a(i))) {
                String b = lVar.b(i);
                int i2 = 0;
                while (i2 < b.length()) {
                    int a = b.a(b, i2, " ");
                    String trim = b.substring(i2, a).trim();
                    i2 = b.a(b, a);
                    if (!b.regionMatches(i2, "realm=\"", 0, "realm=\"".length())) {
                        break;
                    }
                    i2 += "realm=\"".length();
                    a = b.a(b, i2, "\"");
                    String substring = b.substring(i2, a);
                    i2 = b.a(b, b.a(b, a + 1, ",") + 1);
                    arrayList.add(new a(trim, substring));
                }
            }
            i++;
        }
        return arrayList;
    }

    public static boolean a(f fVar, int i, l lVar, l lVar2, Proxy proxy, URL url) {
        String str;
        String str2;
        if (i == 401) {
            str = "WWW-Authenticate";
            str2 = "Authorization";
        } else if (i == 407) {
            str = "Proxy-Authenticate";
            str2 = "Proxy-Authorization";
        } else {
            throw new IllegalArgumentException();
        }
        List a = a(lVar, str);
        if (a.isEmpty()) {
            return false;
        }
        b b = lVar.c() == 407 ? fVar.b(proxy, url, a) : fVar.a(proxy, url, a);
        if (b == null) {
            return false;
        }
        lVar2.b(str2, b.a());
        return true;
    }
}