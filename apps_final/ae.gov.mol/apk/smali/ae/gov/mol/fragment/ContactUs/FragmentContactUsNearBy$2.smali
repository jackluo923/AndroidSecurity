.class Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$2;
.super Ljava/lang/Object;
.source "FragmentContactUsNearBy.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$2;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 382
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$2;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    # invokes: Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationChanged(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->access$0(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;Landroid/location/Location;)V

    .line 383
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 378
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 373
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 360
    packed-switch p2, :pswitch_data_0

    .line 368
    :pswitch_0
    return-void

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
