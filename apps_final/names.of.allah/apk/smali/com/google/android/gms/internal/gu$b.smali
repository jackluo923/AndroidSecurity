.class final Lcom/google/android/gms/internal/gu$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field FJ:I

.field FK:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gu$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/gu$b;->FJ:I

    iput v0, p0, Lcom/google/android/gms/internal/gu$b;->FJ:I

    iget v0, p1, Lcom/google/android/gms/internal/gu$b;->FK:I

    iput v0, p0, Lcom/google/android/gms/internal/gu$b;->FK:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gu$b;->FJ:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gu;-><init>(Lcom/google/android/gms/internal/gu$b;)V

    return-object v0
.end method
