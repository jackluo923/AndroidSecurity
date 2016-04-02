.class final Lcom/alipay/android/phone/messageboxapp/ui/m;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->deleteMsgByType(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 281
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messageboxRpcService.operateByType request are : DELETE , "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;

    move-result-object v0

    const-string/jumbo v1, "DELETE"

    .line 288
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mmmbbbxxx/b/a;->operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpcResult are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8c03\u7528\u901a\u77e5\u4e2d\u5fc3rpc\u51fa\u9519\uff1adeleteMsgByType, msgType =   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/m;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
