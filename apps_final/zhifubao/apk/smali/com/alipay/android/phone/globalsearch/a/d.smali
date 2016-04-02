.class public final Lcom/alipay/android/phone/globalsearch/a/d;
.super Lcom/alipay/android/phone/globalsearch/a/b;
.source "ChatMessageDataSource.java"


# instance fields
.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/globalsearch/a/b;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->s:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/globalsearch/a/e;-><init>(Lcom/alipay/android/phone/globalsearch/a/d;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->u:Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;

    .line 21
    const-string/jumbo v0, "messagelog"

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->n:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/globalsearch/a/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/globalsearch/a/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/globalsearch/a/d;->a()V

    .line 110
    return-void

    .line 81
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 85
    const/4 v0, 0x1

    if-le v3, v0, :cond_4

    .line 86
    new-instance v4, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6761\u76f8\u5173\u8bb0\u5f55"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->s:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "chatGroup"

    iput-object v0, v4, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    .line 91
    iput-object v1, v4, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    .line 92
    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_4
    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-eqz v0, :cond_5

    .line 99
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/a/d;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    :cond_5
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/a/d;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/a/d;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
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
    .line 51
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    sub-long/2addr v0, v2

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    const-string/jumbo v3, "cost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v0, "local"

    const-string/jumbo v1, "y"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/d;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/alipay/android/phone/globalsearch/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/phone/globalsearch/a/d;->g()V

    goto :goto_0

    .line 61
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 63
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->l:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->s:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->s:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/alipay/android/phone/globalsearch/a/b;->b(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    return-void
.end method

.method public final f()Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/d;->u:Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;

    return-object v0
.end method
