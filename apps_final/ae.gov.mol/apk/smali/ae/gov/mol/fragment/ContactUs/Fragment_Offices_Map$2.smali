.class Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;
.super Ljava/lang/Object;
.source "Fragment_Offices_Map.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->addMarker()V
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
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, "position":I
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    const-class v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    iget-object v2, v2, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v2, Lae/gov/mol/helper/Tags;->mContactUsVo:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;
    invoke-static {v2}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->access$5(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)Lae/gov/mol/vo/ContactUsVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;

    invoke-virtual {v2, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
