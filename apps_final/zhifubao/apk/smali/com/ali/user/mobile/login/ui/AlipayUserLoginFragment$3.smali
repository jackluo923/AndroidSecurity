.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    const-string/jumbo v1, "UC-LOG-150512-09"

    const-string/jumbo v2, "logingetpwd"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->clearPassword()V

    .line 136
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->toForgetPassword()V

    .line 137
    return-void
.end method
