.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 915
    new-instance v1, Lcom/ali/user/mobile/register/RegistParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/RegistParam;-><init>()V

    .line 916
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "country"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegistParam;->country:Ljava/lang/String;

    .line 918
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toRegist(Lcom/ali/user/mobile/register/RegistParam;)V

    .line 919
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 920
    return-void
.end method
