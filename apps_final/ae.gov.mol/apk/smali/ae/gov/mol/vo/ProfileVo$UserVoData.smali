.class public Lae/gov/mol/vo/ProfileVo$UserVoData;
.super Ljava/lang/Object;
.source "ProfileVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/ProfileVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserVoData"
.end annotation


# instance fields
.field private BlockedCompany:Ljava/lang/String;

.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ProfileVo$UserVoData;",
            ">;"
        }
    .end annotation
.end field

.field private GoodCompany:Ljava/lang/String;

.field private MobileNumber:Ljava/lang/String;

.field private PhoneNumber:Ljava/lang/String;

.field private TotalCompany:Ljava/lang/String;

.field private UserName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/vo/ProfileVo;

.field private user_full_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lae/gov/mol/vo/ProfileVo;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->this$0:Lae/gov/mol/vo/ProfileVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->user_full_name:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->UserName:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->email:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->TotalCompany:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->GoodCompany:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->BlockedCompany:Ljava/lang/String;

    .line 216
    new-instance v0, Lae/gov/mol/vo/ProfileVo$UserVoData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ProfileVo$UserVoData$1;-><init>(Lae/gov/mol/vo/ProfileVo$UserVoData;)V

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/vo/ProfileVo;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 229
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->this$0:Lae/gov/mol/vo/ProfileVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->user_full_name:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->UserName:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->email:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->TotalCompany:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->GoodCompany:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->BlockedCompany:Ljava/lang/String;

    .line 216
    new-instance v0, Lae/gov/mol/vo/ProfileVo$UserVoData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ProfileVo$UserVoData$1;-><init>(Lae/gov/mol/vo/ProfileVo$UserVoData;)V

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->user_full_name:Ljava/lang/String;

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->UserName:Ljava/lang/String;

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->email:Ljava/lang/String;

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->TotalCompany:Ljava/lang/String;

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->GoodCompany:Ljava/lang/String;

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->BlockedCompany:Ljava/lang/String;

    .line 238
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/vo/ProfileVo$UserVoData;)Lae/gov/mol/vo/ProfileVo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->this$0:Lae/gov/mol/vo/ProfileVo;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockedCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->BlockedCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->GoodCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->MobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->TotalCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_full_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->user_full_name:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockedCompany(Ljava/lang/String;)V
    .locals 0
    .param p1, "blockedCompany"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->BlockedCompany:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->email:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setGoodCompany(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodCompany"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->GoodCompany:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->MobileNumber:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTotalCompany(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalCompany"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->TotalCompany:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->UserName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUser_full_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_full_name"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->user_full_name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->user_full_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->UserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->MobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->TotalCompany:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->GoodCompany:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo$UserVoData;->BlockedCompany:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return-void
.end method
