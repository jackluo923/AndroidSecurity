.class public Lae/gov/mol/vo/NewsDetailsVo$newsData;
.super Ljava/lang/Object;
.source "NewsDetailsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/NewsDetailsVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "newsData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/NewsDetailsVo$newsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ID:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private newsphoto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lae/gov/mol/vo/NewsDetailsVo$newsData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/NewsDetailsVo$newsData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->details:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->ID:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->details:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->ID:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->ID:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->details:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsphoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->newsphoto:Ljava/lang/String;

    return-object v0
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->details:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->ID:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setNewsphoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsphoto"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->newsphoto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lae/gov/mol/vo/NewsDetailsVo$newsData;->details:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void
.end method
