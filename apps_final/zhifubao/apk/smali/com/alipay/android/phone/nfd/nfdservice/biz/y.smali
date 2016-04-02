.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeReq;->shopId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;->queryShopNotice(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeRsp;

    move-result-object v1

    const-string/jumbo v0, ""

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeRsp;->success:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeRsp;->notice:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryShopPost START.    sign=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] remoteShopPost=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryShopPost exception. sign=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method
