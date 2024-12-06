.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/SortedSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/util/SortedSet;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 622
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TV;>;"
    .local p4, "ancestor":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 623
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 624
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 633
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 640
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getSortedSetDelegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 627
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 653
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 654
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 653
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 647
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    .local p2, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 662
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 663
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 664
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 665
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 662
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 671
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 672
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 673
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 674
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 671
    return-object v0
.end method
