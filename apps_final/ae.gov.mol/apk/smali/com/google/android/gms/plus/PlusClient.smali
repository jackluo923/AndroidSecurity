.class public Lcom/google/android/gms/plus/PlusClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusClient$Builder;,
        Lcom/google/android/gms/plus/PlusClient$a;,
        Lcom/google/android/gms/plus/PlusClient$b;,
        Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;,
        Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;,
        Lcom/google/android/gms/plus/PlusClient$OrderBy;,
        Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;,
        Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;
    }
.end annotation


# static fields
.field public static final KEY_REQUEST_VISIBLE_ACTIVITIES:Ljava/lang/String; = "request_visible_actions"


# instance fields
.field final hI:Lcom/google/android/gms/internal/ek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ek;)V
    .locals 0
    .param p1, "plusClientImpl"    # Lcom/google/android/gms/internal/ek;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/PlusClient$a;Landroid/net/Uri;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/plus/PlusClient$a;Landroid/net/Uri;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$b;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/plus/PlusClient$b;Ljava/lang/String;)V

    return-void
.end method

.method bt()Lcom/google/android/gms/internal/ek;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    return-object v0
.end method

.method public clearDefaultAccount()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->clearDefaultAccount()V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->disconnect()V

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    return-void
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;
    .param p2, "maxResults"    # I
    .param p3, "pageToken"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Landroid/net/Uri;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "userId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ek;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "collection"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ek;->loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;I)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;IIILjava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "collection"    # I
    .param p3, "orderBy"    # I
    .param p4, "maxResults"    # I
    .param p5, "pageToken"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ek;->loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;IIILjava/lang/String;)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "personIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V

    return-void
.end method

.method public varargs loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "personIds"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public loadPerson(Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ek;->loadPerson(Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;Ljava/lang/String;)V

    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "orderBy"    # I
    .param p3, "pageToken"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ek;->loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V

    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "pageToken"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ek;->loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeMoment(Ljava/lang/String;)V
    .locals 1
    .param p1, "momentId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->removeMoment(Ljava/lang/String;)V

    return-void
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 1
    .param p1, "moment"    # Lcom/google/android/gms/plus/model/moments/Moment;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hI:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ek;->writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V

    return-void
.end method
