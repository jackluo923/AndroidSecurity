.class public Lcom/taobao/securityjni/StaticDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;


# static fields
.field public static final APP_KEY_TYPE:I = 0x1

.field public static final EXTRA_KEY_TYPE:I = 0x3

.field public static final INVALID_KEY_TYPE:I = 0x4

.field public static final SECURITY_KEY_TYPE:I = 0x2


# instance fields
.field private a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_1
.end method

.method public getAppKeyByIndex(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/securityjni/StaticDataStore;->a:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getKeyType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getMMPid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
