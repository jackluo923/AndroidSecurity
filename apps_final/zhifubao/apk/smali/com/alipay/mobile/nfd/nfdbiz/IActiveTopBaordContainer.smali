.class public interface abstract Lcom/alipay/mobile/nfd/nfdbiz/IActiveTopBaordContainer;
.super Ljava/lang/Object;
.source "IActiveTopBaordContainer.java"


# static fields
.field public static final STATE_BOARD_SHOW:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_TIPS_SHOW:I = 0x1


# virtual methods
.method public abstract changeState(I)V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract setOnBoardCLickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnStateChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/ITopBoardStateCallBack;)V
.end method

.method public abstract setOnVisibleChangeListener(Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;)V
.end method

.method public abstract updateTopInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
