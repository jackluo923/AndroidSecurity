.class public Lae/gov/mol/vo/Enq_GetMissionWorkPermit;
.super Ljava/lang/Object;
.source "Enq_GetMissionWorkPermit.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetMissionWorkPermit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Link:Ljava/lang/String;

.field private PayCard_No:Ljava/lang/String;

.field private PersonNameArb:Ljava/lang/String;

.field private PersonNameEng:Ljava/lang/String;

.field private TransactionNumber:Ljava/lang/String;

.field private WorkPermitNumber:Ljava/lang/String;

.field private companyno:Ljava/lang/String;

.field private emp_card_expiry:Ljava/lang/String;

.field private nationality:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$1;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->companyno:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->WorkPermitNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->TransactionNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameArb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameEng:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->nationality:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->emp_card_expiry:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PayCard_No:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->Link:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->companyno:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->WorkPermitNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->TransactionNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameArb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameEng:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->nationality:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->emp_card_expiry:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PayCard_No:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->Link:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->companyno:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->WorkPermitNumber:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->TransactionNumber:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameArb:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameEng:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->nationality:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->emp_card_expiry:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PayCard_No:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->Link:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->companyno:Ljava/lang/String;

    return-object v0
.end method

.method public getEmp_card_expiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->emp_card_expiry:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->Link:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCard_No()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PayCard_No:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameArb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameArb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameEng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->TransactionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkPermitNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->WorkPermitNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setCompanyno(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyno"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->companyno:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEmp_card_expiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "emp_card_expiry"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->emp_card_expiry:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->Link:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->nationality:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPayCard_No(Ljava/lang/String;)V
    .locals 0
    .param p1, "payCard_No"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PayCard_No:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPersonNameArb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameArb"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameArb:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPersonNameEng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameEng"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameEng:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTransactionNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionNumber"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->TransactionNumber:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setWorkPermitNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "workPermitNumber"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->WorkPermitNumber:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->companyno:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->WorkPermitNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->TransactionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameArb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PersonNameEng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->nationality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->emp_card_expiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->PayCard_No:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->Link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return-void
.end method
