.class final Lcom/google/android/gms/internal/gb$d;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;


# instance fields
.field private final yQ:Lcom/google/android/gms/appstate/AppStateBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb$d;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    return-void
.end method


# virtual methods
.method public final getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$d;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    return-object v0
.end method
