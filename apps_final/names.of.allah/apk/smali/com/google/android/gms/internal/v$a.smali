.class final Lcom/google/android/gms/internal/v$a;
.super Landroid/widget/ViewSwitcher;


# instance fields
.field private final kG:Lcom/google/android/gms/internal/eq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/eq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/eq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$a;->kG:Lcom/google/android/gms/internal/eq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/v$a;)Lcom/google/android/gms/internal/eq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->kG:Lcom/google/android/gms/internal/eq;

    return-object v0
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->kG:Lcom/google/android/gms/internal/eq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/eq;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
