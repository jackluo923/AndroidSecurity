.class public Lae/gov/mol/vo/FaqVo;
.super Ljava/lang/Object;
.source "FaqVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/FaqVo$FaqData;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/FaqVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/FaqVo$FaqData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lae/gov/mol/vo/FaqVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/FaqVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/FaqVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    sget-object v1, Lae/gov/mol/vo/FaqVo$FaqData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 65
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

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/FaqVo$FaqData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    return-object v0
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/FaqVo$FaqData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/FaqVo$FaqData;>;"
    iput-object p1, p0, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 46
    return-void
.end method
