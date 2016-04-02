.class public Lorg/apache/cordova/CordovaLocationListener;
.super Ljava/lang/Object;
.source "CordovaLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;
    }
.end annotation


# static fields
.field public static PERMISSION_DENIED:I

.field public static POSITION_UNAVAILABLE:I

.field public static TIMEOUT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/cordova/api/CallbackContext;",
            ">;"
        }
    .end annotation
.end field

.field protected locationManager:Landroid/location/LocationManager;

.field private owner:Lorg/apache/cordova/GeoBroker;

.field protected running:Z

.field private timer:Ljava/util/Timer;

.field public watches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/api/CallbackContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/CordovaLocationListener;->PERMISSION_DENIED:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/CordovaLocationListener;->POSITION_UNAVAILABLE:I

    .line 39
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/CordovaLocationListener;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lorg/apache/cordova/GeoBroker;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/location/LocationManager;
    .param p2, "broker"    # Lorg/apache/cordova/GeoBroker;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaLocationListener;->running:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    .line 50
    const-string v0, "[Cordova Location Listener]"

    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/apache/cordova/CordovaLocationListener;->locationManager:Landroid/location/LocationManager;

    .line 54
    iput-object p2, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    .line 55
    iput-object p3, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/CordovaLocationListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaLocationListener;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/CordovaLocationListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/CordovaLocationListener;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->stop()V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    .line 225
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->cancelTimer()V

    .line 213
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaLocationListener;->running:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaLocationListener;->running:Z

    .line 217
    :cond_0
    return-void
.end method

.method private win(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->cancelTimer()V

    .line 79
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/CallbackContext;

    .line 81
    .local v0, "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Lorg/apache/cordova/GeoBroker;->win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_0

    .line 83
    .end local v0    # "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    invoke-virtual {v3, p0}, Lorg/apache/cordova/GeoBroker;->isGlobalListener(Lorg/apache/cordova/CordovaLocationListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 85
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    const-string v4, "Stopping global listener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->stop()V

    .line 88
    :cond_1
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 90
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/cordova/api/CallbackContext;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    iget-object v4, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/api/CallbackContext;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v3, v5}, Lorg/apache/cordova/GeoBroker;->win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_1

    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lorg/apache/cordova/api/CallbackContext;I)V
    .locals 4
    .param p1, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .param p2, "timeout"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->timer:Ljava/util/Timer;

    new-instance v1, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;

    invoke-direct {v1, p0, p1, p0}, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;-><init>(Lorg/apache/cordova/CordovaLocationListener;Lorg/apache/cordova/api/CallbackContext;Lorg/apache/cordova/CordovaLocationListener;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 169
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaLocationListener;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaLocationListener;->start()V

    .line 173
    :cond_1
    return-void
.end method

.method public addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 2
    .param p1, "timerId"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaLocationListener;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaLocationListener;->start()V

    .line 163
    :cond_0
    return-void
.end method

.method public clearWatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "timerId"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaLocationListener;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->stop()V

    .line 181
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->stop()V

    .line 188
    return-void
.end method

.method protected fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->cancelTimer()V

    .line 60
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/CallbackContext;

    .line 62
    .local v0, "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v0, v4}, Lorg/apache/cordova/GeoBroker;->fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_0

    .line 64
    .end local v0    # "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    invoke-virtual {v3, p0}, Lorg/apache/cordova/GeoBroker;->isGlobalListener(Lorg/apache/cordova/CordovaLocationListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 66
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    const-string v4, "Stopping global listener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lorg/apache/cordova/CordovaLocationListener;->stop()V

    .line 69
    :cond_1
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 71
    iget-object v3, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/cordova/api/CallbackContext;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    iget-object v4, p0, Lorg/apache/cordova/CordovaLocationListener;->owner:Lorg/apache/cordova/GeoBroker;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/api/CallbackContext;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v3, v5}, Lorg/apache/cordova/GeoBroker;->fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_1

    .line 75
    :cond_2
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    const-string v1, "The location has been updated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaLocationListener;->win(Landroid/location/Location;)V

    .line 150
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget v0, Lorg/apache/cordova/CordovaLocationListener;->POSITION_UNAVAILABLE:I

    const-string v1, "GPS provider disabled."

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaLocationListener;->fail(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status of the provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-nez p2, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is OUT OF SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Lorg/apache/cordova/CordovaLocationListener;->POSITION_UNAVAILABLE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaLocationListener;->fail(ILjava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected start()V
    .locals 6

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaLocationListener;->running:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaLocationListener;->running:Z

    .line 201
    iget-object v0, p0, Lorg/apache/cordova/CordovaLocationListener;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget v0, Lorg/apache/cordova/CordovaLocationListener;->POSITION_UNAVAILABLE:I

    const-string v1, "Network provider is not available."

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaLocationListener;->fail(ILjava/lang/String;)V

    goto :goto_0
.end method
