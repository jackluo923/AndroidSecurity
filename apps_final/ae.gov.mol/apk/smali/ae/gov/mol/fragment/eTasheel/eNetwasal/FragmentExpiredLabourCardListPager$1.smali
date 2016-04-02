.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$1;
.super Ljava/lang/Object;
.source "FragmentExpiredLabourCardListPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->sort(Ljava/util/ArrayList;)V
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
        "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lae/gov/mol/vo/ExpiredLabourCardListVo;Lae/gov/mol/vo/ExpiredLabourCardListVo;)I
    .locals 4
    .param p1, "obj1"    # Lae/gov/mol/vo/ExpiredLabourCardListVo;
    .param p2, "obj2"    # Lae/gov/mol/vo/ExpiredLabourCardListVo;

    .prologue
    .line 343
    invoke-virtual {p1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getmLongDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getmLongDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getmLongDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getmLongDate()J

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
    check-cast p1, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    check-cast p2, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$1;->compare(Lae/gov/mol/vo/ExpiredLabourCardListVo;Lae/gov/mol/vo/ExpiredLabourCardListVo;)I

    move-result v0

    return v0
.end method
