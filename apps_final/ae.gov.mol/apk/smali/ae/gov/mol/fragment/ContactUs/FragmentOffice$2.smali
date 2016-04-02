.class Lae/gov/mol/fragment/ContactUs/FragmentOffice$2;
.super Ljava/lang/Object;
.source "FragmentOffice.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/FragmentOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$2;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 367
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$2;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    # invokes: Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationChanged(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->access$0(Lae/gov/mol/fragment/ContactUs/FragmentOffice;Landroid/location/Location;)V

    .line 368
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 363
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 358
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 345
    packed-switch p2, :pswitch_data_0

    .line 353
    :pswitch_0
    return-void

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
