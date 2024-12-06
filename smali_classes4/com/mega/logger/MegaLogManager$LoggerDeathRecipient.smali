.class Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;
.super Ljava/lang/Object;
.source "MegaLogManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/logger/MegaLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggerDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/logger/MegaLogManager;


# direct methods
.method private constructor <init>(Lcom/mega/logger/MegaLogManager;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/logger/MegaLogManager;Lcom/mega/logger/MegaLogManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/logger/MegaLogManager;
    .param p2, "x1"    # Lcom/mega/logger/MegaLogManager$1;

    .line 283
    invoke-direct {p0, p1}, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;-><init>(Lcom/mega/logger/MegaLogManager;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 286
    invoke-static {}, Lcom/mega/logger/MegaLogManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logger service died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v0}, Lcom/mega/logger/MegaLogManager;->access$500(Lcom/mega/logger/MegaLogManager;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;->this$0:Lcom/mega/logger/MegaLogManager;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/mega/logger/MegaLogManager;->access$600(Lcom/mega/logger/MegaLogManager;J)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/logger/MegaLogManager;->access$502(Lcom/mega/logger/MegaLogManager;Lvendor/mega/loggerhal/V1_0/ILoggerBridge;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    .line 293
    iget-object v0, p0, Lcom/mega/logger/MegaLogManager$LoggerDeathRecipient;->this$0:Lcom/mega/logger/MegaLogManager;

    invoke-static {v0}, Lcom/mega/logger/MegaLogManager;->access$700(Lcom/mega/logger/MegaLogManager;)V

    .line 294
    return-void
.end method
