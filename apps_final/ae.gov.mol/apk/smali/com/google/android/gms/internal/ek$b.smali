.class final Lcom/google/android/gms/internal/ek$b;
.super Lcom/google/android/gms/internal/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ej;",
        ">.c<",
        "Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ie:Lcom/google/android/gms/internal/ek;

.field private final if:Lcom/google/android/gms/common/ConnectionResult;

.field private final ig:Ljava/lang/String;

.field private final ih:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$b;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/u$c;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ek$b;->if:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p5, p0, Lcom/google/android/gms/internal/ek$b;->ig:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ek$b;->ih:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ek$b;->if:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/moments/MomentBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ek$b;->ig:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ek$b;->ih:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;->onMomentsLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/moments/MomentBuffer;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ek$b;->a(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;Lcom/google/android/gms/internal/l;)V

    return-void
.end method
