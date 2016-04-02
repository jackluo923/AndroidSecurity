.class public interface abstract Lcom/ali/user/mobile/service/UserFaceLoginService;
.super Ljava/lang/Object;
.source "UserFaceLoginService.java"


# virtual methods
.method public abstract initFaceLogin(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;I)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;
.end method

.method public abstract queryFaceLogin(Ljava/util/List;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;"
        }
    .end annotation
.end method
