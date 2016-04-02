.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;
.super Ljava/lang/Object;
.source "AliUserLoginSetPayPasswordExActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;

.field final synthetic val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    # invokes: Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    .line 107
    return-void
.end method
