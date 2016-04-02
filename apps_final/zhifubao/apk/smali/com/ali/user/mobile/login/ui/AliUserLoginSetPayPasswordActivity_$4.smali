.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$4;
.super Ljava/lang/Object;
.source "AliUserLoginSetPayPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    # invokes: Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;)V

    .line 135
    return-void
.end method
