.class Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;
.super Ljava/lang/Object;
.source "AliuserRegisterSetSixPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

.field final synthetic val$response:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->val$response:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->val$response:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    # invokes: Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->access$001(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    .line 91
    return-void
.end method
