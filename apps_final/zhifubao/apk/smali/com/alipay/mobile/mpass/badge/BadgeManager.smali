.class public Lcom/alipay/mobile/mpass/badge/BadgeManager;
.super Ljava/lang/Object;
.source "BadgeManager.java"

# interfaces
.implements Lcom/alipay/mobile/mpass/badge/IBadgeController;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/mpass/badge/BadgeManager;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer;

.field private f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-direct {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->g:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->c:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->requestWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    goto :goto_0

    .line 348
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 327
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 330
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    sget-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ackClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "badgeAck"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->e:Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->e:Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer;

    new-instance v3, Lcom/alipay/mobile/mpass/badge/BadgeManager$1;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager$1;-><init>(Lcom/alipay/mobile/mpass/badge/BadgeManager;Landroid/content/SharedPreferences;)V

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer;->ack(Ljava/util/List;Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer$Callback;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/alipay/mobile/mpass/badge/BadgeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->b:Lcom/alipay/mobile/mpass/badge/BadgeManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->b:Lcom/alipay/mobile/mpass/badge/BadgeManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->b:Lcom/alipay/mobile/mpass/badge/BadgeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public ackAll(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackAll(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ackAll(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->dropBadgeInfoByWidgetId(Ljava/lang/String;Ljava/util/List;Z)V

    .line 181
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V

    .line 182
    invoke-direct {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public ackClick(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    .locals 1

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ackClick(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->dropBadgeInfoByWidgetId(Ljava/lang/String;Ljava/util/List;Z)V

    .line 154
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V

    .line 155
    invoke-direct {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clearAllBadges()V
    .locals 1

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->clean()V

    .line 229
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteRemoteBadgeInfo(Ljava/util/List;)V
    .locals 1
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
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->deleteRemoteBadgeInfo(Ljava/util/List;)V

    .line 314
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getBadgeInfoByBadgePath(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;
    .locals 1

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->getBadgeInfoByBadgePath(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;
    .locals 1

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertLocalBadgeInfo(Ljava/util/List;)V
    .locals 1
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
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->insertLocalBadgeInfo(Ljava/util/List;)V

    .line 275
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public insertRemoteBadgeInfo(Ljava/util/List;)V
    .locals 1
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
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->insertRemoteBadgeInfo(Ljava/util/List;)V

    .line 288
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->d:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->clearAllBadges()V

    .line 266
    return-void
.end method

.method public refreshAfterLogin(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->bindUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    .locals 3

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerBadgeView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 76
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->setBadgeController(Lcom/alipay/mobile/mpass/badge/IBadgeController;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->updateWidgetInfo(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)V

    goto :goto_0
.end method

.method public requestWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    .locals 1

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v0

    .line 355
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->updateWidgetInfo(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setBadgeDataTransfer(Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->e:Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer;

    .line 61
    return-void
.end method

.method public unRegisterBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterBadgeView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 97
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->updateWidgetInfo(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)V

    .line 98
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->setBadgeController(Lcom/alipay/mobile/mpass/badge/IBadgeController;)V

    goto :goto_0
.end method

.method public upateRemoteBadgeInfo(Ljava/util/List;)V
    .locals 1
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
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager;->f:Lcom/alipay/mobile/mpass/badge/model/BadgeModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeModel;->upateRemoteBadgeInfo(Ljava/util/List;)V

    .line 301
    invoke-direct {p0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
