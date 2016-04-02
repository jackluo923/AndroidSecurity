.class Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$2;
.super Ljava/lang/Object;
.source "ActivityNewDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$2;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$2;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$2;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f0901b4

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method
