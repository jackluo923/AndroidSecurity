.class public Lcom/alipay/mobile/mpass/badge/model/BadgeModel;
.super Ljava/lang/Object;
.source "BadgeModel.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 286
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 291
    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    .line 293
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTotalBadgeNumber()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->addMsgCount(Ljava/lang/String;I)V

    .line 291
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 296
    :cond_1
    new-instance v0, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;-><init>()V

    .line 297
    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTotalBadgeNumber()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->putMsgCount(Ljava/lang/String;I)V

    .line 298
    iget-object v8, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v4, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    move-result-object v4

    .line 310
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v4}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 317
    :goto_2
    array-length v0, v5

    if-ge v1, v0, :cond_3

    .line 318
    aget-object v6, v5, v1

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    .line 322
    if-eqz v0, :cond_4

    .line 323
    invoke-virtual {v4}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTotalBadgeNumber()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->addMsgCount(Ljava/lang/String;I)V

    .line 317
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 325
    :cond_4
    new-instance v0, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;-><init>()V

    .line 326
    invoke-virtual {v4}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTotalBadgeNumber()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->putMsgCount(Ljava/lang/String;I)V

    .line 327
    iget-object v7, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 336
    :cond_5
    return-void
.end method


# virtual methods
.method public bindUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "badgeInfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a()V

    .line 40
    :cond_0
    return-void
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 274
    return-void
.end method

.method public deleteRemoteBadgeInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 121
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_2

    .line 127
    new-instance v3, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    move-result-object v2

    .line 128
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setStyle(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setTemporaryBadgeNumber(I)V

    .line 134
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v3

    if-gez v3, :cond_3

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setTemporaryBadgeNumber(I)V

    .line 137
    :cond_3
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v3

    if-gtz v3, :cond_4

    .line 138
    iget-object v3, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    :goto_2
    const-string/jumbo v0, "BadgeModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteRemoteBadgeInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->deflateToMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 148
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a()V

    goto/16 :goto_0
.end method

.method public dropBadgeInfoByWidgetId(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 200
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 201
    aget-object v4, v3, v0

    .line 202
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_2

    if-eqz p3, :cond_3

    .line 205
    :cond_2
    const-string/jumbo v0, "BadgeModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dropBadgeInfoByWidgetIdLocal"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 200
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 216
    :goto_4
    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 217
    aget-object v5, v4, v2

    .line 218
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 221
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_6

    if-eqz p3, :cond_8

    .line 223
    :cond_6
    new-instance v2, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    .line 224
    iget-object v5, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v6, ""

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 225
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v2

    if-lez v2, :cond_7

    .line 226
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_7
    const-string/jumbo v2, "BadgeModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dropBadgeInfoByWidgetIdRemote"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 216
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 238
    :cond_9
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a()V

    goto/16 :goto_0
.end method

.method public getBadgeInfoByBadgePath(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 267
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v2, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>(Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setStyle(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 264
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setTemporaryBadgeNumber(I)V

    :cond_1
    move-object v0, v2

    .line 267
    goto :goto_0
.end method

.method public getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertLocalBadgeInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 53
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 59
    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 62
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setStyle(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setTemporaryBadgeNumber(I)V

    .line 64
    const-string/jumbo v0, "BadgeModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLocalBadgeInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v4, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>(Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v1, "BadgeModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addLocalBadgeInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a()V

    goto/16 :goto_0
.end method

.method public insertRemoteBadgeInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 84
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    new-instance v3, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setStyle(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getTemporaryBadgeNumber()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setTemporaryBadgeNumber(I)V

    .line 98
    iget-object v3, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->deflateToMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    const-string/jumbo v0, "BadgeModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateRemoteBadgeInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getBadgePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->deflateToMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    const-string/jumbo v2, "BadgeModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addRemoteBadgeInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->a()V

    goto/16 :goto_0
.end method

.method public upateRemoteBadgeInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_3

    .line 169
    new-instance v3, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->inflateFromMsg(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->getPersistentBadgeNumber()I

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 174
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->deflateToMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->insertRemoteBadgeInfo(Ljava/util/List;)V

    goto :goto_0
.end method
