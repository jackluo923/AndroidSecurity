.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toRegist(Lcom/ali/user/mobile/register/RegistParam;)V

    .line 928
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 929
    return-void
.end method
