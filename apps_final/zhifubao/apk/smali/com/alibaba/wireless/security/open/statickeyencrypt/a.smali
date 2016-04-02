.class public final Lcom/alibaba/wireless/security/open/statickeyencrypt/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/n/a;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/n/a;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/n/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    return-void
.end method


# virtual methods
.method public final decrypt(ILjava/lang/String;[B)[B
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    invoke-static {p1, p2, p3}, Lcom/taobao/wireless/security/adapter/n/a;->b(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public final encrypt(ILjava/lang/String;[B)[B
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    invoke-static {p1, p2, p3}, Lcom/taobao/wireless/security/adapter/n/a;->a(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public final encryptSecretData(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    invoke-static {p1, p2, p3}, Lcom/taobao/wireless/security/adapter/n/a;->a(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public final isSecretExist(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    const-string/jumbo v0, "StaticKey"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public final removeSecret(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    const-string/jumbo v0, "StaticKey"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "StaticKey"

    invoke-static {v0, p1}, Lcom/taobao/wireless/security/adapter/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public final saveSecret(Ljava/lang/String;[B)I
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;->a:Lcom/taobao/wireless/security/adapter/n/a;

    invoke-static {p1, p2}, Lcom/taobao/wireless/security/adapter/n/a;->a(Ljava/lang/String;[B)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method
