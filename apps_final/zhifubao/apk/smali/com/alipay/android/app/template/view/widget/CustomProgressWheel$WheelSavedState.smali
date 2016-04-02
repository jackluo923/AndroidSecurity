.class Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomProgressWheel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:F

.field b:F

.field c:Z

.field d:F

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 766
    new-instance v0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 717
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->a:F

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->b:F

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->c:Z

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->d:F

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->e:I

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->f:I

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->g:I

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->h:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->i:I

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->j:Z

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->k:Z

    .line 747
    return-void

    :cond_0
    move v0, v2

    .line 738
    goto :goto_0

    :cond_1
    move v0, v2

    .line 745
    goto :goto_1

    :cond_2
    move v1, v2

    .line 746
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 732
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 751
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 752
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 753
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 754
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 755
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 756
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 762
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->k:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 763
    return-void

    :cond_0
    move v0, v2

    .line 754
    goto :goto_0

    :cond_1
    move v0, v2

    .line 761
    goto :goto_1

    :cond_2
    move v1, v2

    .line 762
    goto :goto_2
.end method
