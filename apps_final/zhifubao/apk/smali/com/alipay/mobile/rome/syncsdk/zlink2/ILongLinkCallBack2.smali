.class public interface abstract Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;
.super Ljava/lang/Object;
.source "ILongLinkCallBack2.java"


# virtual methods
.method public abstract getInitMsg()Ljava/lang/String;
.end method

.method public abstract onLinkOk()V
.end method

.method public abstract onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
.end method

.method public abstract processPacket(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract processPacketSync([B)V
.end method

.method public abstract processPacketSyncDirect([B)V
.end method
