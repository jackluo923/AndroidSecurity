.class final Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method private constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public final onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    # getter for: Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->access$4(Lcom/alipay/android/launcher/TabLauncher;)Landroid/widget/TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    # getter for: Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->access$5(Lcom/alipay/android/launcher/TabLauncher;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->onTabChanged(Ljava/lang/String;)V

    .line 590
    :cond_0
    return-void
.end method

.method public final onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 594
    return-void
.end method
