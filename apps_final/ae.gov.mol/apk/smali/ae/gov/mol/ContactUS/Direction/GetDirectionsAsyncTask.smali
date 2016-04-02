.class public Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;
.super Landroid/os/AsyncTask;
.source "GetDirectionsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DESTINATION_LAT:Ljava/lang/String; = "destination_lat"

.field public static final DESTINATION_LONG:Ljava/lang/String; = "destination_long"

.field public static final DIRECTIONS_MODE:Ljava/lang/String; = "directions_mode"

.field public static final USER_CURRENT_LAT:Ljava/lang/String; = "user_current_lat"

.field public static final USER_CURRENT_LONG:Ljava/lang/String; = "user_current_long"


# instance fields
.field private activity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

.field private exception:Ljava/lang/Exception;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;)V
    .locals 0
    .param p1, "activity"    # Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->activity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    .line 37
    return-void
.end method

.method private processException()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error retriving Data"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/util/Map;

    invoke-virtual {p0, p1}, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->doInBackground([Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "params"    # [Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v7, 0x0

    aget-object v5, p1, v7

    .line 66
    .local v5, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "user_current_lat"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v7, "user_current_long"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 67
    .local v3, "fromPosition":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "destination_lat"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v7, "destination_long"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 68
    .local v6, "toPosition":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v4, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;

    invoke-direct {v4}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;-><init>()V

    .line 69
    .local v4, "md":Lae/gov/mol/ContactUS/Direction/GMapV2Direction;
    const-string v7, "directions_mode"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v3, v6, v7}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getDocument(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 70
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {v4, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getDirection(Lorg/w3c/dom/Document;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "fromPosition":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "md":Lae/gov/mol/ContactUS/Direction/GMapV2Direction;
    .end local v6    # "toPosition":Lcom/google/android/gms/maps/model/LatLng;
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->exception:Ljava/lang/Exception;

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v0, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 50
    iget-object v0, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->activity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->handleGetDirectionsResult(Ljava/util/ArrayList;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->processException()V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->activity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 42
    iget-object v0, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Calculating directions"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 44
    return-void
.end method
