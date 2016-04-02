.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final lE:J


# instance fields
.field private final lA:Landroid/view/WindowManager;

.field private final lB:Landroid/os/PowerManager;

.field private final lC:Landroid/app/KeyguardManager;

.field private lD:Lcom/google/android/gms/internal/ae;

.field private lF:Z

.field private lG:J

.field private lH:Z

.field private lI:Landroid/content/BroadcastReceiver;

.field private lJ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private lh:Z

.field private final lq:Ljava/lang/Object;

.field private final lt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;"
        }
    .end annotation
.end field

.field private lu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final lv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final lw:Lcom/google/android/gms/internal/ab;

.field private final lx:Landroid/content/Context;

.field private final ly:Lcom/google/android/gms/internal/af;

.field private lz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ad;->lE:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;)V
    .locals 6

    iget-object v0, p2, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bY()Lcom/google/android/gms/internal/ew;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    new-instance v5, Lcom/google/android/gms/internal/ag;

    iget-object v0, p2, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/eg;->ow:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->bY()Lcom/google/android/gms/internal/ew;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/ag;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ew;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/internal/ew;Landroid/view/View;Lcom/google/android/gms/internal/af;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/internal/ew;Landroid/view/View;Lcom/google/android/gms/internal/af;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ad;->lh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ad;->lF:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ad;->lG:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lJ:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lt:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lv:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lu:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lH:Z

    new-instance v0, Lcom/google/android/gms/internal/ab;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/am;->mc:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/eg;->rv:Lorg/json/JSONObject;

    invoke-direct {v0, v1, p3, v2, v3}, Lcom/google/android/gms/internal/ab;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ew;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    iput-object p5, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lA:Landroid/view/WindowManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lB:Landroid/os/PowerManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lC:Landroid/app/KeyguardManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lx:Landroid/content/Context;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/af;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    new-instance v1, Lcom/google/android/gms/internal/ad$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ad$1;-><init>(Lcom/google/android/gms/internal/ad;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/af$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/af;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tracking ad unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ab;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/af;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ad;->lz:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    return-object v0
.end method


# virtual methods
.method protected final a(ILandroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/aa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ae;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ad;->lD:Lcom/google/android/gms/internal/ae;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/internal/af;)V
    .locals 1

    const-string v0, "http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ey;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->e(Z)V

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final a(Landroid/view/View;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lB:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lC:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aq()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lI:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ad$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ad$2;-><init>(Lcom/google/android/gms/internal/ad;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ad;->lI:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/ad;->lx:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ad;->lI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final ar()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lI:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lx:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ad;->lI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->lI:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final as()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->aw()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->ar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->ay()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lH:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->at()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Untracked ad unit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ab;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "JSON Failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final at()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lD:Lcom/google/android/gms/internal/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lD:Lcom/google/android/gms/internal/ae;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ad;)V

    :cond_0
    return-void
.end method

.method public final au()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lH:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final av()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ad;->lu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected final aw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected final ax()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ab;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ab;->ao()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ab;->am()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/ad;->lw:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ab;->ap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected final ay()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->ax()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "doneReasonCode"

    const-string v2, "u"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected final b(Lcom/google/android/gms/internal/af;)V
    .locals 2

    const-string v0, "/updateActiveView"

    new-instance v1, Lcom/google/android/gms/internal/ad$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ad$3;-><init>(Lcom/google/android/gms/internal/ad;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/activeViewPingSent"

    new-instance v1, Lcom/google/android/gms/internal/ad$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ad$4;-><init>(Lcom/google/android/gms/internal/ad;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/visibilityChanged"

    new-instance v1, Lcom/google/android/gms/internal/ad$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ad$5;-><init>(Lcom/google/android/gms/internal/ad;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/viewabilityChanged"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mR:Lcom/google/android/gms/internal/bd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    return-void
.end method

.method protected final c(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 11

    const/4 v1, 0x2

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->ax()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aget v4, v0, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v0, v0, v4

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ad;->lA:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ad;->lA:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v7, "viewBox"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "top"

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "bottom"

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "left"

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "right"

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "adBox"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "top"

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "bottom"

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "left"

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "right"

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "globalVisibleBox"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "top"

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "bottom"

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "left"

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "localVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "top"

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "bottom"

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "left"

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v8, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "right"

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v2}, Lcom/google/android/gms/internal/ad;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "screenDensity"

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v2

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isVisible"

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/ad;->a(Landroid/view/View;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isStopped"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ad;->lF:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "isPaused"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ad;->lh:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1
.end method

.method protected final c(Lcom/google/android/gms/internal/af;)V
    .locals 1

    const-string v0, "/viewabilityChanged"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    const-string v0, "/visibilityChanged"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    const-string v0, "/activeViewPingSent"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    const-string v0, "/updateActiveView"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected final d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lJ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/ad;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final e(Z)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lH:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-eqz p1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ad;->lG:J

    sget-wide v5, Lcom/google/android/gms/internal/ad;->lE:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-lez v3, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ad;->lG:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lt:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->as()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ad;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->av()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ad;->at()V

    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Active view update failed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->e(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->e(Z)V

    return-void
.end method

.method public final pause()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lh:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->e(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->pause()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final resume()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->resume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lh:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->e(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final stop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ad;->lq:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ad;->lF:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ad;->e(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->ly:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->pause()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
