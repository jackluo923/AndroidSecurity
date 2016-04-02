.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$4;
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
    .line 130
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->doSupplement()V
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;->access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;)V

    .line 136
    return-void
.end method
