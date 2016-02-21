package me.kiip.internal.d;

import com.google.android.gms.games.multiplayer.Multiplayer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import javax.net.ssl.SSLSocket;

public class f {
    private static final f a;
    private Constructor b;

    private static class c extends f {
        private final Method a;

        private c(Method method) {
            this.a = method;
        }

        public int c_(Socket socket) {
            try {
                NetworkInterface byInetAddress = NetworkInterface.getByInetAddress(socket.getLocalAddress());
                return byInetAddress == null ? super.c(socket) : ((Integer) this.a.invoke(byInetAddress, new Object[0])).intValue();
            } catch (NullPointerException e) {
                return super.c(socket);
            } catch (SocketException e2) {
                return super.c(socket);
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            } catch (InvocationTargetException e4) {
                invocationTargetException = e4;
                InvocationTargetException invocationTargetException2;
                if (invocationTargetException2.getCause() instanceof IOException) {
                    throw ((IOException) invocationTargetException2.getCause());
                }
                throw new RuntimeException(invocationTargetException2.getCause());
            }
        }
    }

    private static class a extends c {
        protected final Class a;
        private final Method b;
        private final Method c;

        private a(Method method, Class cls, Method method2, Method method3) {
            super(null);
            this.a = cls;
            this.b = method2;
            this.c = method3;
        }

        public void a_(Socket socket, InetSocketAddress inetSocketAddress, int i) {
            try {
                socket.connect(inetSocketAddress, i);
            } catch (SecurityException e) {
                Throwable th = e;
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(th);
                throw iOException;
            }
        }

        public void a_(SSLSocket sSLSocket, String str) {
            super.a(sSLSocket, str);
            if (this.a.isInstance(sSLSocket)) {
                try {
                    this.b.invoke(sSLSocket, new Object[]{Boolean.valueOf(true)});
                    this.c.invoke(sSLSocket, new Object[]{str});
                } catch (InvocationTargetException e) {
                    throw new RuntimeException(e);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            }
        }
    }

    private static class b extends a {
        private final Method b;
        private final Method c;

        private b(Method method, Class cls, Method method2, Method method3, Method method4, Method method5) {
            super(cls, method2, method3, null);
            this.b = method4;
            this.c = method5;
        }

        public void a(SSLSocket sSLSocket, byte[] bArr) {
            if (this.a.isInstance(sSLSocket)) {
                try {
                    this.b.invoke(sSLSocket, new Object[]{bArr});
                } catch (IllegalAccessException e) {
                    throw new AssertionError(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }

        public byte[] b_(SSLSocket sSLSocket) {
            if (!this.a.isInstance(sSLSocket)) {
                return null;
            }
            try {
                return (byte[]) this.c.invoke(sSLSocket, new Object[0]);
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    private static class d extends c {
        private final Method a;
        private final Method b;
        private final Class c;
        private final Class d;

        public d(Method method, Method method2, Method method3, Class cls, Class cls2) {
            super(null);
            this.b = method2;
            this.a = method3;
            this.c = cls;
            this.d = cls2;
        }

        public void a(SSLSocket sSLSocket, byte[] bArr) {
            int i = 0;
            try {
                List arrayList = new ArrayList();
                while (i < bArr.length) {
                    int i2 = i + 1;
                    byte b = bArr[i];
                    arrayList.add(new String(bArr, i2, b, "US-ASCII"));
                    i = b + i2;
                }
                Object newProxyInstance = Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.c, this.d}, new e(arrayList));
                this.b.invoke(null, new Object[]{sSLSocket, newProxyInstance});
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                throw new AssertionError(e2);
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }

        public byte[] b(SSLSocket sSLSocket) {
            try {
                e eVar = (e) Proxy.getInvocationHandler(this.a.invoke(null, new Object[]{sSLSocket}));
                if (eVar.b || eVar.c != null) {
                    return eVar.b ? null : eVar.c.getBytes("US-ASCII");
                }
                Logger.getLogger("com.squareup.okhttp.OkHttpClient").log(Level.INFO, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?");
                return null;
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError();
            } catch (InvocationTargetException e2) {
                throw new AssertionError();
            } catch (IllegalAccessException e3) {
                throw new AssertionError();
            }
        }
    }

    private static class e implements InvocationHandler {
        private final List a;
        private boolean b;
        private String c;

        public e(List list) {
            this.a = list;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class returnType = method.getReturnType();
            if (objArr == null) {
                objArr = h.b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.valueOf(true);
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.b = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.a;
            } else {
                if (name.equals("selectProtocol") && String.class == returnType && objArr.length == 1 && (objArr[0] == null || objArr[0] instanceof List)) {
                    List list = (List) objArr[0];
                    this.c = (String) this.a.get(0);
                    return this.c;
                } else if (!name.equals("protocolSelected") || objArr.length != 1) {
                    return method.invoke(this, objArr);
                } else {
                    this.c = (String) objArr[0];
                    return null;
                }
            }
        }
    }

    static {
        a = c();
    }

    public static f a() {
        return a;
    }

    private static f c() {
        Class forName;
        try {
            Method method = NetworkInterface.class.getMethod("getMTU", new Class[0]);
            try {
                forName = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e) {
                forName = Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (NoSuchMethodException e2) {
                try {
                    String str = "org.eclipse.jetty.npn.NextProtoNego";
                    Class forName2 = Class.forName(str);
                    forName = Class.forName(str + "$Provider");
                    Class forName3 = Class.forName(str + "$ClientProvider");
                    Class forName4 = Class.forName(str + "$ServerProvider");
                    return new d(method, forName2.getMethod("put", new Class[]{SSLSocket.class, forName}), forName2.getMethod("get", new Class[]{SSLSocket.class}), forName3, forName4);
                } catch (ClassNotFoundException e3) {
                    return new c(null);
                } catch (NoSuchMethodException e4) {
                    return new c(null);
                }
            }
            Method method2 = forName.getMethod("setUseSessionTickets", new Class[]{Boolean.TYPE});
            Method method3 = forName.getMethod("setHostname", new Class[]{String.class});
            try {
                return new b(forName, method2, method3, forName.getMethod("setNpnProtocols", new Class[]{byte[].class}), forName.getMethod("getNpnSelectedProtocol", new Class[0]), null);
            } catch (NoSuchMethodException e5) {
                return new a(forName, method2, method3, null);
            } catch (ClassNotFoundException e6) {
                String str2 = "org.eclipse.jetty.npn.NextProtoNego";
                Class forName22 = Class.forName(str2);
                forName = Class.forName(str2 + "$Provider");
                Class forName32 = Class.forName(str2 + "$ClientProvider");
                Class forName42 = Class.forName(str2 + "$ServerProvider");
                return new d(method, forName22.getMethod("put", new Class[]{SSLSocket.class, forName}), forName22.getMethod("get", new Class[]{SSLSocket.class}), forName32, forName42);
            }
        } catch (NoSuchMethodException e7) {
            return new f();
        }
    }

    public OutputStream a(OutputStream outputStream, Deflater deflater, boolean z) {
        try {
            Constructor constructor = this.b;
            if (constructor == null) {
                constructor = DeflaterOutputStream.class.getConstructor(new Class[]{OutputStream.class, Deflater.class, Boolean.TYPE});
                this.b = constructor;
            }
            return (OutputStream) constructor.newInstance(new Object[]{outputStream, deflater, Boolean.valueOf(z)});
        } catch (NoSuchMethodException e) {
            throw new UnsupportedOperationException("Cannot SPDY; no SYNC_FLUSH available");
        } catch (InvocationTargetException e2) {
            InvocationTargetException invocationTargetException = e2;
            throw (invocationTargetException.getCause() instanceof RuntimeException ? (RuntimeException) invocationTargetException.getCause() : new RuntimeException(invocationTargetException.getCause()));
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (IllegalAccessException e4) {
            throw new AssertionError();
        }
    }

    public URI a(URL url) {
        return url.toURI();
    }

    public void a(String str) {
        System.out.println(str);
    }

    public void a(Socket socket) {
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    public void a(SSLSocket sSLSocket) {
        sSLSocket.setEnabledProtocols(new String[]{"SSLv3"});
    }

    public void a(SSLSocket sSLSocket, String str) {
    }

    public void a(SSLSocket sSLSocket, byte[] bArr) {
    }

    public String b() {
        return "OkHttp";
    }

    public void b(Socket socket) {
    }

    public byte[] b(SSLSocket sSLSocket) {
        return null;
    }

    public int c(Socket socket) {
        return Multiplayer.MAX_RELIABLE_MESSAGE_LEN;
    }
}