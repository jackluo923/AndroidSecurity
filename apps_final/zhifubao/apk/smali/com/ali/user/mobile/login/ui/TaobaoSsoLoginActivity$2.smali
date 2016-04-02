.class Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;
.super Ljava/lang/Object;
.source "TaobaoSsoLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->access$4(Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 149
    return-void
.end method
