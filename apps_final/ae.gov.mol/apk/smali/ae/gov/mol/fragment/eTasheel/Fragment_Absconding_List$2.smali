.class Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$2;
.super Ljava/lang/Object;
.source "Fragment_Absconding_List.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->sort(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lae/gov/mol/vo/AbscondingListVo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lae/gov/mol/vo/AbscondingListVo;Lae/gov/mol/vo/AbscondingListVo;)I
    .locals 4
    .param p1, "obj1"    # Lae/gov/mol/vo/AbscondingListVo;
    .param p2, "obj2"    # Lae/gov/mol/vo/AbscondingListVo;

    .prologue
    .line 294
    invoke-virtual {p1}, Lae/gov/mol/vo/AbscondingListVo;->getmLongDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lae/gov/mol/vo/AbscondingListVo;->getmLongDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lae/gov/mol/vo/AbscondingListVo;->getmLongDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lae/gov/mol/vo/AbscondingListVo;->getmLongDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lae/gov/mol/vo/AbscondingListVo;

    check-cast p2, Lae/gov/mol/vo/AbscondingListVo;

    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$2;->compare(Lae/gov/mol/vo/AbscondingListVo;Lae/gov/mol/vo/AbscondingListVo;)I

    move-result v0

    return v0
.end method
