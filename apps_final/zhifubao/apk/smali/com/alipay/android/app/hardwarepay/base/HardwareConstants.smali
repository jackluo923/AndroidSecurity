.class public Lcom/alipay/android/app/hardwarepay/base/HardwareConstants;
.super Ljava/lang/Object;


# direct methods
.method public static a()Landroid/util/SparseIntArray;
    .locals 7

    const/16 v6, 0x1f9

    const/16 v5, 0x1f8

    const/16 v4, 0x1f6

    const/16 v3, 0x1f5

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method
