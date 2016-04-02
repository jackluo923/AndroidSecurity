.class public Lcom/alipay/mobile/common/logging/ContextInfo;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# static fields
.field private static final a:Ljava/util/Map;
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


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sput-object v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    const-string/jumbo v2, "Android-container"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.eg.android.AlipayGphoneRC"

    const-string/jumbo v2, "Android-container-RC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v2, "productID"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_b

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "appkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "workspaceId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v2, "productVersion"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v2

    const-string/jumbo v3, "channelId"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v2

    const-string/jumbo v3, "releaseType"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "releaseCode"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "channel.config"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string/jumbo v3, "channel_id"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    const-string/jumbo v4, "channelId"

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string/jumbo v3, "release_type"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    const-string/jumbo v4, "releaseType"

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string/jumbo v3, "release_version"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v1

    const-string/jumbo v3, "releaseCode"

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 55
    :cond_7
    :goto_4
    new-instance v0, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;-><init>()V

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/helper/ClientIdHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "utdid"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "userID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    .line 58
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    .line 52
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_5
    :try_start_7
    const-string/jumbo v2, "read channel.config fail"

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_8
    :goto_6
    if-eqz v0, :cond_7

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_a
    :goto_9
    throw v0

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v2

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_5

    :catch_a
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :cond_b
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.UPDATE_LOG_CONTEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v0, "updateLogContext fail"

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "ChannelId"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "releaseType"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "ReleaseType"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseCode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "ReleaseCode"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "productID"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "ProductId"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "productVersion"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "ProductVersion"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "ClientId"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "utdid"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "DeviceId"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->k:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "userID"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "UserId"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
