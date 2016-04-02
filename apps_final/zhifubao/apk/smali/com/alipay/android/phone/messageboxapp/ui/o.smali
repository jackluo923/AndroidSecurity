.class final Lcom/alipay/android/phone/messageboxapp/ui/o;
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
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iput p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->b:I

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 536
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 535
    check-cast v0, Ljava/util/ArrayList;

    .line 537
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v1

    const-string/jumbo v2, "NOTICE"

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->readMsgByType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 551
    if-lez v1, :cond_0

    .line 556
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Ljava/util/ArrayList;)V

    .line 565
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 567
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messageboxRpcService.operateByType request are : READ , "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , NOTICE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;

    move-result-object v0

    const-string/jumbo v1, "READ"

    .line 573
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NOTICE"

    .line 572
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mmmbbbxxx/b/a;->operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 574
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8c03\u7528\u901a\u77e5\u4e2d\u5fc3rpc\u51fa\u9519\uff1aposition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 544
    :catch_1
    move-exception v0

    .line 545
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u672c\u5730\u6570\u636e\u5e93\u64cd\u4f5c\u51fa\u9519\uff1aposition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \uff0cmsgInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/phone/messageboxapp/ui/o;->b:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 559
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 561
    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
