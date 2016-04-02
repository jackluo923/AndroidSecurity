.class public Lae/gov/mol/vo/ContactUsVo;
.super Ljava/lang/Object;
.source "ContactUsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/ContactUsVo$ContactUsData;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ContactUsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lae/gov/mol/vo/ContactUsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ContactUsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ContactUsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    sget-object v1, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 81
    return-void
.end method


# virtual methods
.method public AddContactUsData(Lae/gov/mol/vo/ContactUsVo$ContactUsData;)V
    .locals 1
    .param p1, "mContactUsData"    # Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    return-object v0
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ContactUsVo$ContactUsData;>;"
    iput-object p1, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/vo/ContactUsVo;->resources:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    return-void
.end method
