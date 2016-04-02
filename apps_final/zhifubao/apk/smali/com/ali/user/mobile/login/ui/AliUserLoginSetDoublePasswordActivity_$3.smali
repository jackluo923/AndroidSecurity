.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$3;
.super Ljava/lang/Object;
.source "AliUserLoginSetDoublePasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

    # invokes: Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;->access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;)V

    .line 122
    return-void
.end method
