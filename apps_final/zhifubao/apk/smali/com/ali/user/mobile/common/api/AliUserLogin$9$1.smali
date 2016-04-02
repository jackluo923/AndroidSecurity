.class Lcom/ali/user/mobile/common/api/AliUserLogin$9$1;
.super Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;
.source "AliUserLogin.java"


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$9;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9$1;->this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$9;

    .line 474
    invoke-direct {p0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPacelable(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9$1;->this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$9;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin$9;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;
    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->access$0(Lcom/ali/user/mobile/common/api/AliUserLogin$9;)Lcom/ali/user/mobile/common/api/AliUserLogin;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;
    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$0(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 479
    return-void
.end method
