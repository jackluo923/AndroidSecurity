.class Lcom/ali/user/mobile/common/api/AliUserLogin$3;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Z

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->b:Z

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->b:Z

    # invokes: Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$1(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u6dd8\u5b9dsso\u514d\u767b\u5f02\u5e38\uff0c\u8d77\u8d26\u5bc6"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
