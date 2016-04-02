.class final Lcom/google/android/gms/internal/gb$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;


# instance fields
.field private final yP:I

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$b;->yw:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lcom/google/android/gms/internal/gb$b;->yP:I

    return-void
.end method


# virtual methods
.method public final getStateKey()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gb$b;->yP:I

    return v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$b;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
