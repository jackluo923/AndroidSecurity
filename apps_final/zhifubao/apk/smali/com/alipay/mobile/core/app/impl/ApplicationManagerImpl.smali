.class public Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;
.super Ljava/lang/Object;
.source "ApplicationManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/core/ApplicationManager;


# static fields
.field public static final KEY_APPLICATION_MANAGER:Ljava/lang/String; = "ApplicationManager"

.field public static final KEY_APPLICATION_MANAGER_ENTRY_APP:Ljava/lang/String; = "ApplicationManager.EntryApp"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/IApplicationEngine;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/framework/app/IApplicationInstaller;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    .line 87
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/IApplicationEngine;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/IApplicationEngine;->createApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 211
    :goto_0
    if-nez v0, :cond_3

    .line 212
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createApplicationByDescription(): [failed to create application by IApplicationEngine]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 232
    :goto_1
    instance-of v1, v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-nez v1, :cond_2

    .line 233
    new-instance v0, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "App "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a App"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createApplicationByDescription(): [IApplicationEngine engine == null, engineType= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 207
    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createApplicationByDescription(): [targetAppDes.engieType is empty]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "App ClassNotFoundException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :catch_1
    move-exception v0

    .line 226
    new-instance v1, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "App IllegalAccessException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :catch_2
    move-exception v0

    .line 228
    new-instance v1, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "App InstantiationException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :catch_3
    move-exception v0

    .line 230
    new-instance v1, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "App Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_2
    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 237
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->setAppId(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->g:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 187
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->create(Landroid/os/Bundle;)V

    .line 188
    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 171
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doRestart() targetAppId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 176
    sget-object v2, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doRestart() pop appId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->restart(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 113
    :try_start_0
    invoke-direct {p0, v2, p3}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSourceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createApp() completed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->start()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v2, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to find ApplicationDescription by [targetAppId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 123
    new-instance v2, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;-><init>(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    sget-object v3, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Try to install ExternalBundle\'s Applicaiton for [targetAppId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0, p2, v2}, Lcom/alipay/mobile/framework/app/IApplicationInstaller;->installApplication(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    :cond_2
    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_3
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Extremely failed to find ApplicationDescription by [targetAppId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], there is no IApplicationInstaller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->g:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public varargs declared-synchronized addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 2

    .prologue
    .line 320
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_0
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->g:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 368
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 384
    return-void
.end method

.method public clearTop(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eq p1, v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 398
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearTop() pop appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    return-void
.end method

.method public varargs declared-synchronized deleteDescriptionByAppId([Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    array-length v5, p1

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, p1, v3

    .line 463
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "deleteDescriptionByAppId(appId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 467
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 468
    iget-object v6, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 474
    :goto_1
    and-int/2addr v4, v0

    .line 462
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 476
    :cond_1
    monitor-exit p0

    return v4

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 372
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 374
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exit() pop appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 378
    return-void
.end method

.method public findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    return-object v0
.end method

.method public declared-synchronized findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 4

    .prologue
    .line 288
    monitor-enter p0

    const/4 v1, 0x0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 290
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 296
    :cond_1
    if-nez v1, :cond_4

    .line 297
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->isLazyBundleByAppId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->findBundleNameByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 304
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    :goto_0
    monitor-exit p0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finishApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a App, or had already be destroyed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 248
    if-eqz v0, :cond_1

    .line 249
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "finishApp(): App: [targetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] => destroy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finishApp(): can\'t find App: [targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getActiveActivityCount()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 542
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v3, v1, [Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 545
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1, v3}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 546
    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 547
    if-eqz v0, :cond_1

    instance-of v5, v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v5, :cond_1

    .line 548
    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActiveActivityCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v0, v1

    .line 546
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 551
    :cond_0
    monitor-exit p0

    return v1

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getEntryAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroyApp() pop appId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
    .locals 3

    .prologue
    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "engineType can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    if-nez p2, :cond_1

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "engine can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerApplicationEngine(engineType"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 426
    const-string/jumbo v0, "ApplicationManager.EntryApp"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    :cond_0
    return-void

    .line 432
    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    .line 433
    const-string/jumbo v0, "ApplicationManager"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-static {v0}, Lcom/alipay/mobile/framework/JSONUtil;->json2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_3

    .line 441
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 443
    :goto_1
    if-eqz v1, :cond_2

    .line 446
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSourceId(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->restoreState(Landroid/content/SharedPreferences;)V

    .line 449
    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v4, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restoreState() App pushed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    .prologue
    .line 414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 416
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->saveState(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 420
    :cond_0
    const-string/jumbo v0, "ApplicationManager"

    invoke-static {v1}, Lcom/alipay/mobile/framework/JSONUtil;->list2Json(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    const-string/jumbo v0, "ApplicationManager.EntryApp"

    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    return-void
.end method

.method public setEntryAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public declared-synchronized startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    if-nez p2, :cond_0

    .line 92
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "targetAppId should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], [targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] had not start up, or is not a App."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startEntryApp(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 339
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startEntryApp(): description==null, mEntryApp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 342
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public unregisterApplicationEngine(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "engineType can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
    .locals 5

    .prologue
    .line 481
    monitor-enter p0

    const/4 v1, 0x0

    .line 482
    if-eqz p1, :cond_4

    .line 483
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 486
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 494
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 496
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 500
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_3

    .line 502
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_3
    const/4 v0, 0x1

    .line 511
    :goto_0
    monitor-exit p0

    return v0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
