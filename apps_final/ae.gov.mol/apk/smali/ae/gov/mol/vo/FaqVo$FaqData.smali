.class public Lae/gov/mol/vo/FaqVo$FaqData;
.super Ljava/lang/Object;
.source "FaqVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/FaqVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaqData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/FaqVo$FaqData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private answer:Ljava/lang/String;

.field private question:Ljava/lang/String;

.field private sr_no:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lae/gov/mol/vo/FaqVo$FaqData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/FaqVo$FaqData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/FaqVo$FaqData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->sr_no:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->question:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->answer:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->sr_no:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->question:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->answer:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->sr_no:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->question:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->answer:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/FaqVo$FaqData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lae/gov/mol/vo/FaqVo$FaqData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static setCREATOR(Landroid/os/Parcelable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/FaqVo$FaqData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "cREATOR":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Lae/gov/mol/vo/FaqVo$FaqData;>;"
    sput-object p0, Lae/gov/mol/vo/FaqVo$FaqData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
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

.method public getAnswer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getSr_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->sr_no:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0
    .param p1, "answer"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lae/gov/mol/vo/FaqVo$FaqData;->answer:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0
    .param p1, "question"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lae/gov/mol/vo/FaqVo$FaqData;->question:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSr_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "sr_no"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/vo/FaqVo$FaqData;->sr_no:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->sr_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->question:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lae/gov/mol/vo/FaqVo$FaqData;->answer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return-void
.end method
