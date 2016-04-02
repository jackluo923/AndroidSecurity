.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$setValue;
.super Ljava/lang/Object;
.source "Fragment_publicEServiceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "setValue"
.end annotation


# instance fields
.field mstrJson:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V
    .locals 1

    .prologue
    .line 699
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$setValue;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$setValue;->mstrJson:Ljava/lang/String;

    return-void
.end method
