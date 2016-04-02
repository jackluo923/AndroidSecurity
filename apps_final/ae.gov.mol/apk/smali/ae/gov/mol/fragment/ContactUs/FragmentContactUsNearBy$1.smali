.class Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$1;
.super Ljava/lang/Object;
.source "FragmentContactUsNearBy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
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
        "Lae/gov/mol/vo/ServiceCenterData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lae/gov/mol/vo/ServiceCenterData;Lae/gov/mol/vo/ServiceCenterData;)I
    .locals 5
    .param p1, "o1"    # Lae/gov/mol/vo/ServiceCenterData;
    .param p2, "o2"    # Lae/gov/mol/vo/ServiceCenterData;

    .prologue
    .line 225
    invoke-virtual {p1}, Lae/gov/mol/vo/ServiceCenterData;->getDistance()D

    move-result-wide v0

    .line 226
    .local v0, "distance1":D
    invoke-virtual {p2}, Lae/gov/mol/vo/ServiceCenterData;->getDistance()D

    move-result-wide v2

    .line 227
    .local v2, "distance2":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lae/gov/mol/vo/ServiceCenterData;

    check-cast p2, Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$1;->compare(Lae/gov/mol/vo/ServiceCenterData;Lae/gov/mol/vo/ServiceCenterData;)I

    move-result v0

    return v0
.end method
