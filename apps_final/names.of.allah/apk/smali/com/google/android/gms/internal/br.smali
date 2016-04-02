.class public final Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;


# instance fields
.field public final nJ:I

.field public final nK:Lcom/google/android/gms/internal/bm;

.field public final nL:Lcom/google/android/gms/internal/bv;

.field public final nM:Ljava/lang/String;

.field public final nN:Lcom/google/android/gms/internal/bp;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bv;Ljava/lang/String;Lcom/google/android/gms/internal/bp;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bv;Ljava/lang/String;Lcom/google/android/gms/internal/bp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/br;->nK:Lcom/google/android/gms/internal/bm;

    iput-object p2, p0, Lcom/google/android/gms/internal/br;->nL:Lcom/google/android/gms/internal/bv;

    iput-object p3, p0, Lcom/google/android/gms/internal/br;->nM:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/br;->nN:Lcom/google/android/gms/internal/bp;

    iput p5, p0, Lcom/google/android/gms/internal/br;->nJ:I

    return-void
.end method
