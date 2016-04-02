.class final Lcom/alipay/mobile/security/nickname/service/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$0(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$1(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u67e5\u8be2\u6635\u79f0\u56de\u8c03"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$0(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;->onResult(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$2(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->b:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$3(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$1(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6635\u79f0\u8bbe\u7f6e\u56de\u8c03\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->getIsOpen()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/nickname/service/a;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->b:Ljava/util/List;
    invoke-static {v3}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$3(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;->onResult(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
