.class public Lae/gov/mol/vo/MySalaryCheckBoxVo;
.super Ljava/lang/Object;
.source "MySalaryCheckBoxVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MySalaryCheckBoxVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private detail_des:Ljava/lang/String;

.field private detail_des_eng:Ljava/lang/String;

.field private detail_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lae/gov/mol/vo/MySalaryCheckBoxVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryCheckBoxVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des_eng:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des_eng:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_id:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des_eng:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getDetail_des()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail_des_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail_des(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail_des"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDetail_des_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail_des_eng"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des_eng:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDetail_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail_id"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lae/gov/mol/vo/MySalaryCheckBoxVo;->getDetail_des_eng()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-virtual {p0}, Lae/gov/mol/vo/MySalaryCheckBoxVo;->getDetail_des()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryCheckBoxVo;->detail_des_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
