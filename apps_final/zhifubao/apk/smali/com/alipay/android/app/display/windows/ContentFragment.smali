.class public Lcom/alipay/android/app/display/windows/ContentFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/ContentFragment;->a:Landroid/view/View;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/ContentFragment;->a:Landroid/view/View;

    return-object v0
.end method
