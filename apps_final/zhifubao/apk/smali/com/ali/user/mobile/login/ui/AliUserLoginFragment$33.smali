.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->b:Ljava/lang/String;

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1331
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    iget-boolean v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->success:Z

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "\u7ed1\u5b9a\u6210\u529f"

    const-string/jumbo v2, "\u4f60\u7684\u652f\u4ed8\u5b9d\u8d26\u6237\u540d\u548c\u767b\u5f55\u5bc6\u7801\uff0c\u4e0e\u6dd8\u5b9d\u8d26\u6237\u4e00\u81f4\u3002"

    const-string/jumbo v3, "\u597d\u7684\uff0c\u6211\u77e5\u9053\u4e86"

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->b:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;Ljava/lang/String;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1342
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;->a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
