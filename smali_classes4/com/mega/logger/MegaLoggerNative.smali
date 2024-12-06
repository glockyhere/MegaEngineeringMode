.class public Lcom/mega/logger/MegaLoggerNative;
.super Ljava/lang/Object;
.source "MegaLoggerNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "MegaLogger"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native clearLog(I)Z
.end method

.method public native getLogSize(I)I
.end method

.method public native isUsbConnected()Z
.end method

.method public native notifyDisconnected(Ljava/lang/String;)V
.end method

.method public native queryCopySize()I
.end method

.method public native saveLogToPath(Ljava/lang/String;I)Z
.end method

.method public native saveToUsb()Z
.end method

.method public native setLogLevel(II)Z
.end method

.method public native usbConnected(Ljava/lang/String;)V
.end method

.method public native usbDisconnected(Ljava/lang/String;)Z
.end method
