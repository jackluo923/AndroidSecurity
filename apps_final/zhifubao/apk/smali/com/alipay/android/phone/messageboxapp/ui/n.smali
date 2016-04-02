.class final Lcom/alipay/android/phone/messageboxapp/ui/n;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/h;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/h;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iput p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->readMsgById(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 498
    if-gtz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u672c\u5730\u6570\u636e\u5e93\u64cd\u4f5c\u51fa\u9519\uff1aposition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \uff0cmsgInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 503
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Ljava/util/ArrayList;)V

    .line 509
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;

    move-result-object v0

    .line 511
    const-string/jumbo v2, "READ"

    .line 512
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mmmbbbxxx/b/a;->operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 513
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 514
    :catch_1
    move-exception v0

    .line 515
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 516
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8c03\u7528\u901a\u77e5\u4e2d\u5fc3rpc\u51fa\u9519\uff1aposition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \uff0cmsgInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 518
    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->b:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 517
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
