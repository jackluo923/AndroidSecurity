.class public final Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
.super Ljava/lang/Object;


# instance fields
.field final synthetic ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->aiN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "googleTransactionId is required"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    const/16 v3, 0x8

    if-gt v0, v3, :cond_1

    :goto_1
    const-string v0, "status is an unrecognized value"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final setDetailedReason(Ljava/lang/String;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->ajO:Ljava/lang/String;

    return-object p0
.end method

.method public final setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->aiN:Ljava/lang/String;

    return-object p0
.end method

.method public final setStatus(I)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajP:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iput p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    return-object p0
.end method
