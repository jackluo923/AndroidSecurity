.class Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;
.super Ljava/lang/Object;
.source "MOLLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/MOLLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MOLLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/MOLLocationManager;


# direct methods
.method private constructor <init>(Lae/gov/mol/helper/MOLLocationManager;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->this$0:Lae/gov/mol/helper/MOLLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/helper/MOLLocationManager;Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;-><init>(Lae/gov/mol/helper/MOLLocationManager;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->this$0:Lae/gov/mol/helper/MOLLocationManager;

    # invokes: Lae/gov/mol/helper/MOLLocationManager;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lae/gov/mol/helper/MOLLocationManager;->access$0(Lae/gov/mol/helper/MOLLocationManager;Landroid/location/Location;)V

    .line 88
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->this$0:Lae/gov/mol/helper/MOLLocationManager;

    # getter for: Lae/gov/mol/helper/MOLLocationManager;->mSingleUpdate:Ljava/lang/Boolean;
    invoke-static {v0}, Lae/gov/mol/helper/MOLLocationManager;->access$1(Lae/gov/mol/helper/MOLLocationManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->this$0:Lae/gov/mol/helper/MOLLocationManager;

    # getter for: Lae/gov/mol/helper/MOLLocationManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lae/gov/mol/helper/MOLLocationManager;->access$2(Lae/gov/mol/helper/MOLLocationManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->this$0:Lae/gov/mol/helper/MOLLocationManager;

    # getter for: Lae/gov/mol/helper/MOLLocationManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lae/gov/mol/helper/MOLLocationManager;->access$2(Lae/gov/mol/helper/MOLLocationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 107
    return-void
.end method
