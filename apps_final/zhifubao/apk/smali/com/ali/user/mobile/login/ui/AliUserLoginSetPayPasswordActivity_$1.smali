.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;
.super Ljava/lang/Object;
.source "AliUserLoginSetPayPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

.field final synthetic val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    # invokes: Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    .line 93
    return-void
.end method
