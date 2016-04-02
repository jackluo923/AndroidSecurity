.class Lcom/google/android/gms/internal/el$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final iI:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

.field final synthetic iJ:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/el;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/el$a;->iI:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->iv:Landroid/widget/CompoundButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->ix:Lcom/google/android/gms/internal/em;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->iE:Lcom/google/android/gms/internal/eg;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/el$a;->iI:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/el$a;->iI:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->iE:Lcom/google/android/gms/internal/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eg;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el$a;->onPlusOneClick(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPlusOneClick(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/el$a;->iJ:Lcom/google/android/gms/internal/el;

    iget v1, v1, Lcom/google/android/gms/internal/el;->is:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
