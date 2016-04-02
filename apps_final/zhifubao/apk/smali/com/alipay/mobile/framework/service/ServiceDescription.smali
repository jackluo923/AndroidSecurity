.class public Lcom/alipay/mobile/framework/service/ServiceDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;
.source "ServiceDescription.java"


# instance fields
.field protected mInterfaceClassName:Ljava/lang/String;

.field protected mIsLazy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    return-void
.end method


# virtual methods
.method public getInterfaceClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    return v0
.end method

.method public setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    .line 31
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ServiceDescription [mInterfaceClassName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mInterfaceClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsLazy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mIsLazy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ServiceDescription;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
