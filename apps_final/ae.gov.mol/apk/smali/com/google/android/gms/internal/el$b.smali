.class public Lcom/google/android/gms/internal/el$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusClient$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic iJ:Lcom/google/android/gms/internal/el;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/el;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/eg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/el;->ir:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/el;->ir:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->iv:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    iput-object p2, v0, Lcom/google/android/gms/internal/el;->iE:Lcom/google/android/gms/internal/eg;

    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->bA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->bG()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/el$b;->iJ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->bJ()V

    goto :goto_0
.end method
