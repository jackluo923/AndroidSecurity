.class public Lcom/appyet/context/ApplicationContext;
.super Landroid/app/Application;


# static fields
.field private static B:I

.field public static b:Ljava/lang/String;


# instance fields
.field public A:I

.field public a:Z

.field public c:Lcom/appyet/manager/as;

.field public d:Lcom/appyet/manager/bp;

.field public e:Lcom/appyet/manager/ap;

.field public f:Lcom/appyet/manager/b;

.field public g:Lcom/appyet/manager/bl;

.field public h:Lcom/appyet/manager/d;

.field public i:Lcom/appyet/manager/bk;

.field public j:Lcom/appyet/manager/al;

.field public k:Lcom/appyet/manager/al;

.field public l:Lcom/appyet/manager/af;

.field public m:Lcom/appyet/manager/bw;

.field public n:Lcom/appyet/context/f;

.field public o:Lcom/appyet/context/g;

.field public p:Lcom/appyet/manager/an;

.field public q:Lcom/appyet/metadata/Metadata;

.field public r:Lcom/appyet/metadata/MetadataAppSync;

.field public s:Lcom/appyet/manager/a;

.field public t:Lcom/appyet/manager/bq;

.field public u:Lcom/appyet/manager/bx;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "app.yet"

    sput-object v0, Lcom/appyet/context/ApplicationContext;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/appyet/context/ApplicationContext;->B:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/context/ApplicationContext;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private j()V
    .locals 2

    :goto_0
    invoke-static {}, Lcom/appyet/context/ApplicationContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appyet/manager/al;

    invoke-direct {v0, p0}, Lcom/appyet/manager/al;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    sget-object v1, Lcom/appyet/manager/am;->b:Lcom/appyet/manager/am;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->a(Lcom/appyet/manager/am;)V

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    const-string v1, "Image/"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->h(Ljava/lang/String;)V

    new-instance v0, Lcom/appyet/manager/al;

    invoke-direct {v0, p0}, Lcom/appyet/manager/al;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    sget-object v1, Lcom/appyet/manager/am;->b:Lcom/appyet/manager/am;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->a(Lcom/appyet/manager/am;)V

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    const-string v1, "FavIcon/"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->h(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/appyet/context/ApplicationContext;->z:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/appyet/context/ApplicationContext;->A:I

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/appyet/context/ApplicationContext;->y:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput p1, Lcom/appyet/context/ApplicationContext;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public final declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/appyet/context/ApplicationContext;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v5}, Lcom/appyet/manager/bp;->i()I

    move-result v5

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v6, 0x5265c00

    mul-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v7, v3

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->h()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->k()J

    move-result-wide v3

    iget-object v5, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v5}, Lcom/appyet/manager/bp;->l()I

    move-result v5

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v7, v3

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataApplication;->AppSyncUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    const-string v2, "UTF8"

    invoke-virtual {v1, v0, v2}, Lcom/appyet/manager/al;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/a/r;

    invoke-direct {v1}, Lcom/google/a/r;-><init>()V

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    iput-object v2, v1, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/a/r;->a()Lcom/google/a/k;

    move-result-object v1

    const-class v2, Lcom/appyet/metadata/MetadataAppSync;

    invoke-virtual {v1, v0, v2}, Lcom/google/a/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataAppSync;

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 10

    const-wide/16 v1, 0x3e8

    const v9, 0xea60

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/appyet/receiver/AlarmReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v3, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->k()J

    move-result-wide v3

    iget-object v7, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v7}, Lcom/appyet/manager/bp;->l()I

    move-result v7

    mul-int/2addr v7, v9

    int-to-long v7, v7

    add-long/2addr v3, v7

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v3, v7

    cmp-long v7, v3, v1

    if-gez v7, :cond_1

    :goto_0
    const/16 v3, 0xe

    long-to-int v1, v1

    invoke-virtual {v5, v3, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v4}, Lcom/appyet/manager/bp;->l()I

    move-result v4

    mul-int/2addr v4, v9

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appyet/receiver/AlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move-wide v1, v3

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/context/ApplicationContext;->k()V

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-direct {p0}, Lcom/appyet/context/ApplicationContext;->k()V

    new-instance v0, Lcom/appyet/manager/b;

    invoke-direct {v0, p0}, Lcom/appyet/manager/b;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    new-instance v0, Lcom/appyet/manager/bp;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bp;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Lcom/appyet/context/ApplicationContext;)V

    new-instance v0, Lcom/appyet/manager/d;

    invoke-direct {v0, p0}, Lcom/appyet/manager/d;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    new-instance v0, Lcom/appyet/manager/bl;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bl;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    new-instance v0, Lcom/appyet/manager/bq;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bq;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    new-instance v0, Lcom/appyet/manager/bw;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bw;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    new-instance v0, Lcom/appyet/manager/a;

    invoke-direct {v0, p0}, Lcom/appyet/manager/a;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->s:Lcom/appyet/manager/a;

    new-instance v0, Lcom/appyet/manager/bx;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bx;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->u:Lcom/appyet/manager/bx;

    new-instance v0, Lcom/appyet/manager/as;

    invoke-direct {v0, p0}, Lcom/appyet/manager/as;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    new-instance v0, Lcom/appyet/context/f;

    invoke-direct {v0, p0}, Lcom/appyet/context/f;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    new-instance v0, Lcom/appyet/context/g;

    invoke-direct {v0, p0}, Lcom/appyet/context/g;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    new-instance v0, Lcom/appyet/manager/an;

    invoke-direct {v0, p0}, Lcom/appyet/manager/an;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    new-instance v0, Lcom/appyet/manager/af;

    invoke-direct {v0, p0}, Lcom/appyet/manager/af;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    new-instance v0, Lcom/appyet/manager/bk;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bk;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->i:Lcom/appyet/manager/bk;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.action.Ui2Service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.action.Service2Ui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->x:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appyet/context/ApplicationContext;->j()V

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->i()V

    iget-object v1, p0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v0, v1, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/data/DatabaseHelper;

    invoke-static {v0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/DatabaseHelper;

    iput-object v0, v1, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {v0}, Lcom/appyet/manager/bw;->b()V

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->h()V

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->a()V

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->g()V

    new-instance v0, Lcom/appyet/manager/ap;

    invoke-direct {v0, p0}, Lcom/appyet/manager/ap;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    long-to-int v2, v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_0

    new-instance v0, Lcom/a/a/a/b/a/c;

    invoke-direct {v0, v2}, Lcom/a/a/a/b/a/c;-><init>(I)V

    :goto_0
    new-instance v2, Lcom/a/a/b/h;

    invoke-direct {v2, v1}, Lcom/a/a/b/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/a/a/b/h;->a()Lcom/a/a/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/h;->a(Lcom/a/a/a/b/c;)Lcom/a/a/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/h;->b()Lcom/a/a/b/h;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/a/c;

    iget-object v2, p0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v2}, Lcom/appyet/manager/al;->a()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/appyet/e/a;

    invoke-direct {v3}, Lcom/appyet/e/a;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/a/a/a/a/a/c;-><init>(Ljava/io/File;Lcom/a/a/a/a/b/a;)V

    invoke-virtual {v0, v1}, Lcom/a/a/b/h;->a(Lcom/a/a/a/a/b;)Lcom/a/a/b/h;

    move-result-object v0

    sget-object v1, Lcom/a/a/b/a/k;->b:Lcom/a/a/b/a/k;

    invoke-virtual {v0, v1}, Lcom/a/a/b/h;->a(Lcom/a/a/b/a/k;)Lcom/a/a/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/h;->c()Lcom/a/a/b/g;

    move-result-object v0

    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/f;->a(Lcom/a/a/b/g;)V

    return-void

    :cond_0
    new-instance v0, Lcom/a/a/a/b/a/b;

    invoke-direct {v0, v2}, Lcom/a/a/a/b/a/b;-><init>(I)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->b()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    :cond_1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
