.class public Lae/gov/mol/vo/ParserGroupData;
.super Ljava/lang/Object;
.source "ParserGroupData.java"


# instance fields
.field public Childtem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ParserChildData;",
            ">;"
        }
    .end annotation
.end field

.field public groupItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildtem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ParserChildData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lae/gov/mol/vo/ParserGroupData;->Childtem:Ljava/util/List;

    return-object v0
.end method

.method public getGroupItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/mol/vo/ParserGroupData;->groupItem:Ljava/lang/String;

    return-object v0
.end method

.method public setChildtem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ParserChildData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "childtem":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ParserChildData;>;"
    iput-object p1, p0, Lae/gov/mol/vo/ParserGroupData;->Childtem:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setGroupItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupItem"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lae/gov/mol/vo/ParserGroupData;->groupItem:Ljava/lang/String;

    .line 32
    return-void
.end method
