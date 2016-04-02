.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$2;
.super Ljava/lang/Object;
.source "AliUserLoginSetDoublePasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

.field final synthetic val$response:Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$2;->val$response:Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_$2;->val$response:Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;->access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    .line 108
    return-void
.end method
