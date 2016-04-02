.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->finishAndNotify()V

    .line 223
    return-void
.end method
