.class public Lcom/inmobi/commons/internal/ActivityRecognitionManager;
.super Landroid/app/IntentService;


# static fields
.field static a:Ljava/lang/Object;

.field static b:Ljava/lang/Object;

.field static c:I

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a:Ljava/lang/Object;

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->b:Ljava/lang/Object;

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->d:Ljava/lang/Object;

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    sput v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "InMobi activity service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.google.android.gms.common.GooglePlayServicesClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v2, "com.google.android.gms.location.ActivityRecognitionClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const-string v2, "disconnect"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->b:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    move v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v1, v6, v3

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ConnectionCallbacks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v1, v2, v8

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Lcom/inmobi/commons/internal/ActivityRecognitionManager$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/inmobi/commons/internal/ActivityRecognitionManager$b;-><init>(Lcom/inmobi/commons/internal/ActivityRecognitionManager$a;)V

    invoke-static {v8, v2, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->d:Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OnConnectionFailedListener"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v1, v0, v8

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Lcom/inmobi/commons/internal/ActivityRecognitionManager$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/inmobi/commons/internal/ActivityRecognitionManager$b;-><init>(Lcom/inmobi/commons/internal/ActivityRecognitionManager$a;)V

    invoke-static {v8, v0, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->e:Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->d:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->e:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->b:Ljava/lang/Object;

    const-string v0, "connect"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Init: Google play services not included. Cannot get current activity."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Init: Something went wrong during ActivityRecognitionManager.init"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    const-string v0, "com.google.android.gms.location.ActivityRecognitionResult"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "hasResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "extractResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getMostProbableActivity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "HandleIntent: Google play services not included. Cannot get current activity."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "HandleIntent: Google play services not included. Cannot get current activity."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 6

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I

    if-ne v2, v4, :cond_2

    :try_start_0
    const-string v2, "com.google.android.gms.location.DetectedActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    sput v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    sput v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "[InMobi]-4.4.1"

    const-string v3, "Google play services not included."

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I

    :cond_2
    :goto_1
    sget v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v2, "[InMobi]-4.4.1"

    const-string v3, "Google play services not included."

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->c:I

    goto :goto_1
.end method

.method public static getDetectedActivity()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.location.DetectedActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-4.4.1"

    const-string v2, "getDetectedActivity: Google play services not included. Returning null."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "[InMobi]-4.4.1"

    const-string v2, "getDetectedActivity: Google play services not included. Returning null."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
