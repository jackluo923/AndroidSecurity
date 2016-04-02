.class public final Lcom/appyet/manager/ap;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/analytics/tracking/android/Tracker;

.field public b:Lcom/google/analytics/tracking/android/Tracker;

.field private c:Lcom/appyet/context/ApplicationContext;

.field private d:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/manager/ap;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/ap;->d:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataAppSync;->VendorGoogleAnalyticUACode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataAppSync;->VendorGoogleAnalyticUACode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ap;->d:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    iget-object v1, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorGoogleAnalyticUACode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataApplication;->UserGoogleAnalyticUaCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/ap;->d:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    iget-object v1, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserGoogleAnalyticUaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataApplication;->VendorGoogleAnalyticUaCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataApplication;->VendorGoogleAnalyticUaCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/ap;->d:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    iget-object v1, p0, Lcom/appyet/manager/ap;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->VendorGoogleAnalyticUaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->createException(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/appyet/manager/aq;

    invoke-direct {v0, p0, p1}, Lcom/appyet/manager/aq;-><init>(Lcom/appyet/manager/ap;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/aq;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {p1, p2, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->createSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {p1, p2, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->createSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
