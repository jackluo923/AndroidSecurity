.class public Lae/gov/mol/vo/ServiceGroupVo;
.super Ljava/lang/Object;
.source "ServiceGroupVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;
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
.field public ServiceGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lae/gov/mol/vo/ServiceGroupVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceGroupVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ServiceGroupVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo;->ServiceGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setServiceGroup(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "serviceGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;>;"
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupVo;->ServiceGroup:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    return-void
.end method
