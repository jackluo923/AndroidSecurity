.class public Lcom/google/android/gms/internal/ek;
.super Lcom/google/android/gms/internal/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ek$c;,
        Lcom/google/android/gms/internal/ek$d;,
        Lcom/google/android/gms/internal/ek$k;,
        Lcom/google/android/gms/internal/ek$g;,
        Lcom/google/android/gms/internal/ek$e;,
        Lcom/google/android/gms/internal/ek$a;,
        Lcom/google/android/gms/internal/ek$l;,
        Lcom/google/android/gms/internal/ek$h;,
        Lcom/google/android/gms/internal/ek$f;,
        Lcom/google/android/gms/internal/ek$b;,
        Lcom/google/android/gms/internal/ek$i;,
        Lcom/google/android/gms/internal/ek$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ej;",
        ">;"
    }
.end annotation


# instance fields
.field private ib:Lcom/google/android/gms/plus/model/people/Person;

.field private ic:Lcom/google/android/gms/internal/ed;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ed;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ed;->bu()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/google/android/gms/internal/u;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->u()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected Y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ej;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ej$a;->X(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ej;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->d([B)Lcom/google/android/gms/internal/eu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->ib:Lcom/google/android/gms/plus/model/people/Person;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/u;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/u$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "skip_oob"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "request_visible_actions"

    iget-object v1, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ed;->bv()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->bw()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "required_features"

    iget-object v1, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ed;->bw()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->bz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "application_name"

    iget-object v1, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ed;->bz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v2, 0x31360c

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->by()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->bx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->u()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ic:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ed;->getAccountName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/y;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Lcom/google/android/gms/internal/ek$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$e;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/l;->f(I)Lcom/google/android/gms/internal/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ek$e;->a(Lcom/google/android/gms/internal/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$a;Landroid/net/Uri;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bounding_box"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/gms/internal/ek$c;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ek$c;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$a;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0, v2, p2, v1}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v3, v3}, Lcom/google/android/gms/internal/ek$c;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$b;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Lcom/google/android/gms/internal/ek$i;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$i;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ek$i;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected synthetic c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ek;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ej;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method

.method public clearDefaultAccount()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->ib:Lcom/google/android/gms/plus/model/people/Person;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->clearDefaultAccount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ej;->getAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ib:Lcom/google/android/gms/plus/model/people/Person;

    return-object v0
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x14

    const-string v6, "me"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ek;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;
    .param p2, "maxResults"    # I
    .param p3, "pageToken"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Landroid/net/Uri;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Lcom/google/android/gms/internal/ek$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$a;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/l;->f(I)Lcom/google/android/gms/internal/l;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/internal/ek$a;->a(Lcom/google/android/gms/internal/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;I)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "collection"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ek;->loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;IIILjava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Lcom/google/android/gms/internal/ek$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$e;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/l;->f(I)Lcom/google/android/gms/internal/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ek$e;->a(Lcom/google/android/gms/internal/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadPerson(Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Lcom/google/android/gms/internal/ek$g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$g;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ej;->e(Lcom/google/android/gms/internal/ei;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ek$g;->a(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ax;)V

    goto :goto_0
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "orderBy"    # I
    .param p3, "pageToken"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    new-instance v1, Lcom/google/android/gms/internal/ek$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$e;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    const/4 v2, 0x1

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ei;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/l;->f(I)Lcom/google/android/gms/internal/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ek$e;->a(Lcom/google/android/gms/internal/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
    .param p2, "pageToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ek;->loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V

    return-void
.end method

.method public removeMoment(Ljava/lang/String;)V
    .locals 2
    .param p1, "momentId"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ej;->removeMoment(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->clearDefaultAccount()V

    new-instance v1, Lcom/google/android/gms/internal/ek$k;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek$k;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ej;->c(Lcom/google/android/gms/internal/ei;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ek$k;->b(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 2
    .param p1, "moment"    # Lcom/google/android/gms/plus/model/moments/Moment;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->y()V

    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/er;

    .end local p1    # "moment":Lcom/google/android/gms/plus/model/moments/Moment;
    invoke-static {p1}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/internal/ax;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ek;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ax;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
