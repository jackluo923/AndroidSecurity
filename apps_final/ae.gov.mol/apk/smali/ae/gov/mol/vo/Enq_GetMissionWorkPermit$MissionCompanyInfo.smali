.class public Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
.super Ljava/lang/Object;
.source "Enq_GetMissionWorkPermit.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/Enq_GetMissionWorkPermit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissionCompanyInfo"
.end annotation


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private RequiredGrnt:Ljava/lang/String;

.field private comcode:Ljava/lang/String;

.field private comnamearb:Ljava/lang/String;

.field private comnameeng:Ljava/lang/String;

.field private pendingpayment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comcode:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnamearb:Ljava/lang/String;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnameeng:Ljava/lang/String;

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->pendingpayment:Ljava/lang/String;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->RequiredGrnt:Ljava/lang/String;

    .line 319
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;-><init>(Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;)V

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comcode:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnamearb:Ljava/lang/String;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnameeng:Ljava/lang/String;

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->pendingpayment:Ljava/lang/String;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->RequiredGrnt:Ljava/lang/String;

    .line 319
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;-><init>(Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;)V

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comcode:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnamearb:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnameeng:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->pendingpayment:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->RequiredGrnt:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public static getInstance()Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getComcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comcode:Ljava/lang/String;

    return-object v0
.end method

.method public getComnamearb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnamearb:Ljava/lang/String;

    return-object v0
.end method

.method public getComnameeng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnameeng:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingpayment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->pendingpayment:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredGrnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->RequiredGrnt:Ljava/lang/String;

    return-object v0
.end method

.method public setComcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "comcode"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comcode:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setComnamearb(Ljava/lang/String;)V
    .locals 0
    .param p1, "comnamearb"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnamearb:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setComnameeng(Ljava/lang/String;)V
    .locals 0
    .param p1, "comnameeng"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnameeng:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setPendingpayment(Ljava/lang/String;)V
    .locals 0
    .param p1, "pendingpayment"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->pendingpayment:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setRequiredGrnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "requiredGrnt"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->RequiredGrnt:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnamearb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->comnameeng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->pendingpayment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->RequiredGrnt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    return-void
.end method
