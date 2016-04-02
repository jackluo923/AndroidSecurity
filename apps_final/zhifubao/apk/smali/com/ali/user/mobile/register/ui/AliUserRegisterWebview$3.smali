.class Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;
.super Ljava/lang/Object;
.source "AliUserRegisterWebview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->email:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    return-void
.end method
