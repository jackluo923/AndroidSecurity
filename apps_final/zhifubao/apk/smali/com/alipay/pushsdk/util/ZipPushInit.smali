.class public Lcom/alipay/pushsdk/util/ZipPushInit;
.super Ljava/lang/Object;
.source "ZipPushInit.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "pushinitzip"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native compress(Ljava/lang/String;)[B
.end method

.method public zipPushInit(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/alipay/pushsdk/util/ZipPushInit;->compress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
