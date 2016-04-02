.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;->a:Ljava/lang/String;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;->a:Ljava/lang/String;

    const-string/jumbo v2, "withchecktoken"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    return-void
.end method
