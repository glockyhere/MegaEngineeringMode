.class public final synthetic Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lmega/car/MegaCar$CarServiceLifecycleListener;


# instance fields
.field public final synthetic f$0:Lmega/car/MegaCarPropHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lmega/car/MegaCarPropHelper;ZLandroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$0:Lmega/car/MegaCarPropHelper;

    iput-boolean p2, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$1:Z

    iput-object p3, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$3:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Lmega/car/MegaCar;Z)V
    .locals 6

    iget-object v0, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$0:Lmega/car/MegaCarPropHelper;

    iget-boolean v1, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$1:Z

    iget-object v2, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;->f$3:Landroid/os/Handler;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lmega/car/MegaCarPropHelper;->lambda$new$0$MegaCarPropHelper(ZLandroid/content/Context;Landroid/os/Handler;Lmega/car/MegaCar;Z)V

    return-void
.end method