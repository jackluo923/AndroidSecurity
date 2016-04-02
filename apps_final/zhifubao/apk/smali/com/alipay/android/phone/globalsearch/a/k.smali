.class public final Lcom/alipay/android/phone/globalsearch/a/k;
.super Lcom/alipay/android/phone/globalsearch/a/b;
.source "ServerDataSource.java"


# instance fields
.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Map;
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

.field private w:Ljava/util/Map;
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

.field private x:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/globalsearch/a/b;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->t:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->v:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->w:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->d:Z

    .line 35
    iput-boolean v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->b:Z

    .line 36
    iput-boolean v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->e:Z

    .line 37
    const-string/jumbo v0, "publicplatform"

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->m:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "group id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-boolean p3, p0, Lcom/alipay/android/phone/globalsearch/a/k;->b:Z

    .line 115
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;

    .line 126
    new-instance v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 127
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actionParam:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 128
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actionType:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    .line 129
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->bizId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 130
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->desc:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    .line 131
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->icon:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 132
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 133
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->templateId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 134
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->ext:Ljava/util/Map;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    .line 135
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->ext:Ljava/util/Map;

    invoke-static {v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    .line 136
    iput-object p1, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    .line 137
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->fromServer:Z

    .line 138
    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->actIcons:Ljava/util/List;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actIcons:Ljava/util/List;

    .line 139
    iget-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "actionParam"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    iget-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "actionParam"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 142
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v3, "search"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get from server : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->bizId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " templateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/Hit;->templateId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 179
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 219
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "mainPageNotifyer refresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 223
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "morePageNotifyer refresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->t:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->v:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/a/k;->w:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    const-string/jumbo v5, "jiushi"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "groupName : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " groupId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , moreLinkName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 186
    const-string/jumbo v8, " listsize : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-static {v5, v7}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v9, :cond_8

    .line 189
    const-string/jumbo v5, "gift"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 190
    iget-object v5, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_5
    const/4 v0, 0x0

    move v5, v0

    :goto_3
    if-lt v5, v9, :cond_7

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-static {v3, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {v3, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_6
    :goto_4
    invoke-static {v3, v7}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 195
    :cond_7
    iget-object v8, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    .line 203
    :cond_8
    const-string/jumbo v5, "gift"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 204
    iget-object v5, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-static {v3, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {v3, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showAll : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->t:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    :goto_0
    return-object v2

    .line 245
    :cond_0
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "listTemp is null : group id is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;ZIJ)V
    .locals 7

    .prologue
    .line 41
    if-nez p1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->b()V

    .line 45
    :cond_0
    sget-boolean v0, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->o:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 47
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "mainPageNotifyer refresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->groupRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    const-string/jumbo v1, "bill"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "group is null , and "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    const-string/jumbo v1, "bill"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v0, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->groupRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    const-string/jumbo v0, "cost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "bucketId"

    iget-object v1, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->bucketId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "local"

    const-string/jumbo v1, "n"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;->searchId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    invoke-direct {p0}, Lcom/alipay/android/phone/globalsearch/a/k;->g()V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->p:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->q:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/a/i;->a()V

    .line 68
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "morePageNotifyer refresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;

    .line 57
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    const-string/jumbo v4, "publicplatform"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/alipay/android/phone/globalsearch/a/b;->h:Z

    if-nez v1, :cond_5

    const-string/jumbo v1, "publicplatformclient"

    invoke-static {v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/globalsearch/a/j;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string/jumbo v1, "jiushi\t"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "groupRecord.groupId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    const-string/jumbo v4, "bill"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    if-ne p3, v1, :cond_7

    iget-boolean v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->t:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->v:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->moreLinkName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->w:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->moreLinkUrl:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v4, "jiushiFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "groupId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", groupName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " oldIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "groupCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hits:Ljava/util/List;

    iget-boolean v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    invoke-direct {p0, v1, v4, v5}, Lcom/alipay/android/phone/globalsearch/a/k;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 58
    :cond_6
    iget-object v1, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 57
    :cond_7
    const-string/jumbo v1, "jiushi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isbillMore : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->hasMore:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v1, "jiushiFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "groupId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", groupName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", groupCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->groupId:Ljava/lang/String;

    iget v5, v0, Lcom/alipay/android/mobilesearch/biz/rpc/model/GroupRecord;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public final a(Lcom/alipay/android/phone/globalsearch/a/i;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 308
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 287
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "groupId + "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->x:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 261
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    return-void
.end method

.method public final f()Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/k;->x:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    return-object v0
.end method
