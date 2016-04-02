.class final Lcom/google/android/gms/internal/e$a;
.super Lcom/google/android/gms/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final n:Lcom/google/android/gms/appstate/OnStateDeletedListener;

.field final synthetic o:Lcom/google/android/gms/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/e;Lcom/google/android/gms/appstate/OnStateDeletedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/e$a;->o:Lcom/google/android/gms/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/internal/d;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appstate/OnStateDeletedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/e$a;->n:Lcom/google/android/gms/appstate/OnStateDeletedListener;

    return-void
.end method


# virtual methods
.method public onStateDeleted(II)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "stateKey"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/e$a;->o:Lcom/google/android/gms/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/e$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/e$a;->o:Lcom/google/android/gms/internal/e;

    iget-object v3, p0, Lcom/google/android/gms/internal/e$a;->n:Lcom/google/android/gms/appstate/OnStateDeletedListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/e$b;-><init>(Lcom/google/android/gms/internal/e;Lcom/google/android/gms/appstate/OnStateDeletedListener;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
