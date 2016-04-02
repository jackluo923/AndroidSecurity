.class public Lae/gov/mol/vo/KeyValueVo;
.super Ljava/lang/Object;
.source "KeyValueVo.java"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/KeyValueVo;->mKey:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/KeyValueVo;->mValue:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getmKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lae/gov/mol/vo/KeyValueVo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/mol/vo/KeyValueVo;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setmKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKey"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lae/gov/mol/vo/KeyValueVo;->mKey:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setmValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "mValue"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/mol/vo/KeyValueVo;->mValue:Ljava/lang/String;

    .line 35
    return-void
.end method
