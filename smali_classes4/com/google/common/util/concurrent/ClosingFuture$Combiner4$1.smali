.class Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;->call(Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

.field final synthetic val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    .line 1845
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;, "Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Lcom/google/common/util/concurrent/ClosingFuture$Peeker;)Ljava/lang/Object;
    .locals 6
    .param p1, "closer"    # Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
    .param p2, "peeker"    # Lcom/google/common/util/concurrent/ClosingFuture$Peeker;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;",
            "Lcom/google/common/util/concurrent/ClosingFuture$Peeker;",
            ")TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1849
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;, "Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    .line 1851
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;->access$2300(Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    .line 1852
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;->access$2400(Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    .line 1853
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;->access$2500(Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;

    .line 1854
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;->access$2600(Lcom/google/common/util/concurrent/ClosingFuture$Combiner4;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v5

    .line 1849
    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1859
    .local p0, "this":Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;, "Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner4$ClosingFunction4;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
