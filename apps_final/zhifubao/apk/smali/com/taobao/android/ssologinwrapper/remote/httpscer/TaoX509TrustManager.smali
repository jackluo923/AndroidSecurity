.class public Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static a:Ljava/security/cert/Certificate;

.field private static b:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->a:Ljava/security/cert/Certificate;

    sput-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->c:Landroid/content/Context;

    :try_start_0
    sget-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->a:Ljava/security/cert/Certificate;

    if-nez v0, :cond_4

    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v3, "verisign.cer"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->a:Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_1
    :try_start_2
    sget-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_1

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-object v3, v1, v0

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_3

    aget-object v0, v1, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    sput-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->a:Ljava/security/cert/Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v2, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->a:Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ".taobao.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    const-string/jumbo v4, ".alipay.com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    move-result v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-object v4, p1, v0

    :try_start_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_2
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v2, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->a:Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move v2, v1

    :goto_4
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--- verify success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cert checkValidity CertificateNotYetValidException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move v2, v3

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move v2, v3

    goto :goto_4

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move v2, v3

    goto :goto_4

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move v2, v3

    goto :goto_4

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    :try_start_4
    sget-object v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_0

    :catch_8
    move-exception v0

    array-length v2, p1

    if-lez v2, :cond_5

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    :cond_5
    throw v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :catch_a
    move-exception v2

    goto/16 :goto_3

    :catch_b
    move-exception v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto/16 :goto_5

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
