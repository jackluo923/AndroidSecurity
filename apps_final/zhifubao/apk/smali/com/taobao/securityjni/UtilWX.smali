.class public Lcom/taobao/securityjni/UtilWX;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DecryptData([B[B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EncryptData([B[B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x10

    invoke-interface {v1, v2, v0, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1, v0}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public Get([B)[B
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Get([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 3

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x10

    invoke-interface {v1, v2, v0, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[B)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1, v0}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x10

    invoke-interface {v1, v2, v0, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1, v0}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public Put([B)[B
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Put([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 3

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x10

    invoke-interface {v1, v2, v0, p1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[B)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1, v0}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
