.class public final Lcom/google/android/gms/internal/dr$a;
.super Lcom/google/android/gms/internal/dr;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dr;-><init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/dr$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bn()V
    .locals 0

    return-void
.end method

.method public final bo()Lcom/google/android/gms/internal/dx;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/az;

    invoke-direct {v0}, Lcom/google/android/gms/internal/az;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/dr$a;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/bk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/bk;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ef;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ef;-><init>()V

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/ee;)Lcom/google/android/gms/internal/dy;

    move-result-object v0

    return-object v0
.end method
