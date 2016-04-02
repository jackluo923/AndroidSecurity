.class public Lcom/alipay/android/phone/globalsearch/a/b;
.super Ljava/lang/Object;
.source "BaseDataSource.java"


# static fields
.field protected static h:Z


# instance fields
.field protected final a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:I

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Lcom/alipay/android/phone/globalsearch/a/i;

.field protected p:Lcom/alipay/android/phone/globalsearch/a/i;

.field protected q:Ljava/lang/String;

.field private final r:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field private t:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->c:Z

    .line 32
    iput-boolean v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->e:Z

    .line 34
    iput-boolean v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->f:Z

    .line 35
    iput v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->g:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->l:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->c(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 56
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->t:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 59
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 58
    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->r:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->r:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->a:Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->c(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->e:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->f:Z

    if-nez v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 126
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "mainPageNotifyer refresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_5

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->b:Z

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->t:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v3, :cond_6

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->t:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_6
    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/phone/globalsearch/a/i;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    .line 154
    return-void
.end method

.method public a(Lcom/alipay/android/phone/globalsearch/a/i;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    .line 161
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-nez v0, :cond_1

    .line 65
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "addNewData ,isMore Mode ,return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->c:Z

    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->b:Z

    .line 69
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    sub-long/2addr v2, v4

    .line 71
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string/jumbo v0, "cost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v0, "local"

    const-string/jumbo v2, "y"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/a/b;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v4}, Lcom/alipay/android/phone/globalsearch/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 90
    :cond_2
    :goto_3
    iput-boolean v1, p0, Lcom/alipay/android/phone/globalsearch/a/b;->e:Z

    goto/16 :goto_0

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 76
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 77
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/a/b;->l:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    goto :goto_2

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/phone/globalsearch/a/b;->a()V

    goto :goto_3

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->d:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->b:Z

    .line 144
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    .line 145
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "quit more mode!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->g:I

    .line 174
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->b:Z

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->g:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->g:I

    .line 165
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/b;->d:Z

    return v0
.end method
