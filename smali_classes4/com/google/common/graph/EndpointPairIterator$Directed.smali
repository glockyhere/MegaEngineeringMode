.class final Lcom/google/common/graph/EndpointPairIterator$Directed;
.super Lcom/google/common/graph/EndpointPairIterator;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/EndpointPairIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Directed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/EndpointPairIterator<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/BaseGraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator$Directed;, "Lcom/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    .local p1, "graph":Lcom/google/common/graph/BaseGraph;, "Lcom/google/common/graph/BaseGraph<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/EndpointPairIterator;-><init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/EndpointPairIterator$1;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/EndpointPairIterator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/graph/BaseGraph;
    .param p2, "x1"    # Lcom/google/common/graph/EndpointPairIterator$1;

    .line 72
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator$Directed;, "Lcom/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/EndpointPairIterator$Directed;-><init>(Lcom/google/common/graph/BaseGraph;)V

    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator$Directed;, "Lcom/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator$Directed;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator$Directed;->node:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/graph/EndpointPairIterator$Directed;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPairIterator$Directed;->advance()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPairIterator$Directed;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/EndpointPair;

    return-object v0

    .line 85
    :cond_1
    goto :goto_0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 72
    .local p0, "this":Lcom/google/common/graph/EndpointPairIterator$Directed;, "Lcom/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPairIterator$Directed;->computeNext()Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
