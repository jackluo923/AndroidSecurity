.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$2;
.super Ljava/lang/Object;
.source "AliUserLoginSMSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setResult(I)V

    .line 90
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->finish()V

    .line 91
    return-void
.end method
