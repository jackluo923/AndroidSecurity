.class public final Lcom/taobao/wireless/security/adapter/n/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/taobao/wireless/security/adapter/n/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    sput-object v0, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method

.method public static a(Ljava/lang/String;[B)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->saveKeyEncrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const-string/jumbo v2, "StaticKey"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "StaticKey"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, p0, v4}, Lcom/taobao/wireless/security/adapter/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "StaticKey"

    invoke-static {v1, p0, v0}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getSeed([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const/16 v4, 0x2bf

    const/4 v0, 0x0

    const-string/jumbo v1, "StaticKey"

    invoke-static {v1, p1, v0}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StaticKey"

    invoke-static {v2, p2, v0}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-direct {v0, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-direct {v0, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_3
    sget-object v3, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, p0, v1, v2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->encryptSecretData(I[B[B)[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;[B)[B
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StaticKey"

    invoke-static {v1, p1, v0}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, p0, v0, p2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->seedEncrypt(I[B[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bf

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public static b(ILjava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StaticKey"

    invoke-static {v1, p1, v0}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    sget-object v2, Lcom/taobao/wireless/security/adapter/n/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->seedDecrypt(I[B[B)[B

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bf

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method
