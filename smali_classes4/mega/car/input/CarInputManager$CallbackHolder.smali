.class final Lmega/car/input/CarInputManager$CallbackHolder;
.super Ljava/lang/Object;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackHolder"
.end annotation


# instance fields
.field final mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 448
    iput-object p2, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    .line 449
    return-void
.end method
