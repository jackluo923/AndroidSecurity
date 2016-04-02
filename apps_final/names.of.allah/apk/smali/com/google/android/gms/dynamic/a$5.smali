.class final Lcom/google/android/gms/dynamic/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Mf:I

.field final synthetic qr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$5;->qr:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/dynamic/a$5;->Mf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$5;->qr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$5;->qr:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/dynamic/a$5;->Mf:I

    invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
