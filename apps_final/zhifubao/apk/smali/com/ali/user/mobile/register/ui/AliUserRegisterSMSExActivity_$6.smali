.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$mobile:Ljava/lang/String;

.field final synthetic val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$mobile:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$mobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$501(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    .line 165
    return-void
.end method
