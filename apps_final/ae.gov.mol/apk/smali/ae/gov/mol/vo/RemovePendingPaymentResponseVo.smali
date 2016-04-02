.class public Lae/gov/mol/vo/RemovePendingPaymentResponseVo;
.super Ljava/lang/Object;
.source "RemovePendingPaymentResponseVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/RemovePendingPaymentResponseVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Failure:Ljava/lang/String;

.field private Result:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/RemovePendingPaymentResponseVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "0"

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Failure:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Result:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "0"

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Failure:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Result:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Result:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getFailure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "0"

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isSucess()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Result:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->Result:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
