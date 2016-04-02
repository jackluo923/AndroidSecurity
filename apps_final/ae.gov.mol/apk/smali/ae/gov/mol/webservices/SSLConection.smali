.class public Lae/gov/mol/webservices/SSLConection;
.super Ljava/lang/Object;
.source "SSLConection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/webservices/SSLConection$_FakeX509TrustManager;
    }
.end annotation


# static fields
.field private static trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAllSSL()V
    .locals 5

    .prologue
    .line 40
    new-instance v2, Lae/gov/mol/webservices/SSLConection$1;

    invoke-direct {v2}, Lae/gov/mol/webservices/SSLConection$1;-><init>()V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 49
    sget-object v2, Lae/gov/mol/webservices/SSLConection;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v2, :cond_0

    .line 50
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lae/gov/mol/webservices/SSLConection$_FakeX509TrustManager;

    invoke-direct {v4}, Lae/gov/mol/webservices/SSLConection$_FakeX509TrustManager;-><init>()V

    aput-object v4, v2, v3

    sput-object v2, Lae/gov/mol/webservices/SSLConection;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 54
    :cond_0
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 55
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    sget-object v3, Lae/gov/mol/webservices/SSLConection;->trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 56
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "allowAllSSL"

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/security/KeyManagementException;
    const-string v2, "allowAllSSL"

    invoke-virtual {v1}, Ljava/security/KeyManagementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
