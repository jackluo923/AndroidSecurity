.class Lcom/google/android/gms/internal/el$c;
.super Landroid/widget/CompoundButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic iJ:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/el;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/el$c;->iJ:Lcom/google/android/gms/internal/el;

    invoke-direct {p0, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public toggle()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/el$c;->iJ:Lcom/google/android/gms/internal/el;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/el;->ir:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/el$c;->iJ:Lcom/google/android/gms/internal/el;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/el;->ir:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/el$c;->iJ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->bI()V

    goto :goto_0
.end method
