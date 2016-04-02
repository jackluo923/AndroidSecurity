.class Lae/gov/mol/fragment/ContactUs/FragmentContactUs$2;
.super Ljava/lang/Object;
.source "FragmentContactUs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->sort(Ljava/util/List;)V
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
        "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$2;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lae/gov/mol/vo/ContactUsVo$ContactUsData;Lae/gov/mol/vo/ContactUsVo$ContactUsData;)I
    .locals 2
    .param p1, "o1"    # Lae/gov/mol/vo/ContactUsVo$ContactUsData;
    .param p2, "o2"    # Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .prologue
    .line 185
    invoke-virtual {p1}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getOfficeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getOfficeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    check-cast p2, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$2;->compare(Lae/gov/mol/vo/ContactUsVo$ContactUsData;Lae/gov/mol/vo/ContactUsVo$ContactUsData;)I

    move-result v0

    return v0
.end method
