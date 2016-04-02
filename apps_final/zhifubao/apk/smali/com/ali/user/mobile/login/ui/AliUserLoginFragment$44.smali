.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;
.super Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;
.source "AliUserLoginFragment.java"


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 1718
    invoke-direct {p0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPacelable(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "YWUC-JTTYZH-C102"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 1723
    return-void
.end method
