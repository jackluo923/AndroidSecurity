.class Lae/gov/mol/fragment/Fragment_Home$23;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$23;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCompanyWebserviceStatus(Z)Z
    .locals 1
    .param p1, "isSucess"    # Z

    .prologue
    .line 663
    if-eqz p1, :cond_0

    .line 664
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$23;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    # invokes: Lae/gov/mol/fragment/Fragment_Home;->showCompanyList()V
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->access$5(Lae/gov/mol/fragment/Fragment_Home;)V

    .line 666
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
