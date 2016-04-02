.class public final Lcom/alipay/android/phone/globalsearch/a/l;
.super Ljava/lang/Object;
.source "ServerRequester.java"


# static fields
.field private static a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/alipay/android/phone/globalsearch/a/l;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/l;->e:Ljava/util/ArrayList;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 36
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 35
    const-class v1, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    sput-object v0, Lcom/alipay/android/phone/globalsearch/a/l;->a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    .line 38
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/globalsearch/a/l;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/l;->c:Lcom/alipay/android/phone/globalsearch/a/l;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/l;

    invoke-direct {v0}, Lcom/alipay/android/phone/globalsearch/a/l;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/globalsearch/a/l;->c:Lcom/alipay/android/phone/globalsearch/a/l;

    .line 31
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/l;->c:Lcom/alipay/android/phone/globalsearch/a/l;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/globalsearch/a/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/globalsearch/a/l;Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;)V
    .locals 5

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->searchParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/l;->d:Ljava/lang/String;

    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "query : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " searchParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/a/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->sort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/alipay/android/phone/globalsearch/a/l;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic d()Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/l;->a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/l;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 53
    sput-object p1, Lcom/alipay/android/phone/globalsearch/a/l;->b:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/m;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/a/m;-><init>(Lcom/alipay/android/phone/globalsearch/a/l;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 46
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "clear searchParam"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/l;->d:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/l;->e:Ljava/util/ArrayList;

    return-object v0
.end method
