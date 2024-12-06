.class Lmega/car/MegaCar$1;
.super Ljava/lang/Object;
.source "MegaCar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/MegaCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/MegaCar;


# direct methods
.method constructor <init>(Lmega/car/MegaCar;)V
    .locals 0
    .param p1, "this$0"    # Lmega/car/MegaCar;

    .line 138
    iput-object p1, p0, Lmega/car/MegaCar$1;->this$0:Lmega/car/MegaCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lmega/car/MegaCar$1;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$000(Lmega/car/MegaCar;)V

    .line 142
    return-void
.end method
