.class abstract Lcom/google/common/util/concurrent/CollectionFuture;
.super Lcom/google/common/util/concurrent/AggregateFuture;
.source "CollectionFuture.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CollectionFuture$Present;,
        Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFuture<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CollectionFuture$Present<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 3
    .param p2, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/AggregateFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 47
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    nop

    .line 52
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/CollectionFuture$Present<TV;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 53
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method final collectOneValue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>;"
    .local p2, "returnValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    .line 62
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/CollectionFuture$Present<TV;>;>;"
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lcom/google/common/util/concurrent/CollectionFuture$Present;

    invoke-direct {v1, p2}, Lcom/google/common/util/concurrent/CollectionFuture$Present;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-void
.end method

.method abstract combine(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CollectionFuture$Present<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final handleAllCompleted()V
    .locals 2

    .line 69
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    .line 70
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/CollectionFuture$Present<TV;>;>;"
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/CollectionFuture;->set(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .locals 1
    .param p1, "reason"    # Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 77
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture;->values:Ljava/util/List;

    .line 79
    return-void
.end method
