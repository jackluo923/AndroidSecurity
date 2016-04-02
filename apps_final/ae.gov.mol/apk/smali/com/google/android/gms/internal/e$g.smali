.class final Lcom/google/android/gms/internal/e$g;
.super Lcom/google/android/gms/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/e;

.field private final t:Lcom/google/android/gms/appstate/OnSignOutCompleteListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/e;Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/e$g;->o:Lcom/google/android/gms/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/internal/d;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appstate/OnSignOutCompleteListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/e$g;->t:Lcom/google/android/gms/appstate/OnSignOutCompleteListener;

    return-void
.end method


# virtual methods
.method public onSignOutComplete()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/e$g;->o:Lcom/google/android/gms/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/e$h;

    iget-object v2, p0, Lcom/google/android/gms/internal/e$g;->o:Lcom/google/android/gms/internal/e;

    iget-object v3, p0, Lcom/google/android/gms/internal/e$g;->t:Lcom/google/android/gms/appstate/OnSignOutCompleteListener;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/e$h;-><init>(Lcom/google/android/gms/internal/e;Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
