.class Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "ActionBarImplICS.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabWrapper"
.end annotation


# instance fields
.field private mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

.field private mTag:Ljava/lang/Object;

.field final mWrappedTab:Landroid/app/ActionBar$Tab;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplICS;Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    .line 352
    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    .line 353
    return-void
.end method

.method private commitActiveTransaction()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 483
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 484
    return-void
.end method

.method private getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarImplICS;->mCallback:Landroid/support/v7/app/ActionBar$Callback;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBar$Callback;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mActiveTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 467
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    :goto_0
    invoke-interface {v1, p0, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 468
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->commitActiveTransaction()V

    .line 469
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 454
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    :goto_0
    invoke-interface {v1, p0, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 455
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->commitActiveTransaction()V

    .line 456
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 461
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->getActiveTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    :goto_0
    invoke-interface {v1, p0, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 462
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 432
    return-void
.end method

.method public setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->this$0:Landroid/support/v7/app/ActionBarImplICS;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarImplICS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mContentDescription:Ljava/lang/CharSequence;

    .line 437
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 442
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mContentDescription:Ljava/lang/CharSequence;

    .line 443
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(I)Landroid/app/ActionBar$Tab;

    .line 403
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 397
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 379
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    .line 373
    return-object p0
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "listener"    # Landroid/support/v7/app/ActionBar$TabListener;

    .prologue
    .line 424
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTabListener:Landroid/support/v7/app/ActionBar$TabListener;

    .line 425
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 426
    return-object p0

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 413
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mTag:Ljava/lang/Object;

    .line 414
    return-object p0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 391
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 385
    return-object p0
.end method
