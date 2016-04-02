.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onH5Response(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;)V
    .locals 3

    .prologue
    .line 1586
    iget v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1587
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;)V

    .line 1599
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1601
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->memo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
