.class Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "ActivityHelper.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method
