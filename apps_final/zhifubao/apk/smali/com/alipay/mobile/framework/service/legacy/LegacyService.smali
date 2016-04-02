.class public abstract Lcom/alipay/mobile/framework/service/legacy/LegacyService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "LegacyService.java"


# static fields
.field public static final KEEP_ALIVE_TIME:I = 0x5

.field public static final POOL_SIZE:I = 0x4

.field public static final QUEUE_SIZE:I = 0x80

.field public static mFinishPage:Z

.field public static mFinishPageFirst:Z

.field public static mSafepayInstallreceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/alipay/mobile/framework/service/legacy/LegacyService;->mFinishPage:Z

    .line 23
    sput-boolean v0, Lcom/alipay/mobile/framework/service/legacy/LegacyService;->mFinishPageFirst:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract certVerify(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract executeTask(Ljava/lang/Runnable;)V
.end method

.method public abstract finishCurrentActivity()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getEngines()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract isBankListRefresh()Z
.end method

.method public abstract isDispathced()Z
.end method

.method public abstract isFirstInTransferToAccount()Z
.end method

.method public abstract isFirstTransfer()Z
.end method

.method public abstract isSavedCCRBankRefresh()Z
.end method

.method public abstract isVerifySuccess()Z
.end method

.method public abstract loadLotteryEnterance()V
.end method

.method public abstract myDestroy()V
.end method

.method public abstract notifyUpdateSession()V
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setBankListRefresh(Z)V
.end method

.method public abstract setDispathced(Z)V
.end method

.method public abstract setFirstInTransfer(Z)V
.end method

.method public abstract setFirstInTransferToAccount(Z)V
.end method

.method public abstract setSavedCCRBankRefresh(Z)V
.end method

.method public abstract setVerifySuccess(Z)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method

.method public abstract startActivity(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startPaipai(Landroid/content/Context;)V
.end method

.method public abstract stepBackward()V
.end method

.method public abstract stepForward()V
.end method
