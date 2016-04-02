.class Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;
.super Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
.source "TransportConfigureManagerImpl.java"


# static fields
.field private static c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->b:Z

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl$JsonObjectTypeReference;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl$JsonObjectTypeReference;-><init>(Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 150
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->maybeInitConfigByEnv(Landroid/content/Context;)V

    .line 152
    const-string/jumbo v0, ""

    .line 155
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getLocalSpdyConfig()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string/jumbo v1, "TransportConfigureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update.  Local spdy config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-string/jumbo v0, "spdy_switch_android_9.0"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "TransportConfigureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update. configs=[spdy_switch_android_9.0]  Remote spdy config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const-string/jumbo v0, "TransportConfigureManager"

    const-string/jumbo v1, "update.  spdyConfig is empty. return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->tryEnableMMTPForSettings(Landroid/content/Context;)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 180
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 182
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    .line 183
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->tryEnableMMTPForSettings(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    const-string/jumbo v2, "TransportConfigureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update. Parse spdy config exception.  spdyConfig="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    .line 189
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final newInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;

    return-object v0
.end method


# virtual methods
.method public equalsInt(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;I)Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsLong(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;J)Z
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getLongValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsString(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getIntValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;I)I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 60
    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLongValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)J
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getLongValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;J)J
    .locals 2

    .prologue
    .line 70
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 78
    :cond_0
    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getStringValueList(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getStringValueList(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueList(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public isLoadedConfig()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public update(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->b:Z

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->isLoadedConfig()Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_1
    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->b:Z

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->isLoadedConfig()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 141
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->b:Z

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->b:Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public updateForRc()V
    .locals 5

    .prologue
    .line 111
    const-string/jumbo v1, "{\"allowSpdyErrorTimes\":\"8\",\"netKey\":\"*\",\"cTimeout\":\"20000\",\"grayValue1\":\"64\",\"grayValue2\":\"64\",\"mdapSeed1\":\"1\",\"mdapSeed2\":\"1\",\"onceSpdyErrorTimes\":\"5\",\"open\":\"AT\",\"operationTypeList\":\"ALL1\",\"rTimeout\":\"0\",\"spdyUrl\":\"https://mobilegw.alipay.com/mgw.htm\",\"version\":\"20150330001\",\"wifiOpen\":\"T\",\"errorThreshold\":\"F\",\"gzip\":\"T\",\"dns\":\"0\",\"defi\":\"30000\",\"lswg\":\"1-1\",\"pto\":\"15000\",\"rcmc\":\"10\",\"sgi\":\"10000\",\"tgi\":\"10000\",\"wifii\":\"30000\",\"eca\":\"T\",\"trt\":\"30000\",\"srt\":\"40000\",\"wrt\":\"15000\",\"rscs\":\"F\",\"awstm\":\"12\",\"awstow\":\"6\",\"b2tc\":\"3\",\"b3tc\":\"4\",\"r2tc\":\"3\",\"r3tc\":\"4\",\"nhd\":\"1-1\",\"cfmt\":\"5\",\"ms\":\"1-1\",\"murl\":\"amgw.alipay.com:443\",\"rpcv2\":\"T\"}"

    .line 113
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 115
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string/jumbo v2, "TransportConfigureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update. Parse RC spdy config exception.  spdyConfig="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->a:Ljava/util/Map;

    goto :goto_0
.end method
