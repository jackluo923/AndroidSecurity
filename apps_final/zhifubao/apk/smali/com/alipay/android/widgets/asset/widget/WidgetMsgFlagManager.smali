.class public Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;
.super Ljava/lang/Object;
.source "WidgetMsgFlagManager.java"


# static fields
.field private static a:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 28
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->e:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V
    .locals 6

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    if-eqz p2, :cond_2

    .line 120
    const-string/jumbo v0, "WidgetMsgFlagManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshWidgetMsgFlagView, widgetId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v1, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->mark:Z

    .line 122
    const-string/jumbo v0, "cache"

    iget-object v2, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 123
    iget-object v3, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markTag:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markLable:Ljava/lang/String;

    .line 124
    iget-object v5, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markStyle:Ljava/lang/String;

    move-object v0, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgData(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eq p1, v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->reset()V

    goto :goto_0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 78
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    .line 94
    return-void

    .line 70
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 73
    invoke-direct {p0, v0, v6}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 81
    if-nez v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->b:Landroid/content/Context;

    .line 82
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 84
    sget v4, Lcom/alipay/android/phone/wealth/home/R$layout;->h:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    check-cast v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 85
    iget-object v4, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->e:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v1, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->addChild(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->clearChildren()V

    .line 47
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->b()V

    .line 48
    return-void
.end method

.method public final a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 105
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;

    .line 105
    invoke-direct {p0, v1, v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->d:Ljava/util/Map;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->c:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->clearChildren()V

    .line 62
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->b()V

    .line 63
    return-void
.end method
