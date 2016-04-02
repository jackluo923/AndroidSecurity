.class public Lcom/alibaba/motu/ImpHandler;
.super Ljava/lang/Object;
.source "ImpHandler.java"

# interfaces
.implements Lcom/alibaba/motu/NativeExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p10, p9}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
