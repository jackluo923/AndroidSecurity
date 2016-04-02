.class public Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
.super Ljava/lang/Object;
.source "ErrorHandlerandForgotPassWordVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Result:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->Result:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->status:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->Result:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->status:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->Result:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->status:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->Result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->Result:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->status:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->Result:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
