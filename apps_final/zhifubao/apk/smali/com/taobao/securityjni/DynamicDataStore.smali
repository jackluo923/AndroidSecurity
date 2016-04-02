.class public Lcom/taobao/securityjni/DynamicDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArrayDDp(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongCompat(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringCompat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringDDp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putBoolean(Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I

    move-result v0

    goto :goto_0
.end method

.method public putByteArrayDDp(Ljava/lang/String;[B)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putFloat(Ljava/lang/String;F)I

    move-result v0

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putLong(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public putStringDDp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeBoolean(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeBoolean(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeByteArray(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeByteArray(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeByteArrayDDp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeFloat(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeFloat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeInt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeInt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeLong(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeLong(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->a:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeStringDDp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
