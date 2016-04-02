.class final Lcom/alipay/android/phone/messageboxapp/ui/l;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/j;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/j;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->deleteMsgByIdList(Ljava/util/List;)I

    move-result v0

    .line 215
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

    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messageboxRpcService.operateByMsgIdList request are : DELETE,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "DELETE"

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    .line 228
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mmmbbbxxx/b/a;->operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 231
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

    .line 239
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 235
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8c03\u7528\u901a\u77e5\u4e2d\u5fc3rpc\u51fa\u9519\uff1adeleteMsgByIdList, deleteMsgByIdList =   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
