.class Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState$1;
.super Ljava/lang/Object;
.source "CustomProgressWheel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    new-array v0, p1, [Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;

    return-object v0
.end method
