.class Lcom/google/common/util/concurrent/AggregateFuture$2;
.super Ljava/lang/Object;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AggregateFuture;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AggregateFuture;

.field final synthetic val$localFutures:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/AggregateFuture;

    .line 185
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$2;, "Lcom/google/common/util/concurrent/AggregateFuture$2;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture$2;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AggregateFuture$2;->val$localFutures:Lcom/google/common/collect/ImmutableCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture$2;, "Lcom/google/common/util/concurrent/AggregateFuture$2;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$2;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture$2;->val$localFutures:Lcom/google/common/collect/ImmutableCollection;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->access$200(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V

    .line 189
    return-void
.end method
