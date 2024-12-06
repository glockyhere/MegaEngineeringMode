.class public final synthetic Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmega/car/input/CustomInputEvent;

.field public final synthetic f$1:Lmega/car/input/CarInputManager$CallbackHolder;


# direct methods
.method public synthetic constructor <init>(Lmega/car/input/CustomInputEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;->f$0:Lmega/car/input/CustomInputEvent;

    iput-object p2, p0, Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;->f$1:Lmega/car/input/CarInputManager$CallbackHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;->f$0:Lmega/car/input/CustomInputEvent;

    iget-object v1, p0, Lmega/car/input/-$$Lambda$CarInputManager$7DEgJE960wa04eytyZsE4wh8Huo;->f$1:Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-static {v0, v1}, Lmega/car/input/CarInputManager;->lambda$dispatchCustomInputEvent$1(Lmega/car/input/CustomInputEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    return-void
.end method
