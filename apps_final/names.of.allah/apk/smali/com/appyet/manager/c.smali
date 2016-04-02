.class final Lcom/appyet/manager/c;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/appyet/manager/b;


# direct methods
.method constructor <init>(Lcom/appyet/manager/b;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/c;->b:Lcom/appyet/manager/b;

    iput-object p2, p0, Lcom/appyet/manager/c;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/manager/c;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    return-void
.end method
