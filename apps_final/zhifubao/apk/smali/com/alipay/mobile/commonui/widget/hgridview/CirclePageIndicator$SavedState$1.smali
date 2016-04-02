.class final Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState$1;->newArray(I)[Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
