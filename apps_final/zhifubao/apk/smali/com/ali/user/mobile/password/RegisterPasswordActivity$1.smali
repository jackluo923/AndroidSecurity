.class Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;
.super Ljava/lang/Object;
.source "RegisterPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

.field final synthetic this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/password/RegisterPasswordActivity;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;->this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;->this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->token:Ljava/lang/String;

    const-string/jumbo v3, "afterreg"

    const/4 v4, 0x1

    # invokes: Lcom/ali/user/mobile/password/RegisterPasswordActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->access$3(Lcom/ali/user/mobile/password/RegisterPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;->this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->finish()V

    .line 103
    return-void
.end method
