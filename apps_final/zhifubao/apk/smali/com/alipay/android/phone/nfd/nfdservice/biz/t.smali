.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsReq;->shopIds:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;->queryShopIcons(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsRes;->success:Z

    if-nez v1, :cond_3

    :cond_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "asyncQueryShopIconFromRpc rsp is null"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "asyncQueryShopIconFromRpc rsp false , "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "asyncQueryShopIconFromRpc exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsRes;->icons:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "asyncQueryShopIconFromRpc rsp empty"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/t;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
