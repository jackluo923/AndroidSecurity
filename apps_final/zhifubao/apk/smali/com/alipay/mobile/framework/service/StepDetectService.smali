.class public abstract Lcom/alipay/mobile/framework/service/StepDetectService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "StepDetectService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSteps(Landroid/content/Context;)J
.end method

.method public abstract resetSteps(Landroid/content/Context;)V
.end method

.method public abstract stepDetectStart(Landroid/content/Context;)V
.end method

.method public abstract stepDetectStop(Landroid/content/Context;)V
.end method
