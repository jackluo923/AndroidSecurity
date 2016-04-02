.class public final Lcom/google/android/gms/internal/dj;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/df;",
        ">;"
    }
.end annotation


# static fields
.field private static final pt:Lcom/google/android/gms/internal/dj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dj;->pt:Lcom/google/android/gms/internal/dj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dj$a;

    const-string v1, "InAppPurchaseManager requires the useClientJar flag in intent extras."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dj$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/app/Activity;)Lcom/google/android/gms/internal/de;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/dj;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Using AdOverlay from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cv;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/dj;->pt:Lcom/google/android/gms/internal/dj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dj;->e(Landroid/app/Activity;)Lcom/google/android/gms/internal/de;
    :try_end_0
    .catch Lcom/google/android/gms/internal/dj$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/app/Activity;)Lcom/google/android/gms/internal/de;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dj;->D(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/df;->b(Lcom/google/android/gms/dynamic/d;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/de$a;->r(Landroid/os/IBinder;)Lcom/google/android/gms/internal/de;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/g$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Could not create remote InAppPurchaseManager."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Could not create remote InAppPurchaseManager."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dj;->v(Landroid/os/IBinder;)Lcom/google/android/gms/internal/df;

    move-result-object v0

    return-object v0
.end method

.method protected final v(Landroid/os/IBinder;)Lcom/google/android/gms/internal/df;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/df$a;->s(Landroid/os/IBinder;)Lcom/google/android/gms/internal/df;

    move-result-object v0

    return-object v0
.end method
