.class public Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;
.super Ljava/lang/Object;
.source "MOL_Vission_MissionVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/MOL_Vission_MissionVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoalVoDetail"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;",
            ">;"
        }
    .end annotation
.end field

.field private Vission:Ljava/lang/String;

.field private mission:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->status:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->Vission:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->mission:Ljava/lang/String;

    .line 136
    new-instance v0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail$1;-><init>(Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;)V

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->status:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->Vission:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->mission:Ljava/lang/String;

    .line 136
    new-instance v0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail$1;-><init>(Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;)V

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->status:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->Vission:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->mission:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getMission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->mission:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->Vission:Ljava/lang/String;

    return-object v0
.end method

.method public setMission(Ljava/lang/String;)V
    .locals 0
    .param p1, "mission"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->mission:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->status:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setVission(Ljava/lang/String;)V
    .locals 0
    .param p1, "vission"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->Vission:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->Vission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->mission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void
.end method
