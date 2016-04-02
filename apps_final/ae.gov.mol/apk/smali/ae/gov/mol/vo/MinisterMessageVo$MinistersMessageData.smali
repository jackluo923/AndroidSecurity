.class public Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;
.super Ljava/lang/Object;
.source "MinisterMessageVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/MinisterMessageVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinistersMessageData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->Description:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->Description:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->Description:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->Description:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->Description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
