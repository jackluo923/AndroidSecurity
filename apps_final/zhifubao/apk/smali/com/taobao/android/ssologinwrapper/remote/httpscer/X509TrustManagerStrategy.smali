.class public Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy;
.super Ljava/lang/Object;


# static fields
.field protected static m_trustMgr:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy;->m_trustMgr:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy;->m_trustMgr:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    sput-object p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy;->m_trustMgr:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public static trustAllHosts()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy$1;

    invoke-direct {v2}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy$1;-><init>()V

    aput-object v2, v0, v1

    :try_start_0
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
