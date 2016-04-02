.class public Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static b:Ljava/lang/ref/WeakReference;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 10

    const/4 v9, 0x0

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "openConnection"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.net.URLConnection"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getInputStream"

    const-string/jumbo v3, "java.net.HttpURLConnection"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.InputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "openConnection"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.net.URLConnection"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getOutputStream"

    const-string/jumbo v3, "java.net.HttpURLConnection"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.OutputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getInputStream"

    const-string/jumbo v3, "java.net.HttpURLConnection"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.InputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static getNoCaptchaInitParaFromServerBridge(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v2}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->openConnection_aroundBody1$advice(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x2710

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_1
    move-exception v2

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    move-exception v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_4
    :goto_4
    throw v0

    :catch_5
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public static getNoCaptchaVeriResFromServerBridge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "+"

    const-string/jumbo v2, "%2B"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5, v3}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->openConnection_aroundBody3$advice(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string/jumbo v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$27$61641fbb(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_9

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$27$61641fbb(Lorg/aspectj/lang/JoinPoint;)V

    throw v2

    :catch_2
    move-exception v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_4
    throw v0

    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v1

    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v2, v1

    goto :goto_5
.end method

.method private static final synthetic openConnection_aroundBody0(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/net/URLConnection;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic openConnection_aroundBody1$advice(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "n/a"

    instance-of v2, v0, Ljava/net/URL;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " URL.open(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "trafic beyond limit"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->openConnection_aroundBody0(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static final synthetic openConnection_aroundBody2(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/net/URLConnection;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic openConnection_aroundBody3$advice(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "n/a"

    instance-of v2, v0, Ljava/net/URL;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " URL.open(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "trafic beyond limit"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->openConnection_aroundBody2(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static postNoCaptchaDataToUIBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFFF)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v0, 0xc8

    if-le p4, v0, :cond_3

    const/16 v0, 0x69

    move v2, v0

    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "errorCode"

    invoke-virtual {v3, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "x1"

    invoke-virtual {v3, v2, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "y1"

    invoke-virtual {v3, v2, p6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "x2"

    invoke-virtual {v3, v2, p7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "y2"

    invoke-virtual {v3, v2, p8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    if-eqz p0, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "token"

    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sig"

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget v0, v0, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p4

    move p4, v1

    goto :goto_1
.end method


# virtual methods
.method public initNoCaptcha(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 6

    const/4 v2, 0x1

    if-eqz p6, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    if-ltz p5, :cond_3

    iget-object v1, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->initNoCaptcha(Ljava/lang/String;Ljava/lang/String;III)V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x69

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "errorCode"

    const/16 v3, 0x4b1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public noCaptchaVerification(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x4b1

    sget-object v0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->noCaptchaVerification(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x69

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public putNoCaptchaTraceRecord(Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/taobao/wireless/security/adapter/nocaptcha/NoCaptchaAdapter;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v3, v0, v1, v2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->putNoCaptchaTraceRecord(IFF)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
