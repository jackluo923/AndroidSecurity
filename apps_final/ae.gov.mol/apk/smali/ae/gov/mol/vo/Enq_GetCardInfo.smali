.class public Lae/gov/mol/vo/Enq_GetCardInfo;
.super Ljava/lang/Object;
.source "Enq_GetCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CardInformation:Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lae/gov/mol/vo/Enq_GetCardInfo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetCardInfo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/Enq_GetCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo;->CardInformation:Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getCardInformation()Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo;->CardInformation:Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    return-object v0
.end method

.method public setCardInformation(Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;)V
    .locals 0
    .param p1, "cardInformation"    # Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo;->CardInformation:Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo;->CardInformation:Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    return-void
.end method
