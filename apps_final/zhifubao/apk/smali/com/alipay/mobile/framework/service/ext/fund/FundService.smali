.class public abstract Lcom/alipay/mobile/framework/service/ext/fund/FundService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "FundService.java"


# static fields
.field public static final RESULT_CANCEL:I = 0x66

.field public static final RESULT_FAIL:I = 0x65

.field public static final RESULT_OK:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkFundOpenInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/ContextWrapper;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
.end method

.method public abstract createFundAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/fund/CreateFundCallback;)V
.end method

.method public abstract notifyTransferIn(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract transferIn(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/fund/FundService$TransferInCallback;)V
.end method
