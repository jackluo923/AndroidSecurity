.class Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$1;
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
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$1;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$1;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->removeBack()V

    .line 136
    return-void
.end method
