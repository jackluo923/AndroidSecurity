.class Lcom/google/android/gms/dynamic/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# instance fields
.field final synthetic LY:Lcom/google/android/gms/dynamic/a;

.field final synthetic Mb:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$3;->LY:Lcom/google/android/gms/dynamic/a;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/a$3;->Mb:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$3;->LY:Lcom/google/android/gms/dynamic/a;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$3;->Mb:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
