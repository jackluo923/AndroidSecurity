.class public Lae/gov/mol/vo/MOLGoalVo;
.super Ljava/lang/Object;
.source "MOLGoalVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MOLGoalVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errResult:Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lae/gov/mol/vo/MOLGoalVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/MOLGoalVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/MOLGoalVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    iput-object v0, p0, Lae/gov/mol/vo/MOLGoalVo;->errResult:Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getErrResult()Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/mol/vo/MOLGoalVo;->errResult:Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    return-object v0
.end method

.method public setErrResult(Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;)V
    .locals 0
    .param p1, "errResult"    # Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    .prologue
    .line 31
    iput-object p1, p0, Lae/gov/mol/vo/MOLGoalVo;->errResult:Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lae/gov/mol/vo/MOLGoalVo;->errResult:Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    return-void
.end method
