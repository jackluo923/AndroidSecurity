.class public Lcom/alipay/android/launcher/badge/BadgeBizValve;
.super Ljava/lang/Object;
.source "BadgeBizValve.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->getInstance()Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->register()V

    .line 9
    return-void
.end method
