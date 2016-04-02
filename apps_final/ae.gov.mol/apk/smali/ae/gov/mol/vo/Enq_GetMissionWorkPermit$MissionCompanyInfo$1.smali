.class Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;
.super Ljava/lang/Object;
.source "Enq_GetMissionWorkPermit.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;


# direct methods
.method constructor <init>(Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;->this$1:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 328
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-direct {v0, p1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 323
    new-array v0, p1, [Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo$1;->newArray(I)[Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    move-result-object v0

    return-object v0
.end method
