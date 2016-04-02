.class Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;
.super Landroid/os/Binder;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sso/internal/PidGetterService;


# direct methods
.method constructor <init>(Lcom/taobao/android/sso/internal/PidGetterService;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;->this$0:Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    sget-object v0, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/internal/TokenInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/sso/internal/TokenInfo;

    invoke-direct {v0}, Lcom/taobao/android/sso/internal/TokenInfo;-><init>()V

    sget-object v5, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iput v3, v0, Lcom/taobao/android/sso/internal/TokenInfo;->mPid:I

    iput v4, v0, Lcom/taobao/android/sso/internal/TokenInfo;->mUid:I

    iget-object v0, v0, Lcom/taobao/android/sso/internal/TokenInfo;->mTokens:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-array v0, v1, [Z

    sget-boolean v2, Lcom/taobao/android/sso/internal/PidGetterService;->sIsGetAuthTokenHasPid:Z

    aput-boolean v2, v0, v3

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    new-array v0, v1, [Z

    sget-boolean v2, Lcom/taobao/android/sso/internal/PidGetterService;->sIsAddAccountHasPid:Z

    aput-boolean v2, v0, v3

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0
.end method
