.class Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$2;
.super Ljava/lang/Object;
.source "Fragment_CustomFragment_PublicServiceDetails.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 239
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->locationChanged(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$0(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Landroid/location/Location;)V

    .line 240
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 217
    packed-switch p2, :pswitch_data_0

    .line 225
    :pswitch_0
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
