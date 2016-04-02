.class public Lae/gov/mol/vo/UserVo$UserVoData;
.super Ljava/lang/Object;
.source "UserVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/UserVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserVoData"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/UserVo$UserVoData;",
            ">;"
        }
    .end annotation
.end field

.field private MobileNumber:Ljava/lang/String;

.field private PhoneNumber:Ljava/lang/String;

.field private UserID:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private tasheelUser:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/vo/UserVo;

.field private user_name_arb:Ljava/lang/String;

.field private user_name_eng:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lae/gov/mol/vo/UserVo;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->this$0:Lae/gov/mol/vo/UserVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->UserID:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->email:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->tasheelUser:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_arb:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_eng:Ljava/lang/String;

    .line 200
    new-instance v0, Lae/gov/mol/vo/UserVo$UserVoData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/UserVo$UserVoData$1;-><init>(Lae/gov/mol/vo/UserVo$UserVoData;)V

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/vo/UserVo;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 213
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->this$0:Lae/gov/mol/vo/UserVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->UserID:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->email:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->tasheelUser:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_arb:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_eng:Ljava/lang/String;

    .line 200
    new-instance v0, Lae/gov/mol/vo/UserVo$UserVoData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/UserVo$UserVoData$1;-><init>(Lae/gov/mol/vo/UserVo$UserVoData;)V

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->UserID:Ljava/lang/String;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->email:Ljava/lang/String;

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->tasheelUser:Ljava/lang/String;

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_arb:Ljava/lang/String;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_eng:Ljava/lang/String;

    .line 221
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/vo/UserVo$UserVoData;)Lae/gov/mol/vo/UserVo;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->this$0:Lae/gov/mol/vo/UserVo;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->MobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTasheelUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->tasheelUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->email:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTasheelUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "tasheelUser"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->tasheelUser:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->UserID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUser_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_name_arb"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_arb:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setUser_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_name_eng"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_eng:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->tasheelUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->MobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/UserVo$UserVoData;->user_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return-void
.end method
