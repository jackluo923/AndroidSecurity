.class Lae/gov/mol/fragment/Fragment_Home$24;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->changeLanguage()V
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 788
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$24$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/Fragment_Home$24$1;-><init>(Lae/gov/mol/fragment/Fragment_Home$24;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    return-void
.end method
