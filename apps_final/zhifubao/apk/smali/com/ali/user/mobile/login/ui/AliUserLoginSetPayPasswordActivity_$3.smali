.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$3;
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
    .line 115
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    # invokes: Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;)V

    .line 121
    return-void
.end method
