.class Lae/gov/mol/fragment/Fragment_Home$26;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 934
    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;
    invoke-static {}, Lae/gov/mol/fragment/Fragment_Home;->access$7()Lae/gov/mol/AnimationLayout;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/AnimationLayout;->toggleSidebar()V

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delayed Visiblity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;
    invoke-static {}, Lae/gov/mol/fragment/Fragment_Home;->access$7()Lae/gov/mol/AnimationLayout;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/AnimationLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 936
    return-void
.end method
