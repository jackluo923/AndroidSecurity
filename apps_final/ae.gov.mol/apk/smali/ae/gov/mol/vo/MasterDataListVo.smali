.class public Lae/gov/mol/vo/MasterDataListVo;
.super Ljava/lang/Object;
.source "MasterDataListVo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field code:Ljava/lang/String;

.field description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lae/gov/mol/vo/MasterDataListVo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lae/gov/mol/vo/MasterDataListVo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lae/gov/mol/vo/MasterDataListVo;->code:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lae/gov/mol/vo/MasterDataListVo;->description:Ljava/lang/String;

    .line 23
    return-void
.end method
