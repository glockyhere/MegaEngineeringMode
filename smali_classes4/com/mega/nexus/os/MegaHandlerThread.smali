.class public Lcom/mega/nexus/os/MegaHandlerThread;
.super Ljava/lang/Object;
.source "MegaHandlerThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "handlerThread"    # Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
