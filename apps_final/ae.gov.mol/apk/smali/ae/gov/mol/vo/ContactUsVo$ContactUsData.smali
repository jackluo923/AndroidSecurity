.class public Lae/gov/mol/vo/ContactUsVo$ContactUsData;
.super Ljava/lang/Object;
.source "ContactUsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/ContactUsVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactUsData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Address:Ljava/lang/String;

.field private Department:Ljava/lang/String;

.field private Fax:Ljava/lang/String;

.field private Lattitude:Ljava/lang/String;

.field private LocMapID:Ljava/lang/String;

.field private Longtitude:Ljava/lang/String;

.field private OfficeName:Ljava/lang/String;

.field private Phone:Ljava/lang/String;

.field private Status:Ljava/lang/String;

.field private WorkingTime:Ljava/lang/String;

.field private distance:D

.field private emirates:Ljava/lang/String;

.field private officeid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lae/gov/mol/vo/ContactUsVo$ContactUsData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Fax:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Status:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->OfficeName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->WorkingTime:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->officeid:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->emirates:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Address:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Phone:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->LocMapID:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Department:Ljava/lang/String;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->distance:D

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Fax:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Status:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->OfficeName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->WorkingTime:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->officeid:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->emirates:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Address:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Phone:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->LocMapID:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Department:Ljava/lang/String;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->distance:D

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Longtitude:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Fax:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Lattitude:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Status:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->OfficeName:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->WorkingTime:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->officeid:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->emirates:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Address:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Phone:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->LocMapID:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Department:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->distance:D

    .line 339
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Department:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->distance:D

    return-wide v0
.end method

.method public getEmirates()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->emirates:Ljava/lang/String;

    return-object v0
.end method

.method public getFax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Fax:Ljava/lang/String;

    return-object v0
.end method

.method public getLattitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Lattitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocMapID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->LocMapID:Ljava/lang/String;

    return-object v0
.end method

.method public getLongtitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Longtitude:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->OfficeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->officeid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Phone:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->WorkingTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Address:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setDepartment(Ljava/lang/String;)V
    .locals 0
    .param p1, "department"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Department:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .param p1, "distance"    # D

    .prologue
    .line 281
    iput-wide p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->distance:D

    .line 282
    return-void
.end method

.method public setEmirates(Ljava/lang/String;)V
    .locals 0
    .param p1, "emirates"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->emirates:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setFax(Ljava/lang/String;)V
    .locals 0
    .param p1, "fax"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Fax:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setLattitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "lattitude"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Lattitude:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setLocMapID(Ljava/lang/String;)V
    .locals 0
    .param p1, "locMapID"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->LocMapID:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setLongtitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longtitude"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Longtitude:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOfficeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "officeName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->OfficeName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setOfficeid(Ljava/lang/String;)V
    .locals 0
    .param p1, "officeid"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->officeid:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Phone:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Status:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setWorkingTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "workingTime"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->WorkingTime:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Longtitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Fax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Lattitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->OfficeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->WorkingTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->officeid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->emirates:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->LocMapID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->Department:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-wide v0, p0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->distance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 307
    return-void
.end method
