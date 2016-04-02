.class public Lcom/google/analytics/tracking/android/ExceptionReporter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final DEFAULT_DESCRIPTION:Ljava/lang/String; = "UncaughtException"


# instance fields
.field private mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

.field private final mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

.field private final mTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method public constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    new-instance v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p4, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "ExceptionReporter created, original handler is "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "UncaughtException"

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    invoke-interface {v1, v0, p2}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tracking Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->createException(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatchLocalHits()V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    const-string v0, "Passing exception to original handler."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
