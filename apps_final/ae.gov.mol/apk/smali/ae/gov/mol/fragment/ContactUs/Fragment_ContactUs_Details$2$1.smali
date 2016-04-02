.class Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2$1;
.super Ljava/lang/Object;
.source "Fragment_ContactUs_Details.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;

.field private final synthetic val$marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2$1;->this$1:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;

    iput-object p2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Click in Image Cancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2$1;->val$marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 243
    return-void
.end method
