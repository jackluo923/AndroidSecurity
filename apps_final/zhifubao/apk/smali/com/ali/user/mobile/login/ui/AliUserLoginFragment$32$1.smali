.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32$1;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;)V
    .locals 0

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;->val$token:Ljava/lang/String;

    const-string/jumbo v2, "withchecktoken"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    return-void
.end method
