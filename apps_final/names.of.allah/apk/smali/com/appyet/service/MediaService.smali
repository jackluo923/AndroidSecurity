.class public Lcom/appyet/service/MediaService;
.super Landroid/app/Service;


# static fields
.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:[Ljava/lang/Object;

.field private i:[Ljava/lang/Object;

.field private j:[Ljava/lang/Object;

.field private k:Lcom/appyet/manager/MediaProgressNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/appyet/service/MediaService;->b:[Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appyet/service/MediaService;->c:[Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/appyet/service/MediaService;->d:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/appyet/service/MediaService;->h:[Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/appyet/service/MediaService;->i:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/appyet/service/MediaService;->j:[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApiDemos"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ApiDemos"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/appyet/service/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/service/MediaService;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/service/MediaService;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->c()Lcom/appyet/manager/MediaProgressNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/service/MediaService;->k:Lcom/appyet/manager/MediaProgressNotification;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForeground"

    sget-object v2, Lcom/appyet/service/MediaService;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/service/MediaService;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopForeground"

    sget-object v2, Lcom/appyet/service/MediaService;->d:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/service/MediaService;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/service/MediaService;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/service/MediaService;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForeground"

    sget-object v2, Lcom/appyet/service/MediaService;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/service/MediaService;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/appyet/service/MediaService;->k:Lcom/appyet/manager/MediaProgressNotification;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/service/MediaService;->k:Lcom/appyet/manager/MediaProgressNotification;

    invoke-virtual {v0}, Lcom/appyet/manager/MediaProgressNotification;->a()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/service/MediaService;->k:Lcom/appyet/manager/MediaProgressNotification;

    iget-object v2, p0, Lcom/appyet/service/MediaService;->f:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/appyet/service/MediaService;->i:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/appyet/service/MediaService;->i:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/appyet/service/MediaService;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/service/MediaService;->i:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/appyet/service/MediaService;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/appyet/service/MediaService;->g:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/appyet/service/MediaService;->f:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v4, p0, Lcom/appyet/service/MediaService;->e:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/appyet/service/MediaService;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/service/MediaService;->h:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/appyet/service/MediaService;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/service/MediaService;->h:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/appyet/service/MediaService;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/service/MediaService;->stopSelf()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/service/MediaService;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/service/MediaService;->j:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/appyet/service/MediaService;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/service/MediaService;->j:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/appyet/service/MediaService;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/appyet/service/MediaService;->stopSelf()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/service/MediaService;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/service/MediaService;->h:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/appyet/service/MediaService;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/service/MediaService;->h:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/appyet/service/MediaService;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method
