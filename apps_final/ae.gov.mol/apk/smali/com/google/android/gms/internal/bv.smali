.class public Lcom/google/android/gms/internal/bv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bv$1;,
        Lcom/google/android/gms/internal/bv$a;,
        Lcom/google/android/gms/internal/bv$b;
    }
.end annotation


# instance fields
.field protected do:Lcom/google/android/gms/internal/bp;

.field protected ee:Lcom/google/android/gms/internal/bv$a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->do:Lcom/google/android/gms/internal/bp;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/bv;->D(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bp;ILcom/google/android/gms/internal/bv$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bp;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/bp;I)Lcom/google/android/gms/internal/bv;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/bg;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bv$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bv$b;-><init>(Lcom/google/android/gms/internal/bp;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bp;I)V

    goto :goto_0
.end method


# virtual methods
.method protected D(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/bv$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->ee:Lcom/google/android/gms/internal/bv$a;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public aA()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ee:Lcom/google/android/gms/internal/bv$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bv$a;->aC()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public aB()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ee:Lcom/google/android/gms/internal/bv$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/bv$a;->ef:Landroid/os/IBinder;

    return-object v0
.end method

.method public az()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->do:Lcom/google/android/gms/internal/bp;

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->ee:Lcom/google/android/gms/internal/bv$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/bv$a;->ef:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->ee:Lcom/google/android/gms/internal/bv$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bv$a;->aC()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bp;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ee:Lcom/google/android/gms/internal/bv$a;

    iput p1, v0, Lcom/google/android/gms/internal/bv$a;->gravity:I

    return-void
.end method
