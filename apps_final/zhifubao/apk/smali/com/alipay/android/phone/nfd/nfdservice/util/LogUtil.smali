.class public Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/content/BroadcastReceiver;

.field static b:Z

.field static c:Z

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/io/FileWriter;

.field private static f:Ljava/io/File;

.field private static g:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d:Ljava/lang/Boolean;

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Z)Ljava/io/FileWriter;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    if-nez v1, :cond_2

    sput-object p0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/io/File;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/io/File;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    sput-object p0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/io/File;

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    :cond_4
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    move-object v0, v1

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method static a()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Z

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Z

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nfdservice.log"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/FileUtils;->createExternalFileInstance(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ".1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/FileUtils;->createExternalFileInstance(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/FileUtils;->createExternalFileInstance(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/io/File;Z)Ljava/io/FileWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/io/File;Z)Ljava/io/FileWriter;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    const/4 v1, 0x1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;-><init>()V

    iput-object p0, v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;->d:Ljava/lang/Throwable;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$LogModel;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$1;

    invoke-direct {v1, v7}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "D"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "E"

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "E"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nfdservice."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "I"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static initLogContext(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$2;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil$2;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a()V

    return-void
.end method

.method public static isSwitch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onDestroy()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->g:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->g:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->b:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->c:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_3
    :try_start_3
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_4

    :try_start_4
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e:Ljava/io/FileWriter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    :try_start_5
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/io/File;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->f:Ljava/io/File;

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "V"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "W"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "W"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
