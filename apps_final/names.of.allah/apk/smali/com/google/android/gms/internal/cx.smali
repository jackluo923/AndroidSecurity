.class public final Lcom/google/android/gms/internal/cx;
.super Lcom/google/android/gms/internal/dg$a;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private oW:Lcom/google/android/gms/internal/cs;

.field private pd:Ljava/lang/String;

.field private ph:Lcom/google/android/gms/internal/cw;

.field private pm:Z

.field private pn:I

.field private po:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cw;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dg$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cx;->pm:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/cx;->pd:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/cx;->pn:I

    iput-object p5, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/cx;->pm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/cx;->ph:Lcom/google/android/gms/internal/cw;

    return-void
.end method


# virtual methods
.method public final finishPurchase()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->c(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/cx;->pn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cs;

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->pd:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cx;->pn:I

    return v0
.end method

.method public final isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cx;->pm:Z

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "In-app billing service connected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cs;->o(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cs;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/cy;->h(Landroid/content/Context;)Lcom/google/android/gms/internal/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->ph:Lcom/google/android/gms/internal/cw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cw;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V

    return-void
.end method
