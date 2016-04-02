.class public abstract Lcom/alipay/mobile/framework/MicroDescription;
.super Ljava/lang/Object;
.source "MicroDescription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/framework/MicroDescription",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mClassLoader:Ljava/lang/ClassLoader;

.field protected mClassName:Ljava/lang/String;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected self()Lcom/alipay/mobile/framework/MicroDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 31
    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassLoader:Ljava/lang/ClassLoader;

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mClassName:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/framework/MicroDescription;->mName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MicroDescription;->self()Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v0

    return-object v0
.end method
