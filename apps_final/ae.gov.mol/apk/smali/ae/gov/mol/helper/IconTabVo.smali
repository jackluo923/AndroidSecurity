.class public Lae/gov/mol/helper/IconTabVo;
.super Ljava/lang/Object;
.source "IconTabVo.java"


# instance fields
.field mResHover:I

.field mResId:I

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lae/gov/mol/helper/IconTabVo;->mTitle:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mResId"    # I
    .param p3, "mResHover"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lae/gov/mol/helper/IconTabVo;->mTitle:Ljava/lang/String;

    .line 21
    iput p2, p0, Lae/gov/mol/helper/IconTabVo;->mResId:I

    .line 22
    iput p3, p0, Lae/gov/mol/helper/IconTabVo;->mResHover:I

    .line 23
    return-void
.end method


# virtual methods
.method public getmResHoverId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lae/gov/mol/helper/IconTabVo;->mResHover:I

    return v0
.end method

.method public getmResId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lae/gov/mol/helper/IconTabVo;->mResId:I

    return v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/helper/IconTabVo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setmResHoverId(I)V
    .locals 0
    .param p1, "mResHover"    # I

    .prologue
    .line 69
    iput p1, p0, Lae/gov/mol/helper/IconTabVo;->mResHover:I

    .line 70
    return-void
.end method

.method public setmResId(I)V
    .locals 0
    .param p1, "mResId"    # I

    .prologue
    .line 43
    iput p1, p0, Lae/gov/mol/helper/IconTabVo;->mResId:I

    .line 44
    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/helper/IconTabVo;->mTitle:Ljava/lang/String;

    .line 58
    return-void
.end method
