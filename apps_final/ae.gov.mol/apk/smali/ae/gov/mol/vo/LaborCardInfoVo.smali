.class public Lae/gov/mol/vo/LaborCardInfoVo;
.super Ljava/lang/Object;
.source "LaborCardInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/LaborCardInfoVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public LaborCard_Info:Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lae/gov/mol/vo/LaborCardInfoVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/LaborCardInfoVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/LaborCardInfoVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo;->LaborCard_Info:Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo;->LaborCard_Info:Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    return-void
.end method
