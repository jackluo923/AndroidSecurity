.class public Lcom/google/android/gms/internal/lw$a;
.super Ljava/lang/Object;


# instance fields
.field public final amm:Lcom/google/android/gms/internal/lx;

.field public final amn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lx;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/lx;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/lw$a;->amm:Lcom/google/android/gms/internal/lx;

    iput-object p2, p0, Lcom/google/android/gms/internal/lw$a;->amn:Ljava/util/List;

    return-void
.end method
