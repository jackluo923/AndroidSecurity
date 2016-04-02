.class public Lae/gov/mol/vo/NewsVo$newsData;
.super Ljava/lang/Object;
.source "NewsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/NewsVo;
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
            "Lae/gov/mol/vo/NewsVo$newsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AddDate:Ljava/lang/String;

.field private AddDateString:Ljava/lang/String;

.field private Details:Ljava/lang/String;

.field private ModifyDate:Ljava/lang/String;

.field private ModifyDateString:Ljava/lang/String;

.field private headline:Ljava/lang/String;

.field private id:J

.field private newsDate:Ljava/lang/String;

.field private newsphoto:Ljava/lang/String;

.field private newsshort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lae/gov/mol/vo/NewsVo$newsData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/NewsVo$newsData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/NewsVo$newsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->id:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsDate:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->headline:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDate:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDateString:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->Details:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDate:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDateString:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsshort:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->id:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsDate:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->headline:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDate:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDateString:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->Details:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDate:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDateString:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsshort:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsDate:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->headline:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsshort:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->id:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDate:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDateString:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->Details:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDate:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDateString:Ljava/lang/String;

    .line 278
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public getAddDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAddDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->Details:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->headline:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->id:J

    return-wide v0
.end method

.method public getModifyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsphoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsphoto:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsshort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsshort:Ljava/lang/String;

    return-object v0
.end method

.method public setAddDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "addDate"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDate:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setAddDateString(Ljava/lang/String;)V
    .locals 0
    .param p1, "addDateString"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDateString:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->Details:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setHeadline(Ljava/lang/String;)V
    .locals 0
    .param p1, "headline"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->headline:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->id:J

    .line 104
    return-void
.end method

.method public setModifyDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifyDate"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setModifyDateString(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifyDateString"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDateString:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setNewsDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsDate"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsDate:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setNewsphoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsphoto"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsphoto:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setNewsshort(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsshort"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsshort:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsphoto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->headline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->newsshort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-wide v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->ModifyDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->Details:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/vo/NewsVo$newsData;->AddDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    return-void
.end method
