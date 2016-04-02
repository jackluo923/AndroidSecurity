.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity$1;
.super Ljava/lang/Object;
.source "AliUserLoginSetDoublePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->setResult(I)V

    .line 54
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->finish()V

    .line 55
    return-void
.end method
