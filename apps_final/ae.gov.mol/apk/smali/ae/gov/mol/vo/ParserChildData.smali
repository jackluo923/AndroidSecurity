.class public Lae/gov/mol/vo/ParserChildData;
.super Ljava/lang/Object;
.source "ParserChildData.java"


# instance fields
.field public childItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/mol/vo/ParserChildData;->childItem:Ljava/lang/String;

    return-object v0
.end method

.method public setChildItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "childItem"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lae/gov/mol/vo/ParserChildData;->childItem:Ljava/lang/String;

    .line 29
    return-void
.end method
