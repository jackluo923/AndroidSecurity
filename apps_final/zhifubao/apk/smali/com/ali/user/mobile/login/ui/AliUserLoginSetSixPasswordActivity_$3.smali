.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;
.super Ljava/lang/Object;
.source "AliUserLoginSetSixPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;

    # invokes: Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V

    .line 128
    return-void
.end method
