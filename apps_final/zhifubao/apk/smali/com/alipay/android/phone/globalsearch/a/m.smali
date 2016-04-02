.class final Lcom/alipay/android/phone/globalsearch/a/m;
.super Ljava/lang/Object;
.source "ServerRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/globalsearch/a/l;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/globalsearch/a/l;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/a/m;->a:Lcom/alipay/android/phone/globalsearch/a/l;

    iput-object p2, p0, Lcom/alipay/android/phone/globalsearch/a/m;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/phone/globalsearch/a/m;->c:I

    iput p4, p0, Lcom/alipay/android/phone/globalsearch/a/m;->d:I

    iput-object p5, p0, Lcom/alipay/android/phone/globalsearch/a/m;->e:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 57
    new-instance v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;

    invoke-direct {v3}, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/m;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->query:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "mainPage"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->actionSrc:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->sessionId:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "searchbutton"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->searchSrc:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->location:Ljava/lang/String;

    .line 63
    iget v0, p0, Lcom/alipay/android/phone/globalsearch/a/m;->c:I

    iput v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->size:I

    .line 64
    iget v0, p0, Lcom/alipay/android/phone/globalsearch/a/m;->d:I

    iput v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->start:I

    .line 65
    const-string/jumbo v0, "DEBUG"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->trace:Ljava/lang/String;

    .line 66
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->queryIndex:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/m;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->groupIn:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/m;->a:Lcom/alipay/android/phone/globalsearch/a/l;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Lcom/alipay/android/phone/globalsearch/a/l;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->searchParams:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "android"

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->clientOs:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->clientVersion:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    .line 72
    const-string/jumbo v0, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "keyword : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/a/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/phone/globalsearch/a/m;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , groupIn : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/a/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , searchParam : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/a/m;->a:Lcom/alipay/android/phone/globalsearch/a/l;

    invoke-static {v4}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Lcom/alipay/android/phone/globalsearch/a/l;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , size : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/phone/globalsearch/a/m;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , session : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-wide/16 v4, 0x0

    .line 76
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 77
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->d()Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;->search(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;)Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;

    move-result-object v1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 79
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get SearchResult : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->resultCode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "server return query : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " , curreatWord : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    const-string/jumbo v6, ", drop this result"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_1
    const-string/jumbo v0, "server"

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/a/k;

    .line 95
    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/a/m;->a:Lcom/alipay/android/phone/globalsearch/a/l;

    invoke-static {v2, v1}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Lcom/alipay/android/phone/globalsearch/a/l;Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;)V

    .line 96
    const-string/jumbo v2, "jiushi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cost : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/a/m;->a:Lcom/alipay/android/phone/globalsearch/a/l;

    invoke-static {v2}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Lcom/alipay/android/phone/globalsearch/a/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    iget v3, v3, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;->start:I

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/a/k;->a(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;ZIJ)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 97
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method
