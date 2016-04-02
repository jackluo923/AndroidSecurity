.class Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$1;
.super Ljava/lang/Object;
.source "Fragment_Offices_Map.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$1;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$1;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    invoke-virtual {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->removeBack()V

    .line 115
    return-void
.end method
