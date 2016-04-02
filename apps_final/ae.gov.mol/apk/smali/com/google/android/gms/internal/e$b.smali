.class final Lcom/google/android/gms/internal/e$b;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/g;",
        ">.b<",
        "Lcom/google/android/gms/appstate/OnStateDeletedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/e;

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/e;Lcom/google/android/gms/appstate/OnStateDeletedListener;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e$b;->o:Lcom/google/android/gms/internal/e;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/e$b;->p:I

    iput p4, p0, Lcom/google/android/gms/internal/e$b;->q:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/OnStateDeletedListener;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/e$b;->p:I

    iget v1, p0, Lcom/google/android/gms/internal/e$b;->q:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/appstate/OnStateDeletedListener;->onStateDeleted(II)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appstate/OnStateDeletedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/e$b;->a(Lcom/google/android/gms/appstate/OnStateDeletedListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
