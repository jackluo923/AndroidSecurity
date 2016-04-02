.class public Lcom/alipay/mobile/framework/pipeline/ValveDescription;
.super Lcom/alipay/mobile/framework/MicroDescription;
.source "ValveDescription.java"


# instance fields
.field protected mPipelineName:Ljava/lang/String;

.field protected mThreadName:Ljava/lang/String;

.field protected mWeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/MicroDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public getPipelineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    return v0
.end method

.method public setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    .line 26
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ValveDescription [mPipelineName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mPipelineName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mThreadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
