.class Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CirclePageIndicator.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 414
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->currentPage:I

    .line 424
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 419
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    return-void
.end method
