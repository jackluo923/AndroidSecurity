.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$2;
.super Ljava/lang/Object;
.source "AliUserLoginSetSixPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setResult(I)V

    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->finish()V

    .line 121
    return-void
.end method
