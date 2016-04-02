.class public interface abstract Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;
.super Ljava/lang/Object;
.source "IWidgetView.java"


# static fields
.field public static final VIEW_FLAG_BOTTOM:I = 0x4

.field public static final VIEW_FLAG_CENTER:I = 0x8

.field public static final VIEW_FLAG_NORMAL:I = 0x1

.field public static final VIEW_FLAG_TOP:I = 0x2

.field public static final WIDGET_DESC:Ljava/lang/String; = "desc"

.field public static final WIDGET_ICON:Ljava/lang/String; = "icon"

.field public static final WIDGET_MSG_COUNT:Ljava/lang/String; = "widget_msg_count"

.field public static final WIDGET_MSG_STYLE:Ljava/lang/String; = "widget_msg_style"

.field public static final WIDGET_MSG_TYPE_NUM:Ljava/lang/String; = "num"

.field public static final WIDGET_MSG_TYPE_POINT:Ljava/lang/String; = "point"

.field public static final WIDGET_NAME:Ljava/lang/String; = "name"

.field public static final WIDGET_TIPS:Ljava/lang/String; = "tips"


# virtual methods
.method public abstract bindWidgetMsgFlag()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWidgetId()Ljava/lang/String;
.end method

.method public abstract setDisplayInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setViewFlag(I)V
.end method

.method public abstract setWidgetId(Ljava/lang/String;)V
.end method
