.class final Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonCancellationPropagatingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 762
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    .local p1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 763
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 764
    return-void
.end method


# virtual methods
.method protected afterDone()V
    .locals 1

    .line 788
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 789
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 779
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 780
    .local v0, "localDelegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-eqz v0, :cond_0

    .line 781
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "delegate=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 783
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public run()V
    .locals 1

    .line 770
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 771
    .local v0, "localDelegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 774
    :cond_0
    return-void
.end method
