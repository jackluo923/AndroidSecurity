.class Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;
.super Ljava/lang/Object;
.source "TaobaoSsoLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;->a:Ljava/lang/Exception;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6dd8\u5b9dsso\u4fe1\u4efb\u767b\u5f55\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    const v1, 0xb001

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->finish()V

    .line 112
    return-void
.end method
