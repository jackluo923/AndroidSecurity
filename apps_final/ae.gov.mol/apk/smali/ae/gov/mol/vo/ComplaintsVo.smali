.class public Lae/gov/mol/vo/ComplaintsVo;
.super Ljava/lang/Object;
.source "ComplaintsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ComplaintsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CONTACT_PERSON:Ljava/lang/String;

.field private DOC_NO:Ljava/lang/String;

.field private SHAKWADATE:Ljava/lang/String;

.field private SHAKWARESULTARB:Ljava/lang/String;

.field private SHAKWARESULTENG:Ljava/lang/String;

.field private SHAKWATYPEARB:Ljava/lang/String;

.field private SHAKWATYPEENG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lae/gov/mol/vo/ComplaintsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ComplaintsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ComplaintsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 183
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->DOC_NO:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWADATE:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEARB:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEENG:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTENG:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTARB:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->CONTACT_PERSON:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->DOC_NO:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWADATE:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEARB:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEENG:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTENG:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTARB:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->CONTACT_PERSON:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->DOC_NO:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWADATE:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEARB:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEENG:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTENG:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTARB:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->CONTACT_PERSON:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getCONTACT_PERSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->CONTACT_PERSON:Ljava/lang/String;

    return-object v0
.end method

.method public getDOC_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->DOC_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getSHAKWADATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWADATE:Ljava/lang/String;

    return-object v0
.end method

.method public getSHAKWARESULTARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTARB:Ljava/lang/String;

    return-object v0
.end method

.method public getSHAKWARESULTENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTENG:Ljava/lang/String;

    return-object v0
.end method

.method public getSHAKWATYPEARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEARB:Ljava/lang/String;

    return-object v0
.end method

.method public getSHAKWATYPEENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEENG:Ljava/lang/String;

    return-object v0
.end method

.method public setCONTACT_PERSON(Ljava/lang/String;)V
    .locals 0
    .param p1, "cONTACT_PERSON"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->CONTACT_PERSON:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDOC_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "dOC_NO"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->DOC_NO:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSHAKWADATE(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHAKWADATE"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWADATE:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSHAKWARESULTARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHAKWARESULTARB"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTARB:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSHAKWARESULTENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHAKWARESULTENG"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTENG:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSHAKWATYPEARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHAKWATYPEARB"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEARB:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSHAKWATYPEENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHAKWATYPEENG"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEENG:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->DOC_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWADATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWATYPEENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->SHAKWARESULTARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lae/gov/mol/vo/ComplaintsVo;->CONTACT_PERSON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return-void
.end method
